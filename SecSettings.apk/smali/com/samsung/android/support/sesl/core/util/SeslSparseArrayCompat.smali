.class public Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;
.super Ljava/lang/Object;
.source "SeslSparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mGarbage:Z

    if-eqz p1, :cond_17

    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->idealIntArraySize(I)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    :goto_14
    iput v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    return-void

    :cond_17
    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_14
.end method

.method private gc()V
    .registers 8

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v2, :cond_10

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mGarbage:Z

    iput v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    return-void

    :cond_10
    aget-object v4, v5, v0

    sget-object v6, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v4, v6, :cond_19

    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    if-ne v0, v3, :cond_1e

    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_1e
    aget v6, v1, v0

    aput v6, v1, v3

    aput-object v4, v5, v3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    goto :goto_1b
.end method


# virtual methods
.method public clear()V
    .registers 6

    const/4 v4, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v1, :cond_d

    iput v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mGarbage:Z

    return-void

    :cond_d
    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public clone()Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<TE;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    move-object v1, v0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1d} :catch_1e

    :goto_1d
    return-object v1

    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->clone()Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I

    move-result v0

    if-gez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mGarbage:Z

    goto :goto_a
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I

    move-result v0

    if-gez v0, :cond_b

    :cond_a
    return-object p2

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public keyAt(I)I
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mGarbage:Z

    if-nez v0, :cond_9

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    aget v0, v0, p1

    return v0

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->gc()V

    goto :goto_4
.end method

.method public put(ILjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    invoke-static {v4, v5, p1}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I

    move-result v0

    if-gez v0, :cond_30

    xor-int/lit8 v0, v0, -0x1

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    if-lt v0, v4, :cond_35

    :cond_11
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mGarbage:Z

    if-nez v4, :cond_46

    :cond_15
    :goto_15
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    array-length v5, v5

    if-ge v4, v5, :cond_5b

    :goto_1c
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    sub-int/2addr v4, v0

    if-nez v4, :cond_7c

    :goto_21
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    aput p1, v4, v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    :goto_2f
    return-void

    :cond_30
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_2f

    :cond_35
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_11

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    aput p1, v4, v0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    return-void

    :cond_46
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_15

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->gc()V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    invoke-static {v4, v5, p1}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    goto :goto_15

    :cond_5b
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_1c

    :cond_7c
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21
.end method

.method public remove(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->delete(I)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mGarbage:Z

    if-nez v0, :cond_7

    :goto_4
    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    return v0

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->gc()V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v4

    if-lez v4, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_15
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mSize:I

    if-lt v1, v4, :cond_27

    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_23
    const-string/jumbo v4, "{}"

    return-object v4

    :cond_27
    if-gtz v1, :cond_44

    :goto_29
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_4b

    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_44
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_4b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_41
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mGarbage:Z

    if-nez v0, :cond_9

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->gc()V

    goto :goto_4
.end method
