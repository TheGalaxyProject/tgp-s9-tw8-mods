.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetectingStateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler$1;
    }
.end annotation


# static fields
.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x1


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private final mMultiTapDistanceSlop:I

.field private final mTapDistanceSlop:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->sendDelayedMotionEvents()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler$1;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mTapDistanceSlop:I

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mMultiTapDistanceSlop:I

    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    if-nez v1, :cond_f

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    :goto_e
    return-void

    :cond_f
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->-set0(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    goto :goto_e
.end method

.method private clearDelayedMotionEvents()V
    .registers 4

    const/4 v2, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->-get0(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->recycle()V

    goto :goto_1

    :cond_11
    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    return-void
.end method

.method private clearLastDownEvent()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    :cond_c
    return-void
.end method

.method private clearTapDetectionState()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->clearLastDownEvent()V

    return-void
.end method

.method private sendDelayedMotionEvents()V
    .registers 7

    const/4 v5, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->-get0(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    iget v4, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mPolicyFlags:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->recycle()V

    goto :goto_1

    :cond_1c
    iput-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    return-void
.end method

.method private transitionToDelegatingStateAndClear()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap4(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->sendDelayedMotionEvents()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->clearTapDetectionState()V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->clearDelayedMotionEvents()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 12

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_7a

    :cond_b
    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->clearLastDownEvent()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    goto :goto_b

    :pswitch_2b
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get4(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_41

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap4(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->clear()V

    goto :goto_b

    :cond_41
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto :goto_b

    :pswitch_45
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get3(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get3(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_b

    :pswitch_57
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mTapDistanceSlop:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_b

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto :goto_b

    :pswitch_71
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_76

    return-void

    :cond_76
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingStateHandler;->transitionToDelegatingStateAndClear()V

    goto :goto_b

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_71
        :pswitch_57
        :pswitch_b
        :pswitch_b
        :pswitch_2b
        :pswitch_b
        :pswitch_45
    .end packed-switch
.end method
