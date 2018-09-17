.class Lcom/android/systemui/recents/RecentsImplProxy$1;
.super Landroid/os/Handler;
.source "RecentsImplProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImplProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImplProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImplProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_d4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_a
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    goto :goto_a

    :pswitch_18
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    goto :goto_a

    :pswitch_22
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v1, :cond_4a

    move v1, v5

    :goto_31
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v2, :cond_4c

    move v2, v5

    :goto_36
    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v3, :cond_4e

    move v3, v5

    :goto_3b
    iget v4, v7, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v4, :cond_50

    move v4, v5

    :goto_40
    iget v8, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz v8, :cond_52

    :goto_44
    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    goto :goto_a

    :cond_4a
    move v1, v6

    goto :goto_31

    :cond_4c
    move v2, v6

    goto :goto_36

    :cond_4e
    move v3, v6

    goto :goto_3b

    :cond_50
    move v4, v6

    goto :goto_40

    :cond_52
    move v5, v6

    goto :goto_44

    :pswitch_54
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_67

    move v0, v5

    :goto_5f
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_69

    :goto_63
    invoke-virtual {v1, v0, v5}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZ)V

    goto :goto_a

    :cond_67
    move v0, v6

    goto :goto_5f

    :cond_69
    move v5, v6

    goto :goto_63

    :pswitch_6b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    goto :goto_a

    :pswitch_7b
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    goto :goto_a

    :pswitch_85
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput v6, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v6, v0}, Lcom/android/systemui/recents/RecentsImpl;->dockTopTask(IIILandroid/graphics/Rect;)V

    goto/16 :goto_a

    :pswitch_9e
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecents(F)V

    goto/16 :goto_a

    :pswitch_b1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecentsEnded(F)V

    goto/16 :goto_a

    :pswitch_c4
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->onShowCurrentUserToast(II)V

    goto/16 :goto_a

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_18
        :pswitch_22
        :pswitch_54
        :pswitch_6b
        :pswitch_7b
        :pswitch_85
        :pswitch_9e
        :pswitch_b1
        :pswitch_c4
    .end packed-switch
.end method
