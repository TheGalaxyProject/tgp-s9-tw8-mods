.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;
.super Landroid/widget/FrameLayout;
.source "DeskPanelViewNotificationPreview.java"

# interfaces
.implements Lcom/android/systemui/statusbar/stack/ScrollContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$1;
    }
.end annotation


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mCollapseAnimSet:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

.field private mExpandAnimSet:Landroid/animation/AnimatorSet;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIncreasedPaddingBetweenElements:I

.field private mMaxLayoutHeight:I

.field private mPaddingBetweenElements:I

.field private mRequestLayoutRunnable:Ljava/lang/Runnable;

.field private mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

.field private mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTopPadding:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setIconAnimationRunning(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCurrentStackHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mTopPadding:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    return-void
.end method

.method private findViewByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .registers 6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_24

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_21

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    return-object v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_24
    const/4 v3, 0x0

    return-object v3
.end method

.method private getLayoutHeight()I
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private requestChildrenUpdate()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->updateChildren()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->invalidate()V

    return-void
.end method

.method private setActualHeight(I)V
    .registers 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2c

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_29

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    if-eqz v1, :cond_29

    iget v3, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    if-ne p1, v3, :cond_29

    invoke-virtual {v0, p1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2c
    return-void
.end method

.method private setIconAnimationRunning(Z)V
    .registers 5

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method private setMaxLayoutHeight(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mMaxLayoutHeight:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mMaxLayoutHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->updateAlgorithmHeightAndPadding()V

    :cond_9
    return-void
.end method

.method private setUpdateView(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStackTranslation(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->requestChildrenUpdate()V

    return-void
.end method

.method private updateAlgorithmHeightAndPadding()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setTopPadding(I)V

    return-void
.end method

.method private updateChildren()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setActualHeight(I)V

    return-void
.end method


# virtual methods
.method public applyNotification()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setMaxLayoutHeight(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setUpdateView(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->updateChildrenHeight()I

    move-result v0

    return v0
.end method

.method public collapse(Z)V
    .registers 14

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseFrom()F

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseTo()F

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getNextState()I

    move-result v3

    if-eqz p1, :cond_6f

    const-string/jumbo v6, "y"

    new-array v7, v9, [F

    aput v2, v7, v8

    aput v4, v7, v10

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_88

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v5, v7, v8

    aput-object v0, v7, v10

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;

    invoke-direct {v7, p0, v4, v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;FII)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setY(F)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setAlpha(F)V

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const-string/jumbo v7, "DeskPanelViewNotificationPreview"

    invoke-virtual {v6, v7, v1, v3, v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    goto :goto_6e

    :array_88
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public expand(Z)V
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expandFrom()F

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expandTo()F

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getCurrentState()I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getNextState()I

    move-result v4

    if-eqz p1, :cond_6f

    const-string/jumbo v0, "y"

    new-array v1, v9, [F

    aput v7, v1, v5

    aput v2, v1, v10

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string/jumbo v0, "alpha"

    new-array v1, v9, [F

    fill-array-data v1, :array_88

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    aput-object v6, v1, v5

    aput-object v8, v1, v10

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$2;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;FIIZ)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const-string/jumbo v1, "DeskPanelViewNotificationPreview"

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    goto :goto_6e

    :array_88
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCurrentStackScrollState()Lcom/android/systemui/statusbar/stack/StackScrollState;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    return-object v0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V
    .registers 8

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    new-instance v0, Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setShadeExpanded(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDeskMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->loadDimens()V

    return-void
.end method

.method public isThisNotificationPreview(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->findViewByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public loadDimens()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mPaddingBetweenElements:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mIncreasedPaddingBetweenElements:I

    return-void
.end method

.method public lockScrollTo(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->applyNotification()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_19

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->updateChildrenHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestDisallowDismiss()V
    .registers 1

    return-void
.end method

.method public requestDisallowLongPress()V
    .registers 1

    return-void
.end method

.method public updateChildrenHeight()I
    .registers 15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildCount()I

    move-result v11

    if-ge v3, v11, :cond_7e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_75

    move-object v0, v10

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_78

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v11

    xor-int/lit8 v6, v11, 0x1

    :goto_27
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v11

    if-nez v11, :cond_7a

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->isShadeLockedState()Z

    move-result v11

    xor-int/lit8 v5, v11, 0x1

    :goto_37
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    if-nez v6, :cond_49

    if-nez v5, :cond_7c

    xor-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_7c

    :cond_49
    const/16 v11, 0x8

    :goto_4b
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v11

    if-nez v11, :cond_75

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIncreasedPaddingAmount()F

    move-result v4

    iget v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mPaddingBetweenElements:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mIncreasedPaddingBetweenElements:I

    int-to-float v12, v12

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v11, v12, v13}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v7, v11

    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-lez v11, :cond_6e

    add-float/2addr v2, v7

    :cond_6e
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v2, v11

    move v8, v4

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_78
    const/4 v6, 0x0

    goto :goto_27

    :cond_7a
    const/4 v5, 0x0

    goto :goto_37

    :cond_7c
    const/4 v11, 0x0

    goto :goto_4b

    :cond_7e
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-lez v11, :cond_86

    const/high16 v11, 0x40c00000    # 6.0f

    add-float/2addr v2, v11

    :cond_86
    float-to-int v1, v2

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutMaxHeight(I)V

    return v1
.end method
