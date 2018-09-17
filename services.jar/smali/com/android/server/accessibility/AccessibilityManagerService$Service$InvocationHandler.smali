.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0x8

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_CLICKED:I = 0x7

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsMagnificationCallbackEnabled:Z

.field private mIsSoftKeyboardCallbackEnabled:Z

.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .registers 6

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_6e

    :pswitch_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_1f
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap5(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    :goto_26
    return-void

    :pswitch_27
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap4(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_26

    :pswitch_2d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Region;

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9, v5, v6, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap6(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/graphics/Region;FFF)V

    goto :goto_26

    :pswitch_53
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap7(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    goto :goto_26

    :pswitch_5b
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto :goto_26

    :pswitch_61
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_6c

    const/4 v1, 0x1

    :goto_66
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-static {v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Z)V

    goto :goto_26

    :cond_6c
    const/4 v1, 0x0

    goto :goto_66

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_27
        :pswitch_5
        :pswitch_5
        :pswitch_2d
        :pswitch_53
        :pswitch_5b
        :pswitch_61
    .end packed-switch
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :goto_4
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_e
    move v1, v2

    goto :goto_4
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .registers 3

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .registers 8

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 5

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    return-void
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    return-void
.end method
