.class public Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;
.super Landroid/widget/ImageView;
.source "TaskBarButtonView.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mContentDescriptionRes:I

.field private mDownTime:J

.field private mGestureAborted:Z

.field private mLayoutDirection:I

.field private mLongClicked:Z

.field private mRightButtonClicked:Z

.field private mSupportsLongpress:Z

.field private mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field private mTouchSlop:I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mLongClicked:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mSupportsLongpress:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    sget-object v2, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mSupportsLongpress:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mContentDescriptionRes:I

    :cond_30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setClickable(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mTouchSlop:I

    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setPressed(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mGestureAborted:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_7

    :cond_14
    instance-of v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v1, :cond_1d

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    :goto_1c
    return-void

    :cond_1d
    const-string/jumbo v1, "[DS]TaskBarButtonView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAttachedToWindow(). Cannot find parent view, getParent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->invalidate()V

    :cond_14
    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mContentDescriptionRes:I

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mContentDescriptionRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_23
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    if-eqz v0, :cond_20

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mSupportsLongpress:Z

    if-eqz v0, :cond_20

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_20
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/16 v10, 0x20

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_37

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->isContextClickable()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    if-eq v6, v9, :cond_34

    :cond_1c
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->getId()I

    move-result v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mSupportsLongpress:Z

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    :cond_2d
    :goto_2d
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mGestureAborted:Z

    :goto_2f
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mGestureAborted:Z

    if-eqz v6, :cond_3d

    return v4

    :cond_34
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mRightButtonClicked:Z

    goto :goto_2d

    :cond_37
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setAlpha(F)V

    goto :goto_2f

    :cond_3d
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->DEBUG:Z

    if-eqz v6, :cond_5d

    if-eq v0, v9, :cond_5d

    const-string/jumbo v6, "[DS]TaskBarButtonView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Motion event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    packed-switch v0, :pswitch_data_13c

    :goto_60
    return v5

    :pswitch_61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mDownTime:J

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mLongClicked:Z

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setPressed(Z)V

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    if-eqz v6, :cond_85

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(IIJ)V

    :goto_75
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_60

    :cond_85
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->performHapticFeedback(I)Z

    goto :goto_75

    :pswitch_89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_b0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_b0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_b0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_b0

    move v4, v5

    :cond_b0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setPressed(Z)V

    goto :goto_60

    :pswitch_b4
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setPressed(Z)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mRightButtonClicked:Z

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    if-eqz v4, :cond_c0

    invoke-virtual {p0, v5, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(II)V

    :cond_c0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_60

    :pswitch_c6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_12b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mLongClicked:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_12b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mRightButtonClicked:Z

    xor-int/lit8 v1, v6, 0x1

    :goto_d6
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->DEBUG:Z

    if-eqz v6, :cond_110

    const-string/jumbo v6, "[DS]TaskBarButtonView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MotionEvent.ACTION_UP mCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", doIt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isPressed()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->isPressed()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->setPressed(Z)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mRightButtonClicked:Z

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    if-eqz v6, :cond_135

    if-eqz v1, :cond_12d

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(II)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->playSoundEffect(I)V

    :cond_124
    :goto_124
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_60

    :cond_12b
    const/4 v1, 0x0

    goto :goto_d6

    :cond_12d
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mLongClicked:Z

    if-eqz v4, :cond_124

    invoke-virtual {p0, v5, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(II)V

    goto :goto_124

    :cond_135
    if-eqz v1, :cond_124

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->performClick()Z

    goto :goto_124

    nop

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_61
        :pswitch_c6
        :pswitch_89
        :pswitch_b4
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->jumpDrawablesToCurrentState()V

    :cond_8
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1b

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    if-eqz v0, :cond_1b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(IIJ)V

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(II)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->playSoundEffect(I)V

    return v3

    :cond_1b
    const/16 v0, 0x20

    if-ne p1, v0, :cond_30

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    if-eqz v0, :cond_30

    const/16 v0, 0x80

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(II)V

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendAccessibilityEvent(I)V

    return v3

    :cond_30
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public playSoundEffect(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    return-void
.end method

.method public sendEvent(II)V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method sendEvent(IIJ)V
    .registers 22

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->DEBUG:Z

    if-eqz v2, :cond_4c

    const-string/jumbo v2, "[DS]TaskBarButtonView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendEvent() mCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_7f

    const/4 v10, 0x1

    :goto_53
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mDownTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    or-int/lit8 v2, p2, 0x8

    or-int/lit8 v14, v2, 0x40

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide/from16 v6, p3

    move/from16 v8, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    if-lez p1, :cond_7e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->mCode:I

    sparse-switch v2, :sswitch_data_96

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    const/4 v10, 0x0

    goto :goto_53

    :sswitch_81
    const-string/jumbo v2, "103"

    const-string/jumbo v4, "1501"

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :sswitch_8b
    const-string/jumbo v2, "103"

    const-string/jumbo v4, "1502"

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    nop

    :sswitch_data_96
    .sparse-switch
        0x3 -> :sswitch_8b
        0xbb -> :sswitch_81
    .end sparse-switch
.end method

.method public setCarMode(Z)V
    .registers 2

    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 2

    return-void
.end method

.method public setVertical(Z)V
    .registers 2

    return-void
.end method
