.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_74

    :goto_d
    :pswitch_d
    return v4

    :pswitch_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    :goto_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get10(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    :pswitch_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    :goto_39
    invoke-virtual {v1, v0, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_15

    :cond_3d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    neg-int v0, v0

    goto :goto_39

    :pswitch_45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    neg-int v0, v0

    :goto_58
    invoke-virtual {v1, v0, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_15

    :cond_5c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    goto :goto_58

    :pswitch_63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get10(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_d

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_e
        :pswitch_63
        :pswitch_d
        :pswitch_63
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x7f0a00b7
        :pswitch_27
        :pswitch_45
    .end packed-switch
.end method
