.class final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field private sCfmsService:Landroid/os/ICustomFrequencyManager;

.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method private sendEventToCfmsService(I)V
    .registers 7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_13

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_13
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_26

    const/16 v2, 0x9

    if-ne p1, v2, :cond_27

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v3, "HOVERING_EVENT"

    const-string/jumbo v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v3, "HOVERING_EVENT"

    const-string/jumbo v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_26

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    :cond_3c
    if-nez p1, :cond_26

    :try_start_3e
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v3, "HOVERING_EVENT"

    const-string/jumbo v4, "3"

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_37

    goto :goto_26
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 16

    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v3, 0x0

    :try_start_3
    instance-of v9, p1, Landroid/view/MotionEvent;

    if-eqz v9, :cond_115

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get0()I

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_9f

    const/4 v4, 0x1

    :goto_1b
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get13(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    if-lt v9, v12, :cond_9a

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9, v6, v2, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap9(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get8(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9, v6, v2, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap6(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    :cond_35
    if-eqz v4, :cond_75

    const/4 v9, 0x7

    if-eq v2, v9, :cond_75

    if-eq v2, v13, :cond_75

    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onInputEvent 4 : Action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", sideButtonPressed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", coverOpened="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get4(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    const/4 v8, 0x0

    if-eqz v4, :cond_81

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get4(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_81

    const/4 v8, 0x1

    :cond_81
    const/16 v9, 0x9

    if-ne v2, v9, :cond_a2

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap4(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    :cond_8d
    :goto_8d
    if-eqz v8, :cond_9a

    packed-switch v2, :pswitch_data_12c

    :pswitch_92
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onInputEvent : default"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_be

    :cond_9a
    :goto_9a
    :pswitch_9a
    const/4 v3, 0x1

    :cond_9b
    :goto_9b
    invoke-virtual {p0, p1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_9f
    const/4 v4, 0x0

    goto/16 :goto_1b

    :cond_a2
    const/16 v9, 0xa

    if-ne v2, v9, :cond_c3

    :try_start_a6
    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v9, 0x3018

    iput v9, v7, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get7(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_bd
    .catchall {:try_start_a6 .. :try_end_bd} :catchall_be

    goto :goto_8d

    :catchall_be
    move-exception v9

    invoke-virtual {p0, p1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v9

    :cond_c3
    if-nez v2, :cond_8d

    :try_start_c5
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get7(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3018

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_e6

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get7(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3018

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "[HOVER] sending hover exit br is canceled by touch event."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v13, :cond_8d

    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    goto :goto_8d

    :pswitch_f1
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get13(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    if-lt v9, v12, :cond_9a

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get6(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_9a

    :pswitch_103
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get13(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    if-lt v9, v12, :cond_9a

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get6(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_9a

    :cond_115
    instance-of v9, p1, Landroid/view/KeyEvent;

    if-eqz v9, :cond_9b

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9b

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap3(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    :try_end_129
    .catchall {:try_start_c5 .. :try_end_129} :catchall_be

    const/4 v3, 0x1

    goto/16 :goto_9b

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_103
        :pswitch_f1
        :pswitch_103
        :pswitch_92
        :pswitch_f1
        :pswitch_103
        :pswitch_9a
        :pswitch_92
        :pswitch_9a
        :pswitch_9a
    .end packed-switch
.end method
