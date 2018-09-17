.class Landroid/support/v17/leanback/app/DetailsSupportFragment$5;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$5;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$5;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;

    if-nez v0, :cond_d

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$5;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    :cond_d
    return-void
.end method
