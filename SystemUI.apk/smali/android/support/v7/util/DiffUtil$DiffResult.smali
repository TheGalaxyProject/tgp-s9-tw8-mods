.class public Landroid/support/v7/util/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# instance fields
.field private final mCallback:Landroid/support/v7/util/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$Callback;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iput-object p4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    iput-boolean p5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->addRootSnake()V

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItems()V

    return-void
.end method

.method private addRootSnake()V
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_10

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    if-eqz v2, :cond_2e

    :cond_10
    :goto_10
    new-instance v1, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v1}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    iput v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iput v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iput-boolean v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    iput v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    iput-boolean v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_24
    return-void

    :cond_25
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/util/DiffUtil$Snake;

    goto :goto_a

    :cond_2e
    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    if-eqz v2, :cond_24

    goto :goto_10
.end method

.method private dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v5, :cond_a

    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    return-void

    :cond_a
    add-int/lit8 v0, p4, -0x1

    :goto_c
    if-ltz v0, :cond_8c

    iget-object v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v6, p5, v0

    aget v5, v5, v6

    and-int/lit8 v2, v5, 0x1f

    sparse-switch v2, :sswitch_data_8e

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown flag for pos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_45
    invoke-interface {p2, p3, v7}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_4c

    :sswitch_5f
    iget-object v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v6, p5, v0

    aget v5, v5, v6

    shr-int/lit8 v1, v5, 0x5

    invoke-static {p1, v1, v7}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v3

    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    invoke-interface {p2, v5, p3}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    const/4 v5, 0x4

    if-ne v2, v5, :cond_7e

    iget-object v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v6, p5, v0

    invoke-virtual {v5, v1, v6}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, p3, v7, v5}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_7e
    :goto_7e
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :sswitch_81
    new-instance v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v6, p5, v0

    invoke-direct {v5, v6, p3, v8}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_8c
    return-void

    nop

    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_45
        0x4 -> :sswitch_5f
        0x8 -> :sswitch_5f
        0x10 -> :sswitch_81
    .end sparse-switch
.end method

.method private dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v5, :cond_a

    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    return-void

    :cond_a
    add-int/lit8 v0, p4, -0x1

    :goto_c
    if-ltz v0, :cond_98

    iget-object v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v6, p5, v0

    aget v5, v5, v6

    and-int/lit8 v2, v5, 0x1f

    sparse-switch v2, :sswitch_data_9a

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown flag for pos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_45
    add-int v5, p3, v0

    invoke-interface {p2, v5, v8}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_4e

    :sswitch_61
    iget-object v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v6, p5, v0

    aget v5, v5, v6

    shr-int/lit8 v1, v5, 0x5

    invoke-static {p1, v1, v9}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v3

    add-int v5, p3, v0

    iget v6, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p2, v5, v6}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    const/4 v5, 0x4

    if-ne v2, v5, :cond_88

    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v7, p5, v0

    invoke-virtual {v6, v7, v1}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v5, v8, v6}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_88
    :goto_88
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :sswitch_8b
    new-instance v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v6, p5, v0

    add-int v7, p3, v0

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_98
    return-void

    nop

    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_45
        0x4 -> :sswitch_61
        0x8 -> :sswitch_61
        0x10 -> :sswitch_8b
    .end sparse-switch
.end method

.method private findAddition(III)V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    return-void
.end method

.method private findMatchingItem(IIIZ)Z
    .registers 18

    if-eqz p4, :cond_48

    add-int/lit8 v6, p2, -0x1

    move v1, p1

    add-int/lit8 v2, p2, -0x1

    :goto_7
    move/from16 v5, p3

    :goto_9
    if-ltz v5, :cond_8a

    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/util/DiffUtil$Snake;

    iget v10, v8, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v11, v8, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v3, v10, v11

    iget v10, v8, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v11, v8, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v4, v10, v11

    if-eqz p4, :cond_53

    add-int/lit8 v7, v1, -0x1

    :goto_23
    if-lt v7, v3, :cond_83

    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v7, v6}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_50

    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v7, v6}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v9

    if-eqz v9, :cond_4e

    const/16 v0, 0x8

    :goto_37
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v11, v7, 0x5

    or-int/lit8 v11, v11, 0x10

    aput v11, v10, v6

    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v11, v6, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    const/4 v10, 0x1

    return v10

    :cond_48
    add-int/lit8 v6, p1, -0x1

    add-int/lit8 v1, p1, -0x1

    move v2, p2

    goto :goto_7

    :cond_4e
    const/4 v0, 0x4

    goto :goto_37

    :cond_50
    add-int/lit8 v7, v7, -0x1

    goto :goto_23

    :cond_53
    add-int/lit8 v7, v2, -0x1

    :goto_55
    if-lt v7, v4, :cond_83

    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v6, v7}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_80

    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v6, v7}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v9

    if-eqz v9, :cond_7e

    const/16 v0, 0x8

    :goto_69
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v12, v7, 0x5

    or-int/lit8 v12, v12, 0x10

    aput v12, v10, v11

    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v11, v11, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    const/4 v10, 0x1

    return v10

    :cond_7e
    const/4 v0, 0x4

    goto :goto_69

    :cond_80
    add-int/lit8 v7, v7, -0x1

    goto :goto_55

    :cond_83
    iget v1, v8, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v2, v8, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_8a
    const/4 v10, 0x0

    return v10
