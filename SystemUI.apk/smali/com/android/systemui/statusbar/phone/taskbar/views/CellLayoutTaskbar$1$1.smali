.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;
.super Ljava/lang/Object;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->onViewAdded(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;
    }
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final mLongPressed:Ljava/lang/Runnable;

.field private mTouchedView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->mTouchedView:Landroid/view/View;

    return-object v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->mLongPressed:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->isContextClickable()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-eq v2, v5, :cond_20

    :cond_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllView(Z)V

    :cond_20
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isContextMenuOpen()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-ne v2, v5, :cond_35

    :cond_34
    return v4

    :cond_35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3f

    return v4

    :cond_3f
    if-nez v0, :cond_64

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->mTouchedView:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-wrap2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;II)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->mLongPressed:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v6

    :cond_64
    if-ne v0, v5, :cond_99

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInsideAppIcon(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startDrag(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;Landroid/graphics/Point;)V

    :cond_98
    return v6

    :cond_99
    const/4 v2, 0x3

    if-ne v0, v2, :cond_cf

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz v1, :cond_ce

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInsideAppIcon(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_ce

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startDrag(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;Landroid/graphics/Point;)V

    :cond_ce
    return v6

    :cond_cf
    if-ne v0, v6, :cond_e5

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInsideAppIcon(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_e4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_e4
    return v6

    :cond_e5
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1$1;->mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return v4
.end method
