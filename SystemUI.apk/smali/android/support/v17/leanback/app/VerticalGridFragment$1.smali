.class Landroid/support/v17/leanback/app/VerticalGridFragment$1;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "VerticalGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/VerticalGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VerticalGridFragment;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment$1;->this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment$1;->this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/VerticalGridFragment;->setEntranceTransitionState(Z)V

    return-void
.end method
