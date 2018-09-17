.class Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;
.super Ljava/lang/Object;
.source "OnboardingSupportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/OnboardingSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    iget v0, v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onFinishFragment()V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/OnboardingSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->moveToNextPage()V

    goto :goto_1a
.end method
