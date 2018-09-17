.class Landroid/support/v17/leanback/app/SearchSupportFragment$3;
.super Ljava/lang/Object;
.source "SearchSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/SearchSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v4, :cond_9

    return-void

    :cond_9
    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v4}, Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;->getResultsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v0, v4, :cond_5c

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v4, :cond_80

    const/4 v1, 0x1

    :goto_1e
    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v4}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseAdapter()V

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iput-object v0, v4, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v4, :cond_38

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v5, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v5, v5, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    :cond_38
    if-eqz v1, :cond_82

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v4, :cond_4a

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v4

    if-nez v4, :cond_82

    :cond_4a
    :goto_4a
    if-nez v2, :cond_57

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_57
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->executePendingQuery()V

    :cond_5c
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->updateSearchBarNextFocusId()V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    if-eqz v2, :cond_84

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7f
    return-void

    :cond_80
    const/4 v1, 0x0

    goto :goto_1e

    :cond_82
    move v2, v3

    goto :goto_4a

    :cond_84
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->updateFocus()V

    goto :goto_7f
.end method
