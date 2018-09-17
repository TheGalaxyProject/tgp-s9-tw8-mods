.class public Lcom/android/setupwizardlib/items/ItemGroup;
.super Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.source "ItemGroup.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# instance fields
.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/setupwizardlib/items/ItemHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mDirty:Z

.field private mHierarchyStart:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    iput v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    iput v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    return-void
.end method

.method private static binarySearch(Landroid/util/SparseIntArray;I)I
    .registers 8

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/4 v1, 0x0

    add-int/lit8 v0, v4, -0x1

    :goto_7
    if-gt v1, v0, :cond_20

    add-int v5, v1, v0

    ushr-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ge v3, p1, :cond_16

    add-int/lit8 v1, v2, 0x1

    goto :goto_7

    :cond_16
    if-le v3, p1, :cond_1b

    add-int/lit8 v0, v2, -0x1

    goto :goto_7

    :cond_1b
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    return v5

    :cond_20
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    return v5
.end method

.method private getChildPosition(I)I
    .registers 7

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    if-eq p1, v4, :cond_22

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v2, p1

    :goto_e
    if-gez v1, :cond_1b

    if-ge v2, v0, :cond_1b

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    if-gez v1, :cond_21

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->getCount()I

    move-result v1

    :cond_21
    return v1

    :cond_22
    return v4
.end method

.method private getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I
    .registers 3

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(I)I

    move-result v0

    return v0
.end method

.method private getItemIndex(I)I
    .registers 6

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    if-ltz p1, :cond_9

    iget v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    if-lt p1, v1, :cond_30

    :cond_9
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-static {v1, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->binarySearch(Landroid/util/SparseIntArray;I)I

    move-result v0

    if-gez v0, :cond_41

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot have item start index < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    return v0
.end method

.method private static identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    const/4 v2, -0x1

    return v2
.end method

.method private updateDataIfNeeded()V
    .registers 6

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    if-eqz v2, :cond_38

    iput v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v2

    if-lez v2, :cond_2a

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2a
    iget v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_36
    iput-boolean v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    :cond_38
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .registers 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    invoke-interface {p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v0

    if-lez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeInserted(II)V

    :cond_18
    return-void
.end method

.method public getCount()I
    .registers 2

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    iget v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    return v0
.end method

.method public getItemAt(I)Lcom/android/setupwizardlib/items/IItem;
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getItemIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemHierarchy;

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sub-int v2, p1, v3

    invoke-interface {v0, v2}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v3

    return-object v3
.end method

.method public onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v0

    if-ltz v0, :cond_c

    add-int v1, v0, p2

    invoke-virtual {p0, v1, p3}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeChanged(II)V

    :goto_b
    return-void

    :cond_c
    const-string/jumbo v1, "ItemGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected child change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .registers 8

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getChildPosition(Lcom/android/setupwizardlib/items/ItemHierarchy;)I

    move-result v0

    if-ltz v0, :cond_f

    add-int v1, v0, p2

    invoke-virtual {p0, v1, p3}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyItemRangeInserted(II)V

    :goto_e
    return-void

    :cond_f
    const-string/jumbo v1, "ItemGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected child insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method
