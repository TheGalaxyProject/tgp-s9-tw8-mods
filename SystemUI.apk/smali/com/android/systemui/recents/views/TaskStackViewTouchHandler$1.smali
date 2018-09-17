.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;
.super Lcom/android/systemui/SwipeHelper;
.source "TaskStackViewTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getMaxEscapeAnimDuration()J
    .registers 3

    const-wide/16 v0, 0x2bc

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->getScaledDismissSize()F

    move-result v0

    return v0
.end method

.method protected getUnscaledEscapeVelocity()F
    .registers 2

    const/high16 v0, 0x44480000    # 800.0f

    return v0
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->-get0(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 4

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->-get0(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
