.class public abstract Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;
.source "SeslFragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;-><init>()V

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mWindowAnimations:I

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V
    .registers 4

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doDestroy()V

    return-void

    :cond_a
    return-void
.end method

.method doLoaderStart()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_13

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mCheckedForLoaderManager:Z

    if-eqz v0, :cond_1a

    :cond_10
    :goto_10
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mCheckedForLoaderManager:Z

    return-void

    :cond_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    goto :goto_10

    :cond_1a
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    const-string/jumbo v1, "(root)"

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    goto :goto_10
.end method

.method doLoaderStop(Z)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mRetainLoaders:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_16

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    if-nez p1, :cond_17

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStop()V

    :goto_14
    return-void

    :cond_15
    return-void

    :cond_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doRetain()V

    goto :goto_14
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_13

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "SeslLoader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_12
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-eqz v1, :cond_11

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_19

    :cond_e
    if-nez p2, :cond_26

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    new-instance v1, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    goto :goto_4

    :cond_19
    if-eqz p3, :cond_e

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_26
    if-eqz v0, :cond_10

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    goto :goto_10
.end method

.method getRetainLoaders()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-nez v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doDestroy()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .registers 2

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onShouldSaveFragmentState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onSupportInvalidateOptionsMenu()V
    .registers 1

    return-void
.end method

.method reportLoaderStart()V
    .registers 6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-nez v4, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v0

    new-array v3, v0, [Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    add-int/lit8 v1, v0, -0x1

    :goto_f
    if-gez v1, :cond_1f

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_4

    aget-object v2, v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->finishRetain()V

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doReportStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1f
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_f
.end method

.method restoreLoaderNonConfig(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_5

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v0

    :goto_a
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->updateHostController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method retainLoaderNonConfig()Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-nez v6, :cond_9

    :cond_6
    if-nez v5, :cond_50

    return-object v8

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v0

    new-array v4, v0, [Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    add-int/lit8 v2, v0, -0x1

    :goto_13
    if-gez v2, :cond_33

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getRetainLoaders()Z

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_6

    aget-object v3, v4, v2

    iget-boolean v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_40

    :cond_22
    :goto_22
    iget-boolean v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_4e

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doDestroy()V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_33
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v6, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_40
    if-eqz v1, :cond_22

    iget-boolean v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->mStarted:Z

    if-eqz v6, :cond_4a

    :goto_46
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doRetain()V

    goto :goto_22

    :cond_4a
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    goto :goto_46

    :cond_4e
    const/4 v5, 0x1

    goto :goto_30

    :cond_50
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mAllLoaderManagers:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    return-object v6
.end method
