.class Lcom/samsung/android/settings/widget/GoToTopButton$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "GoToTopButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/GoToTopButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/GoToTopButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/GoToTopButton;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/widget/GoToTopButton$3;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 5

    if-nez p2, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton$3;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/GoToTopButton;->updateStateByAction(I)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton$3;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/GoToTopButton;->updateStateByAction(I)V

    goto :goto_8
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton$3;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/GoToTopButton;->updateStateByAction(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton$3;->this$0:Lcom/samsung/android/settings/widget/GoToTopButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/GoToTopButton;->updateStateByAction(I)V

    goto :goto_d
.end method
