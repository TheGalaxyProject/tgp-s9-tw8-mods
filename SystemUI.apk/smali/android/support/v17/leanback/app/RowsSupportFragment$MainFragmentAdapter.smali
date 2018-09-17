.class public Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;
.super Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;
.source "RowsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter",
        "<",
        "Landroid/support/v17/leanback/app/RowsSupportFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->setScalingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public isScrolling()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public onTransitionEnd()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->onTransitionEnd()V

    return-void
.end method

.method public onTransitionPrepare()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->onTransitionPrepare()Z

    move-result v0

    return v0
.end method

.method public onTransitionStart()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->onTransitionStart()V

    return-void
.end method

.method public setAlignment(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAlignment(I)V

    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setEntranceTransitionState(Z)V

    return-void
.end method

.method public setExpand(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setExpand(Z)V

    return-void
.end method
