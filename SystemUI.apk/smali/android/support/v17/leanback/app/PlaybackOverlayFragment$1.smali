.class Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;
.super Ljava/lang/Object;
.source "PlaybackOverlayFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackOverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackOverlayFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    iget v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mBgAlpha:I

    if-lez v1, :cond_25

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->enableVerticalGridAnimations(Z)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->startFadeTimer()V

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;->onFadeInComplete()V

    :cond_20
    :goto_20
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    iput v3, v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadingStatus:I

    return-void

    :cond_25
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->resetControlsToPrimaryActions(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_38
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$OnFadeCompleteListener;->onFadeOutComplete()V

    goto :goto_20
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlayFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlayFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackOverlayFragment;->enableVerticalGridAnimations(Z)V

    return-void
.end method
