.class Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mLastReceivedDownEdgeFlags:I

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerDownX:F

.field private mLastReceivedUpPointerDownY:F

.field private mPrimaryPointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 4

    const/16 v1, 0x20

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    return-void
.end method

.method private findPrimaryPointerId()I
    .registers 9

    const/4 v6, -0x1

    const-wide v2, 0x7fffffffffffffffL

    iget v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    :cond_8
    :goto_8
    if-lez v5, :cond_1d

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    const/4 v7, 0x1

    shl-int/2addr v7, v4

    not-int v7, v7

    and-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v7, v4

    cmp-long v7, v0, v2

    if-gez v7, :cond_8

    move-wide v2, v0

    move v6, v4

    goto :goto_8

    :cond_1d
    return v6
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v0, v2, v1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v0, v2, v1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int v3, v0

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aput v4, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aput v4, v2, v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne v2, v1, :cond_35

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_35
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    iput-wide v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    return-void
.end method

.method public getLastReceivedDownEdgeFlags()I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerDownX()F
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    return v0
.end method

.method public getLastReceivedUpPointerDownY()F
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    return v0
.end method

.method public getPrimaryPointerId()I
    .registers 3

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->findPrimaryPointerId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    :cond_b
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isReceivedPointerDown(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    shl-int v0, v1, p1

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_a

    :goto_9
    return v1

    :cond_a
    move v1, v2

    goto :goto_9
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    :goto_16
    :pswitch_16
    return-void

    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_16

    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_16

    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_16

    :pswitch_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_16

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_17
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_2f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nDown pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1f
    const/16 v2, 0x20

    if-ge v1, v2, :cond_35

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_35
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nPrimary pointer id [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
