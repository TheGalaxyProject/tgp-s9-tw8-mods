.class Landroid/support/v17/leanback/app/ProgressBarManager$1;
.super Ljava/lang/Object;
.source "ProgressBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/ProgressBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/ProgressBarManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/ProgressBarManager;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, -0x2

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/ProgressBarManager;->mEnableProgressBar:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/ProgressBarManager;->mUserProvidedProgressBar:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/ProgressBarManager;->rootView:Landroid/view/ViewGroup;

    if-nez v1, :cond_15

    :cond_14
    return-void

    :cond_15
    iget-object v1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/ProgressBarManager;->mIsShowing:Z

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/ProgressBarManager;->mProgressBarView:Landroid/view/View;

    if-nez v1, :cond_4a

    iget-object v1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-object v3, v3, Landroid/support/v17/leanback/app/ProgressBarManager;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x101007a

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, v1, Landroid/support/v17/leanback/app/ProgressBarManager;->mProgressBarView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/ProgressBarManager;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-object v2, v2, Landroid/support/v17/leanback/app/ProgressBarManager;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    iget-object v1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/ProgressBarManager;->mUserProvidedProgressBar:Z

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/support/v17/leanback/app/ProgressBarManager$1;->this$0:Landroid/support/v17/leanback/app/ProgressBarManager;

    iget-object v1, v1, Landroid/support/v17/leanback/app/ProgressBarManager;->mProgressBarView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49
.end method
