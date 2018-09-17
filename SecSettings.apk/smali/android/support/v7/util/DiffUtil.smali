.class public Landroid/support/v7/util/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/DiffUtil$1;,
        Landroid/support/v7/util/DiffUtil$Callback;,
        Landroid/support/v7/util/DiffUtil$DiffResult;,
        Landroid/support/v7/util/DiffUtil$PostponedUpdate;,
        Landroid/support/v7/util/DiffUtil$Range;,
        Landroid/support/v7/util/DiffUtil$Snake;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v7/util/DiffUtil$1;

    invoke-direct {v0}, Landroid/support/v7/util/DiffUtil$1;-><init>()V

    sput-object v0, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .registers 26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v17

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/support/v7/util/DiffUtil$Range;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/support/v7/util/DiffUtil$Range;-><init>(IIII)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v2, v18, v17

    sub-int v3, v18, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v9, v2, v3

    mul-int/lit8 v2, v9, 0x2

    new-array v7, v2, [I

    mul-int/lit8 v2, v9, 0x2

    new-array v8, v2, [I

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    :goto_39
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_171

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v7/util/DiffUtil$Range;

    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move-object/from16 v0, v19

    iget v6, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Landroid/support/v7/util/DiffUtil;->diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v22

    if-eqz v22, :cond_168

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-lez v2, :cond_70

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_70
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    add-int/2addr v2, v3

    move-object/from16 v0, v22

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    add-int/2addr v2, v3

    move-object/from16 v0, v22

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f5

    new-instance v16, Landroid/support/v7/util/DiffUtil$Range;

    invoke-direct/range {v16 .. v16}, Landroid/support/v7/util/DiffUtil$Range;-><init>()V

    :goto_95
    move-object/from16 v0, v19

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v19

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v2, :cond_104

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    :goto_bb
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v19

    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v2, :cond_14d

    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v2, :cond_130

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    :goto_ec
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_f5
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v7/util/DiffUtil$Range;

    goto :goto_95

    :cond_104
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v2, :cond_11d

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_bb

    :cond_11d
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_bb

    :cond_130
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_ec

    :cond_14d
    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    move-object/from16 v0, v22

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_ec

    :cond_168
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_39

    :cond_171
    sget-object v2, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v10, Landroid/support/v7/util/DiffUtil$DiffResult;

    move-object/from16 v11, p0

    move-object v13, v7

    move-object v14, v8

    move/from16 v15, p1

    invoke-direct/range {v10 .. v15}, Landroid/support/v7/util/DiffUtil$DiffResult;-><init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v10
.end method

.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;
    .registers 24

    sub-int v8, p2, p1

    sub-int v7, p4, p3

    sub-int v13, p2, p1

    const/4 v14, 0x1

    if-lt v13, v14, :cond_e

    sub-int v13, p4, p3

    const/4 v14, 0x1

    if-ge v13, v14, :cond_10

    :cond_e
    const/4 v13, 0x0

    return-object v13

    :cond_10
    sub-int v5, v8, v7

    add-int v13, v8, v7

    add-int/lit8 v13, v13, 0x1

    div-int/lit8 v4, v13, 0x2

    sub-int v13, p7, v4

    add-int/lit8 v13, v13, -0x1

    add-int v14, p7, v4

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v13, v14, v15}, Ljava/util/Arrays;->fill([IIII)V

    sub-int v13, p7, v4

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v13, v5

    add-int v14, p7, v4

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v14, v5

    move-object/from16 v0, p6

    invoke-static {v0, v13, v14, v8}, Ljava/util/Arrays;->fill([IIII)V

    rem-int/lit8 v13, v5, 0x2

    if-eqz v13, :cond_71

    const/4 v2, 0x1

    :goto_3a
    const/4 v3, 0x0

    :goto_3b
    if-gt v3, v4, :cond_146

    neg-int v6, v3

    :goto_3e
    if-gt v6, v3, :cond_bd

    neg-int v13, v3

    if-eq v6, v13, :cond_53

    if-eq v6, v3, :cond_73

    add-int v13, p7, v6

    add-int/lit8 v13, v13, -0x1

    aget v13, p5, v13

    add-int v14, p7, v6

    add-int/lit8 v14, v14, 0x1

    aget v14, p5, v14

    if-ge v13, v14, :cond_73

    :cond_53
    add-int v13, p7, v6

    add-int/lit8 v13, v13, 0x1

    aget v11, p5, v13

    const/4 v10, 0x0

    :goto_5a
    sub-int v12, v11, v6

    :goto_5c
    if-ge v11, v8, :cond_7d

    if-ge v12, v7, :cond_7d

    add-int v13, p1, v11

    add-int v14, p3, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v13

    if-eqz v13, :cond_7d

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5c

    :cond_71
    const/4 v2, 0x0

    goto :goto_3a

    :cond_73
    add-int v13, p7, v6

    add-int/lit8 v13, v13, -0x1

    aget v13, p5, v13

    add-int/lit8 v11, v13, 0x1

    const/4 v10, 0x1

    goto :goto_5a

    :cond_7d
    add-int v13, p7, v6

    aput v11, p5, v13

    if-eqz v2, :cond_ba

    sub-int v13, v5, v3

    add-int/lit8 v13, v13, 0x1

    if-lt v6, v13, :cond_ba

    add-int v13, v5, v3

    add-int/lit8 v13, v13, -0x1

    if-gt v6, v13, :cond_ba

    add-int v13, p7, v6

    aget v13, p5, v13

    add-int v14, p7, v6

    aget v14, p6, v14

    if-lt v13, v14, :cond_ba

    new-instance v9, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v9}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    add-int v13, p7, v6

    aget v13, p6, v13

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v13, v6

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v13, p7, v6

    aget v13, p5, v13

    add-int v14, p7, v6

    aget v14, p6, v14

    sub-int/2addr v13, v14

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    iput-boolean v10, v9, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    const/4 v13, 0x0

    iput-boolean v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    return-object v9

    :cond_ba
    add-int/lit8 v6, v6, 0x2

    goto :goto_3e

    :cond_bd
    neg-int v6, v3

    :goto_be
    if-gt v6, v3, :cond_142

    add-int v1, v6, v5

    add-int v13, v3, v5

    if-eq v1, v13, :cond_d8

    neg-int v13, v3

    add-int/2addr v13, v5

    if-eq v1, v13, :cond_fa

    add-int v13, p7, v1

    add-int/lit8 v13, v13, -0x1

    aget v13, p6, v13

    add-int v14, p7, v1

    add-int/lit8 v14, v14, 0x1

    aget v14, p6, v14

    if-ge v13, v14, :cond_fa

    :cond_d8
    add-int v13, p7, v1

    add-int/lit8 v13, v13, -0x1

    aget v11, p6, v13

    const/4 v10, 0x0

    :goto_df
    sub-int v12, v11, v1

    :goto_e1
    if-lez v11, :cond_104

    if-lez v12, :cond_104

    add-int v13, p1, v11

    add-int/lit8 v13, v13, -0x1

    add-int v14, p3, v12

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v13

    if-eqz v13, :cond_104

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_e1

    :cond_fa
    add-int v13, p7, v1

    add-int/lit8 v13, v13, 0x1

    aget v13, p6, v13

    add-int/lit8 v11, v13, -0x1

    const/4 v10, 0x1

    goto :goto_df

    :cond_104
    add-int v13, p7, v1

    aput v11, p6, v13

    if-nez v2, :cond_13e

    add-int v13, v6, v5

    neg-int v14, v3

    if-lt v13, v14, :cond_13e

    add-int v13, v6, v5

    if-gt v13, v3, :cond_13e

    add-int v13, p7, v1

    aget v13, p5, v13

    add-int v14, p7, v1

    aget v14, p6, v14

    if-lt v13, v14, :cond_13e

    new-instance v9, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v9}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    add-int v13, p7, v1

    aget v13, p6, v13

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v13, v1

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v13, p7, v1

    aget v13, p5, v13

    add-int v14, p7, v1

    aget v14, p6, v14

    sub-int/2addr v13, v14

    iput v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    iput-boolean v10, v9, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    const/4 v13, 0x1

    iput-boolean v13, v9, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    return-object v9

    :cond_13e
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_be

    :cond_142
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3b

    :cond_146
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
.end method
