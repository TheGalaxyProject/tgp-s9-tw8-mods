.class Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$4;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "PlaybackOverlaySupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget v0, v0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mFadingStatus:I

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget v0, v0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mBgAlpha:I

    if-nez v0, :cond_28

    :goto_c
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_16
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPosition()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mResetControlsToPrimaryActionsPending:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->resetControlsToPrimaryActions(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_27
    return-void

    :cond_28
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    iget v0, v0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->mFadingStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    goto :goto_c
.end method

.method public onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 3

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPosition()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->updateControlsBottomSpace(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_b
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .registers 6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v0, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_2c

    iget-object v1, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2c
    return-void
.end method
