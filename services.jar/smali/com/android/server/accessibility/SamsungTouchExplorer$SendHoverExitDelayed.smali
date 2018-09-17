.class Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverExitDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private mPrototype:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SendHoverExitDelayed"

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    return-void
.end method

.method private clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    return-void
.end method

.method private isPending()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->clear()V

    :cond_12
    return-void
.end method

.method public forceSendAndRemove()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->run()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    :cond_c
    return-void
.end method

.method public post(Landroid/view/MotionEvent;II)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iput p3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get0(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    const/16 v4, 0xa

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-wrap2(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get4(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get4(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get4(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    :cond_2b
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get5(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get5(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->-get5(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    :cond_49
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->clear()V

    return-void
.end method
