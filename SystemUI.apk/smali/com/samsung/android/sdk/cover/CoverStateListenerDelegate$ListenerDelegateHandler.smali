.class Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "CoverStateListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    if-eqz v0, :cond_11

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_26

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1a

    :goto_16
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;->onCoverSwitchStateChanged(Z)V

    goto :goto_11

    :cond_1a
    move v1, v2

    goto :goto_16

    :pswitch_1c
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_24

    :goto_20
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;->onCoverAttachStateChanged(Z)V

    goto :goto_11

    :cond_24
    move v1, v2

    goto :goto_20

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1c
    .end packed-switch
.end method