.end method

.method private findMatchingItems()V
    .registers 14

    iget v8, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    iget v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    :goto_c
    if-ltz v3, :cond_66

    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/util/DiffUtil$Snake;

    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v1, v11, v12

    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v2, v11, v12

    iget-boolean v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v11, :cond_36

    :goto_26
    if-le v8, v1, :cond_2e

    invoke-direct {p0, v8, v7, v3}, Landroid/support/v7/util/DiffUtil$DiffResult;->findAddition(III)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_26

    :cond_2e
    :goto_2e
    if-le v7, v2, :cond_36

    invoke-direct {p0, v8, v7, v3}, Landroid/support/v7/util/DiffUtil$DiffResult;->findRemoval(III)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_2e

    :cond_36
    const/4 v4, 0x0

    :goto_37
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-ge v4, v11, :cond_5f

    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v6, v11, v4

    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v5, v11, v4

    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v11, v6, v5}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_5d

    const/4 v0, 0x1

    :goto_4c
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v12, v5, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v6

    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v12, v6, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_5d
    const/4 v0, 0x2

    goto :goto_4c

    :cond_5f
    iget v8, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v7, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_66
    return-void
.end method

.method private findRemoval(III)V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    return-void
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_6
    if-ltz v0, :cond_37

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_34

    iget-boolean v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_34

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v0

    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_33

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_31

    const/4 v4, 0x1

    :goto_2b
    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_31
    const/4 v4, -0x1

    goto :goto_2b

    :cond_33
    return-object v2

    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_37
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V
    .registers 16

    instance-of v0, p1, Landroid/support/v7/util/BatchingListUpdateCallback;

    if-eqz v0, :cond_64

    move-object v2, p1

    check-cast v2, Landroid/support/v7/util/BatchingListUpdateCallback;

    :goto_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v9, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    iget v8, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    :goto_18
    if-ltz v11, :cond_72

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/util/DiffUtil$Snake;

    iget v12, v10, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    iget v0, v10, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v3, v0, v12

    iget v0, v10, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v6, v0, v12

    if-ge v3, v9, :cond_35

    sub-int v4, v9, v3

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    :cond_35
    if-ge v6, v8, :cond_3e

    sub-int v4, v8, v6

    move-object v0, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    :cond_3e
    add-int/lit8 v7, v12, -0x1

    :goto_40
    if-ltz v7, :cond_6b

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget v4, v10, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v4, v7

    aget v0, v0, v4

    and-int/lit8 v0, v0, 0x1f

    const/4 v4, 0x2

    if-ne v0, v4, :cond_61

    iget v0, v10, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v0, v7

    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    iget v5, v10, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v5, v7

    iget v13, v10, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v13, v7

    invoke-virtual {v4, v5, v13}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5, v4}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_61
    add-int/lit8 v7, v7, -0x1

    goto :goto_40

    :cond_64
    new-instance v2, Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-direct {v2, p1}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    move-object p1, v2

    goto :goto_7

    :cond_6b
    iget v9, v10, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v8, v10, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v11, v11, -0x1

    goto :goto_18

    :cond_72
    invoke-virtual {v2}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3

    new-instance v0, Landroid/support/v7/util/DiffUtil$DiffResult$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/util/DiffUtil$DiffResult$1;-><init>(Landroid/support/v7/util/DiffUtil$DiffResult;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    return-void
.end method

.method getSnakes()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    return-object v0
.end method
