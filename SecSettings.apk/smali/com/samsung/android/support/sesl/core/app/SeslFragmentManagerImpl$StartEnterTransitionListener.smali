.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "SeslFragmentManager.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    return-object v0
.end method


# virtual methods
.method public cancelTransaction()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    # invokes: Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->completeExecute(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;ZZZ)V
    invoke-static {v0, v1, v2, v3, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;ZZZ)V

    return-void
.end method

.method public completeTransaction()V
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-gtz v7, :cond_22

    move v0, v5

    :goto_7
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v3, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_12
    if-lt v2, v4, :cond_24

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-eqz v0, :cond_3f

    :goto_1e
    # invokes: Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->completeExecute(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;ZZZ)V
    invoke-static {v7, v8, v9, v5, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;ZZZ)V

    return-void

    :cond_22
    move v0, v6

    goto :goto_7

    :cond_24
    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setOnStartEnterTransitionListener(Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;)V

    if-nez v0, :cond_35

    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_35
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->startPostponedEnterTransition()V

    goto :goto_32

    :cond_3f
    move v5, v6

    goto :goto_1e
.end method

.method public isReady()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public onStartEnterTransition()V
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    # invokes: Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->scheduleCommit()V
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->access$500(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V

    return-void

    :cond_12
    return-void
.end method

.method public startListening()V
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    return-void
.end method
