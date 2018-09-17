.class public Lcom/android/systemui/recents/views/TaskView;
.super Lcom/android/systemui/recents/views/FixedSizeFrameLayout;
.source "TaskView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackAnimationHelper$Callbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/samsung/systemui/splugins/recents/views/PluginTaskView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$1;,
        Lcom/android/systemui/recents/views/TaskView$2;,
        Lcom/android/systemui/recents/views/TaskView$3;,
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# static fields
.field public static final DIM_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_OUTLINE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mActionButtonIcon:Landroid/widget/ImageView;

.field private mActionButtonTranslationZ:F

.field private mActionButtonView:Landroid/view/View;

.field private mAngulatedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

.field private mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field private mClipViewInStack:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAnimator:Landroid/animation/ObjectAnimator;

.field private mDisabledAppToast:Landroid/widget/Toast;

.field private mDownTouchPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFabOffsetX:I

.field private mFabOffsetY:I

.field public mFrontMostTaskView:Z

.field protected mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "header_"
    .end annotation
.end field

.field private mIncompatibleAppToastView:Landroid/view/View;

.field private mIsDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mIsScreenRatioModeUpdated:Z

.field private mLastFocusButtonView:Landroid/view/View;

.field private mOutlineAnimator:Landroid/animation/ObjectAnimator;

.field private mRatioButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mRatioButtonIcon:Landroid/widget/ImageView;

.field private mRatioButtonProgress:Landroid/widget/ProgressBar;

.field private mRatioButtonView:Landroid/view/View;

.field private mRoundedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

.field public mScreenRatioMode:I

.field private final mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "task_"
    .end annotation
.end field

.field private mTaskBound:Z

.field protected mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "thumbnail_"
    .end annotation
.end field

.field private mTmpAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTransformAnimation:Landroid/animation/AnimatorSet;

