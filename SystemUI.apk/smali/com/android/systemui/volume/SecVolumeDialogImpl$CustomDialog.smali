.class final Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;
.super Landroid/app/Dialog;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v4, -0x1

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap3(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v2

    const/16 v3, 0x4e20

    if-ge v2, v3, :cond_e

    return v7

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v4, :cond_79

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v4, :cond_77

    const/4 v0, 0x1

    :goto_3b
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_7b

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get45(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap6(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f120b2d

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v7

    :cond_77
    const/4 v0, 0x0

    goto :goto_3b

    :cond_79
    const/4 v0, 0x0

    goto :goto_3b

    :cond_7b
    return v8
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_126

    :cond_e
    :goto_e
    :pswitch_e
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get26(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    if-nez v1, :cond_124

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1b
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set8(Lcom/android/systemui/volume/SecVolumeDialogImpl;F)F

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set25(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    goto :goto_e

    :pswitch_2a
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get26(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set13(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    return v4

    :pswitch_38
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set13(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get42(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_44
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get41(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v1

    if-nez v1, :cond_88

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get59()Z

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get50(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTaskBar()Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-result-object v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get50(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTaskBar()Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isTaskBarTouched()Z
    :try_end_71
    .catchall {:try_start_44 .. :try_end_71} :catchall_8a

    move-result v1

    if-eqz v1, :cond_76

    monitor-exit v2

    return v3

    :cond_76
    :try_start_76
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "dispatchTouchEvent: dismissH"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_8a

    monitor-exit v2

    return v4

    :cond_88
    monitor-exit v2

    goto :goto_e

    :catchall_8a
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_8d
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set26(Lcom/android/systemui/volume/SecVolumeDialogImpl;F)F

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get53(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get19(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v2

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get52(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get51(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get59()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get28(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get35(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set25(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set13(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dispatchTouchEvent: SWIPE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get53(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get19(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_105

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_11d

    :cond_105
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get53(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get19(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get20(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_11d
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    goto/16 :goto_e

    :cond_124
    return v4

    nop

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_2a
        :pswitch_8d
        :pswitch_e
        :pswitch_38
    .end packed-switch
.end method

.method protected onStop()V
    .registers 5

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get34(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set19(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    return-void

    :cond_35
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get21(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get42(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get41(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    monitor-exit v1

    return v3

    :cond_25
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method
