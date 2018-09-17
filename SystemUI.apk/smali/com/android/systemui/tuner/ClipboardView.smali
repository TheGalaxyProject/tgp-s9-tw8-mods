.class public Lcom/android/systemui/tuner/ClipboardView;
.super Landroid/widget/ImageView;
.source "ClipboardView.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field private final mClipboardManager:Landroid/content/ClipboardManager;

.field private mCurrentClip:Landroid/content/ClipData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Landroid/content/ClipboardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method

.method private setBackgroundDragTarget(Z)V
    .registers 3

    if-eqz p1, :cond_9

    const v0, 0x4dffffff    # 5.3687088E8f

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundColor(I)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->startListening()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->stopListening()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_8
    return v2

    :pswitch_9
    invoke-direct {p0, v2}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundDragTarget(Z)V

    goto :goto_8

    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :pswitch_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundDragTarget(Z)V

    goto :goto_8

    nop

    :pswitch_data_1c
    .packed-switch 0x3
        :pswitch_d
        :pswitch_16
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method public onPrimaryClipChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    if-eqz v0, :cond_13

    const v0, 0x7f080130

    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClipboardView;->setImageResource(I)V

    return-void

    :cond_13
    const v0, 0x7f08012f

    goto :goto_f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->startPocketDrag()V

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public startListening()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->onPrimaryClipChanged()V

    return-void
.end method

.method public startPocketDrag()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, p0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/tuner/ClipboardView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method

.method public stopListening()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method