.field private mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "view_bounds_"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/model/Task;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    const-string/jumbo v1, "dimAlphaWithoutHeader"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/recents/views/TaskView$2;

    const-string/jumbo v1, "dimAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/recents/views/TaskView$3;

    const-string/jumbo v1, "viewOutlineAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mIsScreenRatioModeUpdated:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v3

    if-eqz v3, :cond_6a

    const v3, 0x7f070345

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_38
    new-instance v3, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRoundedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    new-instance v3, Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/views/AnimateableViewBounds;-><init>(Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mAngulatedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRoundedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v3, :cond_56

    new-instance v3, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-direct {v3, v2, v0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_56
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setHapticFeedbackEnabled(Z)V

    return-void

    :cond_6a
    const v3, 0x7f070553

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_38
.end method

.method private cancelDimAnimationIfExists()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_9
    return-void
.end method

.method private clearFocusEffect(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void
.end method

.method private getButtonList(Z)Ljava/util/ArrayList;
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

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeaderButtonList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    return-object v0
.end method


# virtual methods
.method public cancelTransformAnimation()V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelDimAnimationIfExists()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    return-void
.end method

.method dismissTask()V
    .registers 4

    move-object v1, p0

    new-instance v0, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    new-instance v2, Lcom/android/systemui/recents/views/TaskView$6;

    invoke-direct {v2, p0, p0}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;I)V
    .registers 8

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v1, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mAngulatedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput p2, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->getButtonList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->clearFocusEffect(Landroid/view/View;)V

    goto :goto_15

    :cond_25
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->clearFocusEffect(Landroid/view/View;)V

    invoke-direct {p0, p0}, Lcom/android/systemui/recents/views/TaskView;->clearFocusEffect(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskView;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRoundedViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput v1, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "TaskView"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " mTask="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " mFrontMostTaskView="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAndUpdateScreenRatioState()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsScreenRatioModeUpdated:Z

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getScreenRatioState(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mScreenRatioMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsScreenRatioModeUpdated:Z

    :cond_13
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mScreenRatioMode:I

    return v0
.end method

.method public getDimAlpha()F
    .registers 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    return v0
.end method

.method public getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    return-object v0
.end method

.method public bridge synthetic getHeaderView()Lcom/samsung/systemui/splugins/recents/views/PluginTaskViewHeader;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    return-object v0
.end method

.method public getScreenRatioButtonView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    return-object v0
.end method

.method public getTask()Lcom/android/systemui/recents/model/Task;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public bridge synthetic getTask()Lcom/samsung/systemui/splugins/recents/model/PluginTask;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    return-object v0
.end method

.method getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    return v1
.end method

.method public hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_47

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_47

    if-eqz p3, :cond_25

    const v0, 0x3f666666    # 0.9f

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_25
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/views/TaskView$7;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/recents/views/TaskView$7;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_46
    return-void

    :cond_47
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_57

    invoke-interface {p4, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_57
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    goto :goto_46
.end method

.method public hideScreenRatioButton(ZIZLandroid/animation/Animator$AnimatorListener;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_50

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_50

    if-eqz p3, :cond_25

    const v0, 0x3f666666    # 0.9f

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_25
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/views/TaskView$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskView$8;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/views/TaskView$9;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/recents/views/TaskView$9;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4f
    return-void

    :cond_50
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_60

    invoke-interface {p4, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_60
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    goto :goto_4f
.end method

.method isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->isSame(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_29960()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_37513()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_53015(Landroid/animation/ObjectAnimator;Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

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

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_59329()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_views_TaskView_59742()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    return-void
.end method

.method protected measureContents(II)V
    .registers 10

    const/high16 v6, 0x40000000    # 2.0f

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int v3, v4, v5

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int v1, v4, v5

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->measureChildren(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .registers 3

    new-instance v0, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eqz v0, :cond_12

    :cond_a
    :goto_a
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void

    :cond_12
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-nez v0, :cond_a

    new-instance v0, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    if-eqz v3, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f120942

    invoke-virtual {v13, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_2a
    const/4 v3, 0x0

    invoke-static {v13, v14, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3b
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_10a

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v3

    if-eqz v3, :cond_d1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_be

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    :goto_5c
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isAppLockedPackageNotCheckUnlock(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_d1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isManagedProfileUserId(Landroid/content/Context;I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_d1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_cf

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v3

    :goto_9e
    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_d1

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12012d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v3, v13, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    invoke-static {v3, v12, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    goto :goto_5c

    :cond_cf
    const/4 v3, 0x0

    goto :goto_9e

    :cond_d1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationZ(F)V

    const/4 v8, 0x1

    :cond_da
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v3, v3, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v3, :cond_174

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v5}, Lcom/android/systemui/recents/events/activity/LaunchPairedTaskEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_f2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x115

    invoke-static {v3, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_10a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_da

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonIcon:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    const-string/jumbo v4, "progress"

    const/4 v5, 0x0

    const/16 v6, 0x64

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v4, 0x320

    invoke-virtual {v11, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZZZ)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    new-instance v6, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11, v2}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/android/systemui/recents/events/activity/RequestScreenRatioEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_174
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v9, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_f2
.end method

.method protected onConfigurationChanged(ILandroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onConfigurationChanged(ILandroid/graphics/Rect;)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    if-nez v0, :cond_18

    :cond_12
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_18
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded()V

    :cond_1d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 12

    const v10, 0x7f120935

    const v9, 0x7f0a022e

    const/4 v8, 0x0

    const/4 v7, 0x1

    const v4, 0x7f0a0501

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    const v4, 0x7f0a0502

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateClipToTaskBar(Landroid/view/View;)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v4

    if-nez v4, :cond_2c

    return-void

    :cond_2c
    const v4, 0x7f0a0303

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/recents/views/TaskView$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v5, 0x7f120945

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v4, :cond_8d

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const v5, 0x7f0a0304

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonIcon:Landroid/widget/ImageView;

    :cond_8d
    const v4, 0x7f0a044d

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/recents/views/TaskView$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/views/TaskView$5;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v5, 0x7f12092a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_d2

    invoke-virtual {v3, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_d2
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v4, :cond_e4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonBackground:Landroid/graphics/drawable/Drawable;

    :cond_e4
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    const v5, 0x7f0a0451

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    const v5, 0x7f0a044f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_1f
    invoke-super {p0, p1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 13

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v7, v7, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    const/4 v7, 0x0

    return v7

    :cond_d
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4c

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4a

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v8, 0x7f120aa5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v10, 0x7f1207c1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_4a
    const/4 v7, 0x0

    return v7

    :cond_4c
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget-object v7, v7, Lcom/android/systemui/recents/views/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->scale(F)V

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    :goto_73
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v7, :cond_c8

    :cond_77
    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    if-ne p1, v7, :cond_122

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v8, 0x7f12092a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_85
    :goto_85
    if-eqz v5, :cond_ae

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_131

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    const/16 v9, 0x33

    invoke-virtual {v6, v9, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    :goto_ab
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_ae
    const/4 v7, 0x0

    return v7

    :cond_b0
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_c6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_c6

    const/4 v1, 0x1

    goto :goto_73

    :cond_c6
    const/4 v1, 0x0

    goto :goto_73

    :cond_c8
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    if-eq p1, v7, :cond_77

    if-ne p1, p0, :cond_ae

    if-eqz v1, :cond_ae

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, p0, v8}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-direct {v8, v9, p0, v10}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v7, 0x1

    return v7

    :cond_122
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v7, :cond_85

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    const v8, 0x7f120945

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_85

    :cond_131
    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    const/16 v9, 0x33

    invoke-virtual {v6, v9, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    goto/16 :goto_ab
.end method

.method public onPrepareLaunchTargetForEnterAnimation()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setDimAlphaWithoutHeader(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_27
    return-void
.end method

.method onReload(Z)V
    .registers 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetNoUserInteractionState()V

    :cond_d
    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    :cond_12
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onSizeChanged(IIII)V

    if-lez p1, :cond_24

    if-lez p2, :cond_24

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFabOffsetX:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFabOffsetY:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    :cond_24
    return-void
.end method

.method public onStartFrontTaskEnterAnimation(Z)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(Z)V

    :cond_13
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recents/views/TaskView;->showScreenRatioButton(ZI)V

    if-eqz p1, :cond_1b

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    :cond_1b
    return-void
.end method

.method public onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .registers 11

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelDimAnimationIfExists()V

    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v3

    aput v3, v2, v5

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-nez v1, :cond_45

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_45
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1, p3}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(Z)V

    :cond_4a
    invoke-virtual {p0, v4, p2}, Lcom/android/systemui/recents/views/TaskView;->showScreenRatioButton(ZI)V

    if-eqz p3, :cond_52

    invoke-virtual {p0, v4, p2}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    :cond_52
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_78
    return-void
.end method

.method public onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .registers 10

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {p0, v5, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {p0, v5, p1, p2, v1}, Lcom/android/systemui/recents/views/TaskView;->hideScreenRatioButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onTaskBound(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .registers 11

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v1, :cond_42

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v1

    :goto_1b
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v1, v3, v4, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonsColor()V

    :cond_3f
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mIsScreenRatioModeUpdated:Z

    return-void

    :cond_42
    move v1, v2

    goto :goto_1b
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    :cond_e
    return-void
.end method

.method public onTaskDataUnloaded()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    return-void
.end method

.method public onTaskStackIdChanged()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    return-void
.end method

.method resetNoUserInteractionState()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->resetNoUserInteractionState()V

    return-void
.end method

.method resetViewProperties()V
    .registers 6

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_16
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskView;->setAlpha(F)V

    :cond_19
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->reset()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->reset()V

    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Lcom/android/systemui/recents/views/TaskView;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_51
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5b
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mIsScreenRatioModeUpdated:Z

    :cond_81
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    return-void
.end method

.method setClipViewInStack(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_f

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    :cond_f
    return-void
.end method

.method public setDimAlpha(F)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    return-void
.end method

.method public setDimAlphaWithoutHeader(F)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    return-void
.end method

.method public setFocusedState(ZZ)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    if-eqz p2, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    goto :goto_10
.end method

.method setNoUserInteractionLockState()V
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f12095c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_27
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionLockState()V

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f12095d

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_42
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method

.method setNoUserInteractionState()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    return-void
.end method

.method public setTouchEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_7

    move-object v0, p0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method shouldClipViewInStack()Z
    .registers 3

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    return v1

    :cond_14
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    return v0
.end method

.method public showActionButton(ZI)V
    .registers 7

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4a

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4a

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_49
    return-void

    :cond_4a
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    goto :goto_49
.end method

.method public showScreenRatioButton(ZI)V
    .registers 8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v0, v4, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-eq v0, v3, :cond_1a

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    if-eq v0, v3, :cond_1a

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getAndUpdateScreenRatioState()I

    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mScreenRatioMode:I

    if-ne v0, v4, :cond_37

    return-void

    :cond_37
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mScreenRatioMode:I

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonIcon:Landroid/widget/ImageView;

    const v1, 0x7f0807ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_53
    if-eqz p1, :cond_92

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_92

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/-$Lambda$zN5QXyPfvXVsTNl430beG2V9QjM$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_88
    return-void

    :cond_89
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonIcon:Landroid/widget/ImageView;

    const v1, 0x7f0807ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_53

    :cond_92
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->updateFloatingActionButtonPosition()V

    goto :goto_88
.end method

.method public startNoUserInteractionAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    return-void
.end method

.method public updateButtonsFocus(Z)V
    .registers 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/views/TaskView;->getButtonList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_28

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    if-nez v2, :cond_2c

    const/4 v1, 0x0

    :cond_11
    :goto_11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_2c
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mLastFocusButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_47

    const/4 v2, -0x1

    :goto_35
    add-int v1, v4, v2

    if-gez v1, :cond_3a

    const/4 v1, 0x0

    :cond_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_11

    :cond_47
    move v2, v3

    goto :goto_35
.end method

.method public updateFloatingActionButtonPosition()V
    .registers 6

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mFabOffsetY:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFabOffsetX:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07053a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    sub-int v1, v3, v0

    :cond_33
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4d

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/recents/views/TaskView;->mFabOffsetX:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonView:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_4d
    return-void
.end method

.method public updateFloatingActionButtonsColor()V
    .registers 8

    const v6, 0x7f06018d

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v3, :cond_5e

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_5e

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget v0, v3, Lcom/android/systemui/recents/RecentsConfiguration;->colorPrimary:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonBackground:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1f
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonBackground:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    if-eqz v3, :cond_6b

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isOpenThemeApplied()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->useLightOnPrimaryColor:Z

    if-eqz v3, :cond_5f

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    :goto_48
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_55
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mRatioButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_5e
    return-void

    :cond_5f
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060192

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_48

    :cond_6b
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v3, :cond_7a

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget v1, v3, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    goto :goto_48

    :cond_7a
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_48
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 13

    const/4 v8, 0x2

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, p0, v2, p2, v3}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->isImmediate()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_31

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    :cond_31
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setAlpha(F)V

    :cond_46
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_53
    if-eqz p3, :cond_58

    invoke-interface {p3, v4}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_58
    :goto_58
    return-void

    :cond_59
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_84

    sget-object v2, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v4

    aput v4, v3, v5

    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v3}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v2

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_b3

    sget-object v2, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->getAlpha()F

    move-result v4

    aput v4, v3, v5

    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    aput v4, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v3}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b3
    if-eqz p3, :cond_c9

    filled-new-array {v5, v6}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v7, v1}, Lcom/android/systemui/recents/views/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Lcom/android/systemui/recents/views/AnimationProps;->createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    goto/16 :goto_58
.end method
