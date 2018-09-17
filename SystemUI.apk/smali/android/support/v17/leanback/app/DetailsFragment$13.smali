.class Landroid/support/v17/leanback/app/DetailsFragment$13;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsFragment;->setupDpadNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_fragment_root:I

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->slideInGridView()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->slideOutGridView()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    goto :goto_23

    :cond_38
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    goto :goto_23
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
