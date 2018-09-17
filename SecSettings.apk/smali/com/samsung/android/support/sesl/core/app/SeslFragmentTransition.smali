.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;
.super Ljava/lang/Object;
.source "SeslFragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v4, v0, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    aput v3, v0, v4

    aput v6, v0, v5

    aput v5, v0, v6

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x9

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x9

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->INVERSE_OPS:[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->callSharedElementStartEnd(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->captureInSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getInEpicenterView(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_6
    if-gez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :goto_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1c
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method private static addToFirstInLastOut(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v2, :cond_24

    iget v8, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    if-eqz v8, :cond_25

    if-nez p3, :cond_26

    iget v7, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    :goto_c
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    packed-switch v7, :pswitch_data_fc

    :goto_13
    :pswitch_13
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    if-nez v11, :cond_9e

    :goto_1d
    if-eqz p4, :cond_ae

    :cond_1f
    :goto_1f
    if-nez v10, :cond_d6

    :goto_21
    if-eqz p4, :cond_ee

    :cond_23
    :goto_23
    return-void

    :cond_24
    return-void

    :cond_25
    return-void

    :cond_26
    sget-object v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->INVERSE_OPS:[I

    iget v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    aget v7, v3, v4

    goto :goto_c

    :pswitch_2d
    if-nez p4, :cond_33

    iget-boolean v11, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    :goto_31
    const/4 v12, 0x1

    goto :goto_13

    :cond_33
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    if-nez v3, :cond_39

    :cond_37
    const/4 v11, 0x0

    :goto_38
    goto :goto_31

    :cond_39
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v3, :cond_37

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v3, :cond_37

    const/4 v11, 0x1

    goto :goto_38

    :pswitch_43
    if-nez p4, :cond_4c

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v3, :cond_4f

    :cond_49
    const/4 v11, 0x0

    :goto_4a
    const/4 v12, 0x1

    goto :goto_13

    :cond_4c
    iget-boolean v11, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIsNewlyAdded:Z

    goto :goto_4a

    :cond_4f
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v3, :cond_49

    const/4 v11, 0x1

    goto :goto_4a

    :pswitch_55
    if-nez p4, :cond_5e

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-nez v3, :cond_6e

    :cond_5b
    const/4 v10, 0x0

    :goto_5c
    const/4 v13, 0x1

    goto :goto_13

    :cond_5e
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    if-nez v3, :cond_64

    :cond_62
    const/4 v10, 0x0

    :goto_63
    goto :goto_5c

    :cond_64
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v3, :cond_62

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v3, :cond_62

    const/4 v10, 0x1

    goto :goto_63

    :cond_6e
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v3, :cond_5b

    const/4 v10, 0x1

    goto :goto_5c

    :pswitch_74
    if-nez p4, :cond_7d

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-nez v3, :cond_98

    :cond_7a
    const/4 v10, 0x0

    :goto_7b
    const/4 v13, 0x1

    goto :goto_13

    :cond_7d
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v3, :cond_83

    :cond_81
    const/4 v10, 0x0

    :goto_82
    goto :goto_7b

    :cond_83
    iget-object v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_81

    iget-object v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_81

    iget v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_81

    const/4 v10, 0x1

    goto :goto_82

    :cond_98
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v3, :cond_7a

    const/4 v10, 0x1

    goto :goto_7b

    :cond_9e
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->ensureContainer(Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    move-result-object v9

    iput-object v2, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move/from16 v0, p3

    iput-boolean v0, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    iput-object p0, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    goto/16 :goto_1d

    :cond_ae
    if-eqz v12, :cond_1f

    if-nez v9, :cond_ce

    :cond_b2
    :goto_b2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1f

    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1f

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_1f

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeActive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    goto/16 :goto_1f

    :cond_ce
    iget-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-ne v3, v2, :cond_b2

    const/4 v3, 0x0

    iput-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto :goto_b2

    :cond_d6
    if-nez v9, :cond_e8

    :cond_d8
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->ensureContainer(Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    move-result-object v9

    iput-object v2, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move/from16 v0, p3

    iput-boolean v0, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    iput-object p0, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    goto/16 :goto_21

    :cond_e8
    iget-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v3, :cond_d8

    goto/16 :goto_21

    :cond_ee
    if-eqz v13, :cond_23

    if-eqz v9, :cond_23

    iget-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-ne v3, v2, :cond_23

    const/4 v3, 0x0

    iput-object v3, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto/16 :goto_23

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_43
        :pswitch_13
        :pswitch_74
        :pswitch_55
        :pswitch_2d
        :pswitch_74
        :pswitch_43
    .end packed-switch
.end method

.method public static calculateFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-lt v2, v0, :cond_a

    return-void

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v3, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->addToFirstInLastOut(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    add-int/lit8 v6, p4, -0x1

    :goto_7
    if-ge v6, p3, :cond_a

    return-object v2

    :cond_a
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-virtual {v5, p0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->interactsWith(I)Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v11, :cond_27

    :cond_24
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_27
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v1, :cond_50

    iget-object v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v10, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_33
    const/4 v0, 0x0

    :goto_34
    if-ge v0, v3, :cond_24

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_55

    invoke-virtual {v2, v7, v9}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_50
    iget-object v10, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_33

    :cond_55
    invoke-virtual {v2, v7, v4}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d
.end method

.method public static calculatePopFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_12
    if-gez v2, :cond_16

    return-void

    :cond_15
    return-void

    :cond_16
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    const/4 v3, 0x1

    invoke-static {p0, v1, p1, v3, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->addToFirstInLastOut(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_12
.end method

.method private static callSharedElementStartEnd(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Z",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    :goto_8
    if-nez v3, :cond_10

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v3

    goto :goto_8

    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_20

    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v0

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-lt v1, v0, :cond_29

    if-nez p4, :cond_3a

    invoke-virtual {v3, v2, v4, v6}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_a

    :cond_29
    invoke-virtual {p3, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_3a
    invoke-virtual {v3, v2, v4, v6}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_a
.end method

.method private static captureInSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .registers 15
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v2, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    return-object v11

    :cond_11
    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    new-instance v3, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v3}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    invoke-static {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v4, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v10, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-nez v10, :cond_31

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v8

    iget-object v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :goto_29
    if-nez v7, :cond_38

    :goto_2b
    if-nez v8, :cond_3c

    invoke-static {p0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->retainValues(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V

    :cond_30
    return-object v3

    :cond_31
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v8

    iget-object v7, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    goto :goto_29

    :cond_38
    invoke-virtual {v3, v7}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_2b

    :cond_3c
    invoke-virtual {v8, v7, v3}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_45
    if-ltz v1, :cond_30

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_62

    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6c

    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, -0x1

    goto :goto_45

    :cond_62
    invoke-static {p0, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->findKeyForValue(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5f

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_6c
    invoke-static {p0, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->findKeyForValue(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5f

    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f
.end method

.method private static captureOutSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .registers 14
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ")",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    return-object v10

    :cond_b
    if-eqz p1, :cond_7

    iget-object v3, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    new-instance v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v4}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    iget-object v5, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v9, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-nez v9, :cond_34

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v6

    iget-object v2, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    :goto_27
    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->retainAll(Ljava/util/Collection;)Z

    if-nez v6, :cond_3b

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_33
    return-object v4

    :cond_34
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransitionCallback()Landroid/app/SharedElementCallback;

    move-result-object v6

    iget-object v2, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_27

    :cond_3b
    invoke-virtual {v6, v2, v4}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    :goto_44
    if-ltz v0, :cond_33

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_61

    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    :goto_5e
    add-int/lit8 v0, v0, -0x1

    goto :goto_44

    :cond_61
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :cond_65
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e
.end method

.method private static configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 7
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1e

    :goto_f
    if-nez p2, :cond_22

    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_1e
    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_f

    :cond_22
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_11
.end method

.method private static configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 29
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/Transition;"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v11, :cond_c

    :cond_a
    const/4 v5, 0x0

    return-object v5

    :cond_c
    if-eqz v12, :cond_a

    move-object/from16 v0, p3

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5a

    invoke-static {v11, v12, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v20

    :goto_1c
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->captureOutSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5d

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_35
    if-eqz p6, :cond_60

    :cond_37
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v11, v12, v13, v0, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->callSharedElementStartEnd(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    if-nez v20, :cond_66

    const/16 v16, 0x0

    :cond_41
    :goto_41
    move-object/from16 v7, v20

    new-instance v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p6

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;

    return-object v20

    :cond_5a
    const/16 v20, 0x0

    goto :goto_1c

    :cond_5d
    const/16 v20, 0x0

    goto :goto_35

    :cond_60
    if-nez p7, :cond_37

    if-nez v20, :cond_37

    const/4 v5, 0x0

    return-object v5

    :cond_66
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setSharedElementTargets(Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v17, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    move-object/from16 v2, v18

    move/from16 v3, v17

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setOutEpicenter(Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;ZLcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    if-eqz p6, :cond_41

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/graphics/Rect;)V

    goto :goto_41
.end method

.method private static configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 22
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")",
            "Landroid/transition/Transition;"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_e

    :goto_a
    if-nez v3, :cond_17

    :cond_c
    const/4 v2, 0x0

    return-object v2

    :cond_e
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_17
    if-eqz v4, :cond_c

    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v12

    :goto_27
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->captureOutSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->captureInSharedElements(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v0, v10, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/util/Collection;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v0, v6, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/util/Collection;)V

    :cond_4f
    :goto_4f
    if-eqz p6, :cond_71

    :cond_51
    const/4 v2, 0x1

    invoke-static {v3, v4, v5, v10, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->callSharedElementStartEnd(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    if-nez v12, :cond_77

    const/4 v8, 0x0

    const/4 v7, 0x0

    :cond_59
    :goto_59
    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$3;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;

    return-object v12

    :cond_62
    const/4 v12, 0x0

    goto :goto_27

    :cond_64
    const/4 v12, 0x0

    if-nez v10, :cond_6d

    :goto_67
    if-eqz v6, :cond_4f

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    goto :goto_4f

    :cond_6d
    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    goto :goto_67

    :cond_71
    if-nez p7, :cond_51

    if-nez v12, :cond_51

    const/4 v2, 0x0

    return-object v2

    :cond_77
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    invoke-static {v12, p1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setSharedElementTargets(Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    iget-boolean v9, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-object/from16 v0, p7

    invoke-static {v12, v0, v10, v9, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setOutEpicenter(Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;ZLcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {v6, v0, v1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getInEpicenterView(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_59

    move-object/from16 v0, p6

    invoke-static {v0, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/graphics/Rect;)V

    goto :goto_59
.end method

.method private static configureTransitionsOrdered(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;ILcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V
    .registers 32
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;",
            "I",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onHasView()Z

    move-result v3

    if-nez v3, :cond_64

    :goto_b
    if-eqz v2, :cond_71

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v24, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getEnterTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v8

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getExitTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v15

    if-eqz v8, :cond_72

    :cond_47
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    if-nez v14, :cond_77

    :cond_51
    const/4 v9, 0x0

    :goto_52
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->addTarget(Landroid/transition/Transition;Landroid/view/View;)V

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object/from16 v0, v17

    invoke-static {v8, v9, v15, v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v10

    if-nez v10, :cond_7e

    :goto_63
    return-void

    :cond_64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_b

    :cond_71
    return-void

    :cond_72
    if-nez v15, :cond_47

    if-nez v9, :cond_47

    return-void

    :cond_77
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_52

    :cond_7e
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    move-object/from16 v16, v2

    move-object/from16 v18, p3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    invoke-static/range {v16 .. v23}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_63
.end method

.method private static configureTransitionsReordered(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;ILcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V
    .registers 27
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;",
            "I",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onHasView()Z

    move-result v3

    if-nez v3, :cond_62

    :goto_b
    if-eqz v2, :cond_6f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v21, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getEnterTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v8

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->getExitTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v15

    if-eqz v8, :cond_70

    :cond_43
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v8, v0, v7, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureEnteringExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v3, 0x4

    invoke-static {v12, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v9, v15, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v10

    if-nez v10, :cond_75

    :goto_61
    return-void

    :cond_62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_b

    :cond_6f
    return-void

    :cond_70
    if-nez v15, :cond_43

    if-nez v9, :cond_43

    return-void

    :cond_75
    move-object/from16 v0, v20

    invoke-static {v9, v0, v14}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->replaceHide(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;)V

    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    invoke-static {v2, v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-static {v2, v6, v7, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v3, 0x0

    invoke-static {v12, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-static {v15, v6, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->swapSharedElementTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_61
.end method

.method private static ensureContainer(Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    new-instance p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private static findKeyForValue(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_9

    const/4 v2, 0x0

    return-object v2

    :cond_9
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private static getEnterTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .registers 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_9
.end method

.method private static getExitTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .registers 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_9
.end method

.method private static getInEpicenterView(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;",
            "Landroid/transition/Transition;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;->lastInTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    if-nez p2, :cond_7

    :cond_6
    return-object v4

    :cond_7
    if-eqz p0, :cond_6

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    if-nez p3, :cond_27

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :goto_20
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    return-object v2

    :cond_27
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_20
.end method

.method private static getSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .registers 5
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-object v1

    :cond_4
    if-eqz p1, :cond_3

    if-nez p2, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v1

    :goto_c
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->wrapTransitionInSet(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v1

    return-object v1

    :cond_15
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v1

    goto :goto_c
.end method

.method private static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .registers 7
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_a

    :cond_3
    :goto_3
    if-nez v0, :cond_1a

    invoke-static {p1, p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->mergeTransitionsInSequence(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v1

    :goto_9
    return-object v1

    :cond_a
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_15

    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    :goto_14
    goto :goto_3

    :cond_15
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    goto :goto_14

    :cond_1a
    invoke-static {p1, p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->mergeTransitionsTogether(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v1

    goto :goto_9
.end method

.method private static replaceHide(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;)V
    .registers 5
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz p0, :cond_2

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHiddenChanged:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setHideReplaced(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->scheduleHideFragmentView(Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$1;

    invoke-direct {v1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;

    goto :goto_2
.end method

.method private static retainValues(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_6
    if-gez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_15
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .registers 16
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;-><init>(Landroid/transition/Transition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/samsung/android/support/sesl/core/app/SeslOneShotPreDrawListener;

    return-void
.end method

.method private static setOutEpicenter(Landroid/transition/Transition;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;ZLcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V
    .registers 9
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v2, p4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-nez p3, :cond_28

    iget-object v2, p4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :goto_19
    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    if-eqz p1, :cond_5

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    goto :goto_5

    :cond_28
    iget-object v2, p4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_19
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-gez v0, :cond_c

    return-void

    :cond_b
    return-void

    :cond_c
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method static startTransitions(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    iget v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_16

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v3, p3

    :goto_b
    move/from16 v0, p4

    if-lt v3, v0, :cond_17

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_37

    :cond_15
    return-void

    :cond_16
    return-void

    :cond_17
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_31

    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->calculateFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/util/SparseArray;Z)V

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_31
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->calculatePopFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_2e

    :cond_37
    new-instance v6, Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v3, 0x0

    :goto_47
    if-ge v3, v7, :cond_15

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move/from16 v0, p4

    invoke-static {v1, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v5

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    if-nez p5, :cond_61

    invoke-static {p0, v1, v2, v6, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureTransitionsOrdered(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;ILcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V

    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_61
    invoke-static {p0, v1, v2, v6, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureTransitionsReordered(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;ILcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V

    goto :goto_5e
.end method
