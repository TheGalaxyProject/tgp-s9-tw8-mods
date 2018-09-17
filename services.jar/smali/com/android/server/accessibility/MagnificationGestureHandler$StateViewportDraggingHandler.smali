.class final Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateViewportDraggingHandler"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_82

    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unexpected event type: ACTION_DOWN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_13
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->clear()V

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    goto :goto_9

    :pswitch_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v5, :cond_2c

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Should have one pointer down."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-boolean v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    if-eqz v3, :cond_50

    iput-boolean v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v4}, Lcom/android/server/accessibility/MagnificationController;->setCenter(FFZI)Z

    goto :goto_9

    :cond_50
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4, v4}, Lcom/android/server/accessibility/MagnificationController;->setCenter(FFZI)Z

    goto :goto_9

    :cond_5a
    iput-boolean v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    goto :goto_9

    :pswitch_5d
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get5(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z

    move-result v3

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->clear()V

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    goto :goto_9

    :pswitch_78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unexpected event type: ACTION_POINTER_UP"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5d
        :pswitch_1d
        :pswitch_9
        :pswitch_9
        :pswitch_13
        :pswitch_78
    .end packed-switch
.end method
