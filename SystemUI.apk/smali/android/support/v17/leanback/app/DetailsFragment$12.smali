.class Landroid/support/v17/leanback/app/DetailsFragment$12;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsFragment;->findOrCreateVideoFragment()Landroid/app/Fragment;
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$12;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$12;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$12;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->switchToVideo()V

    :cond_d
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$12;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    return-void
.end method
