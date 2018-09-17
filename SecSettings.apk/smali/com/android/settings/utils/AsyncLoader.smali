.class public abstract Lcom/android/settings/utils/AsyncLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/utils/AsyncLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/settings/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/settings/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/utils/AsyncLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_19
    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/settings/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-eq v0, v1, :cond_22

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    :cond_22
    return-void
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/settings/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method protected abstract onDiscardResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected onReset()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/settings/utils/AsyncLoader;->onStopLoading()V

    iget-object v0, p0, Lcom/android/settings/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/AsyncLoader;->onDiscardResult(Ljava/lang/Object;)V

    :cond_10
    iput-object v1, p0, Lcom/android/settings/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/AsyncLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/utils/AsyncLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/utils/AsyncLoader;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_16

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/utils/AsyncLoader;->forceLoad()V

    :cond_16
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/settings/utils/AsyncLoader;->cancelLoad()Z

    return-void
.end method
