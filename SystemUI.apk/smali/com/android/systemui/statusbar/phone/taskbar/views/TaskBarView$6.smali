.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setup(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_8e

    return v4

    :pswitch_a
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "[DS]TaskBarView"

    const-string/jumbo v3, " onGenericMotion ACTION_SCROLL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    :cond_24
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_44

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_65

    :cond_44
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_50

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_6f

    :cond_50
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v2

    :goto_62
    invoke-virtual {v3, v2, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    :cond_65
    :goto_65
    const/4 v2, 0x1

    return v2

    :cond_67
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v2

    neg-int v2, v2

    goto :goto_62

    :cond_6f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v2

    neg-int v2, v2

    :goto_82
    invoke-virtual {v3, v2, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_65

    :cond_86
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v2

    goto :goto_82

    nop

    :pswitch_data_8e
    .packed-switch 0x8
        :pswitch_a
    .end packed-switch
.end method
