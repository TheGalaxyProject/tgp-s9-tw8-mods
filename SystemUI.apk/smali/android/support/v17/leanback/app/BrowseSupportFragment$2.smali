.class Landroid/support/v17/leanback/app/BrowseSupportFragment$2;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 11

    const/16 v7, 0x82

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isInHeadersTransition()Z

    move-result v3

    if-eqz v3, :cond_12

    return-object p1

    :cond_12
    sget-boolean v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->DEBUG:Z

    if-eqz v3, :cond_3b

    const-string/jumbo v3, "BrowseSupportFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFocusSearch focused "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " + direction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    if-eq p1, v3, :cond_56

    const/16 v3, 0x21

    if-ne p2, v3, :cond_56

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_56
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_8a

    if-ne p2, v7, :cond_8a

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v3, :cond_81

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v3, :cond_81

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    :goto_80
    return-object v3

    :cond_81
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    goto :goto_80

    :cond_8a
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_bb

    const/4 v0, 0x1

    :goto_92
    if-eqz v0, :cond_bd

    const/16 v2, 0x42

    :goto_96
    if-eqz v0, :cond_c0

    const/16 v1, 0x11

    :goto_9a
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v3, :cond_cc

    if-ne p2, v2, :cond_cc

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isVerticalScrolling()Z

    move-result v3

    if-nez v3, :cond_ba

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v3, :cond_ba

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isHeadersDataReady()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c3

    :cond_ba
    return-object p1

    :cond_bb
    const/4 v0, 0x0

    goto :goto_92

    :cond_bd
    const/16 v2, 0x11

    goto :goto_96

    :cond_c0
    const/16 v1, 0x42

    goto :goto_9a

    :cond_c3
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    return-object v3

    :cond_cc
    if-ne p2, v1, :cond_f1

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isVerticalScrolling()Z

    move-result v3

    if-eqz v3, :cond_d7

    return-object p1

    :cond_d7
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_f0

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f0

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_f0
    return-object p1

    :cond_f1
    if-ne p2, v7, :cond_fa

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v3, :cond_fa

    return-object p1

    :cond_fa
    return-object v6
.end method
