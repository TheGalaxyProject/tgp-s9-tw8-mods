.class final Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackStackListener"
.end annotation


# instance fields
.field mIndexOfHeadersBackStack:I

.field mLastEntryCount:I

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    return-void
.end method


# virtual methods
.method load(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, -0x1

    if-eqz p1, :cond_18

    const-string/jumbo v0, "headerStackIndex"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-ne v0, v2, :cond_16

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    :cond_15
    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_13

    :cond_18
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_15
.end method

.method public onBackStackChanged()V
    .registers 6

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "BrowseFragment"

    const-string/jumbo v3, "getFragmentManager() is null, stack:"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_17
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    if-le v0, v2, :cond_46

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-interface {v1}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    :cond_43
    :goto_43
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    return-void

    :cond_46
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    if-ge v0, v2, :cond_43

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-lt v2, v0, :cond_43

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseFragment;->isHeadersDataReady()Z

    move-result v2

    if-nez v2, :cond_6c

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_6c
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v2, :cond_43

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    goto :goto_43
.end method

.method save(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "headerStackIndex"

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
