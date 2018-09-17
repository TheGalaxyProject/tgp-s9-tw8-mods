.class public final Lcom/samsung/android/support/sesl/core/util/SeslArraySet;
.super Ljava/lang/Object;
.source "SeslArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


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
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field static sBaseCache:[Ljava/lang/Object;

.field static sBaseCacheSize:I

.field static sTwiceBaseCache:[Ljava/lang/Object;

.field static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->INT:[I

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mIdentityHashCode:Z

    if-eqz p1, :cond_e

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->allocArrays(I)V

    :goto_b
    iput v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    return-void

    :cond_e
    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->INT:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_b
.end method

.method private allocArrays(I)V
    .registers 8

    const/16 v4, 0x8

    if-eq p1, v4, :cond_10

    const/4 v4, 0x4

    if-eq p1, v4, :cond_44

    :goto_7
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    new-array v4, p1, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    return-void

    :cond_10
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    monitor-enter v4

    :try_start_15
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-nez v4, :cond_1e

    monitor-exit v0

    goto :goto_7

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v1

    :cond_1e
    :try_start_1e
    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_1b

    return-void

    :cond_44
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    monitor-enter v4

    :try_start_49
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

    if-nez v4, :cond_52

    monitor-exit v0

    goto :goto_7

    :catchall_4f
    move-exception v2

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_4f

    throw v2

    :cond_52
    :try_start_52
    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_52 .. :try_end_77} :catchall_4f

    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 11

    const/16 v7, 0xa

    const/4 v6, 0x2

    array-length v4, p0

    const/16 v5, 0x8

    if-eq v4, v5, :cond_d

    array-length v4, p0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_36

    :goto_c
    return-void

    :cond_d
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    monitor-enter v4

    :try_start_12
    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

    if-lt v4, v7, :cond_1b

    :goto_16
    monitor-exit v0

    goto :goto_c

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :try_start_1b
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const/4 v4, 0x1

    aput-object p0, p1, v4

    add-int/lit8 v3, p2, -0x1

    :goto_25
    if-ge v3, v6, :cond_30

    sput-object p1, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

    goto :goto_16

    :cond_30
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_18

    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    :cond_36
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    monitor-enter v4

    :try_start_3b
    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

    if-lt v4, v7, :cond_44

    :goto_3f
    monitor-exit v0

    goto :goto_c

    :catchall_41
    move-exception v2

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_41

    throw v2

    :cond_44
    :try_start_44
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const/4 v4, 0x1

    aput-object p0, p1, v4

    add-int/lit8 v3, p2, -0x1

    :goto_4e
    if-ge v3, v6, :cond_59

    sput-object p1, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

    goto :goto_3f

    :cond_59
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_41

    add-int/lit8 v3, v3, -0x1

    goto :goto_4e
.end method

.method private getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    return-object v0

    :cond_7
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslArraySet;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    goto :goto_4
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 8

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-eqz v0, :cond_21

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    invoke-static {v4, v0, p2}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I

    move-result v3

    if-ltz v3, :cond_23

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    add-int/lit8 v1, v3, 0x1

    :goto_18
    if-lt v1, v0, :cond_25

    :cond_1a
    add-int/lit8 v2, v3, -0x1

    :goto_1c
    if-gez v2, :cond_39

    :cond_1e
    xor-int/lit8 v4, v1, -0x1

    return v4

    :cond_21
    const/4 v4, -0x1

    return v4

    :cond_23
    return v3

    :cond_24
    return v3

    :cond_25
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_1a

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_38
    return v1

    :cond_39
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_1e

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    :cond_4c
    return v2
.end method

.method private indexOfNull()I
    .registers 7

    const/4 v5, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-eqz v0, :cond_1e

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    invoke-static {v4, v0, v5}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I

    move-result v3

    if-ltz v3, :cond_20

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_21

    add-int/lit8 v1, v3, 0x1

    :goto_15
    if-lt v1, v0, :cond_22

    :cond_17
    add-int/lit8 v2, v3, -0x1

    :goto_19
    if-gez v2, :cond_32

    :cond_1b
    xor-int/lit8 v4, v1, -0x1

    return v4

    :cond_1e
    const/4 v4, -0x1

    return v4

    :cond_20
    return v3

    :cond_21
    return v3

    :cond_22
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-eqz v4, :cond_31

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_31
    return v1

    :cond_32
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_1b

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eqz v4, :cond_41

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_41
    return v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v2, 0x4

    const/4 v8, 0x0

    if-eqz p1, :cond_31

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mIdentityHashCode:Z

    if-nez v6, :cond_37

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_e
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    :goto_12
    if-gez v1, :cond_3c

    xor-int/lit8 v1, v1, -0x1

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v7, v7

    if-ge v6, v7, :cond_3d

    :goto_1d
    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt v1, v5, :cond_6f

    :goto_21
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aput v0, v5, v1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    const/4 v5, 0x1

    return v5

    :cond_31
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOfNull()I

    move-result v1

    goto :goto_12

    :cond_37
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_e

    :cond_3c
    return v8

    :cond_3d
    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-ge v6, v5, :cond_57

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-ge v6, v2, :cond_60

    :goto_45
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->allocArrays(I)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v5, v5

    if-gtz v5, :cond_62

    :goto_51
    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v4, v3, v5}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_1d

    :cond_57
    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    shr-int/lit8 v6, v6, 0x1

    add-int v2, v5, v6

    goto :goto_45

    :cond_60
    move v2, v5

    goto :goto_45

    :cond_62
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v6, v4

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    array-length v6, v3

    invoke-static {v3, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_51

    :cond_6f
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    return v1

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_f
.end method

.method public clear()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->INT:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iput v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    goto :goto_5
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    return v1

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2
.end method

.method public ensureCapacity(I)V
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v2, v2

    if-lt v2, p1, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->allocArrays(I)V

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-gtz v2, :cond_18

    :goto_12
    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_6

    :cond_18
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eq p0, p1, :cond_9

    instance-of v5, p1, Ljava/util/Set;

    if-nez v5, :cond_a

    return v7

    :cond_9
    return v8

    :cond_a
    move-object v4, p1

    check-cast v4, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v5, v6, :cond_1d

    const/4 v0, 0x0

    :goto_18
    :try_start_18
    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt v0, v5, :cond_1e

    return v8

    :cond_1d
    return v7

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_25} :catch_2c
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_25} :catch_2e

    move-result v5

    if-eqz v5, :cond_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2b
    return v7

    :catch_2c
    move-exception v2

    return v7

    :catch_2e
    move-exception v1

    return v7
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    :goto_6
    if-lt v1, v3, :cond_9

    return v2

    :cond_9
    aget v4, v0, v1

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    if-eqz p1, :cond_f

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mIdentityHashCode:Z

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOfNull()I

    move-result v0

    goto :goto_e

    :cond_14
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    return v1

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_5
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v4, p1

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_23

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v4, v4

    if-gt v4, v0, :cond_37

    :cond_11
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt p1, v4, :cond_80

    :goto_1b
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    :cond_22
    :goto_22
    return-object v3

    :cond_23
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->INT:[I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iput v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    goto :goto_22

    :cond_37
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_11

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-gt v4, v0, :cond_6c

    :goto_44
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->allocArrays(I)V

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-gtz p1, :cond_75

    :goto_53
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-ge p1, v4, :cond_22

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v1, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_22

    :cond_6c
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    goto :goto_44

    :cond_75
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_53

    :cond_80
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1b
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    add-int/lit8 v0, v2, -0x1

    :goto_5
    if-gez v0, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_15
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_12
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt v1, v2, :cond_13

    :goto_6
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-gt v1, v2, :cond_28

    :goto_12
    return-object p1

    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    goto :goto_6

    :cond_28
    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    mul-int/lit8 v3, v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_15
    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt v1, v3, :cond_27

    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_23
    const-string/jumbo v3, "{}"

    return-object v3

    :cond_27
    if-gtz v1, :cond_38

    :goto_29
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_3f

    const-string/jumbo v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_38
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_35
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
