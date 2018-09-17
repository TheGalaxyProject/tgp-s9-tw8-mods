.class public Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
.super Ljava/lang/Object;
.source "SeslSimpleArrayMap.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    return-void
.end method

.method private allocArrays(I)V
    .registers 8

    const/16 v4, 0x8

    if-eq p1, v4, :cond_12

    const/4 v4, 0x4

    if-eq p1, v4, :cond_46

    :goto_7
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    shl-int/lit8 v4, p1, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    return-void

    :cond_12
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    monitor-enter v4

    :try_start_17
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-nez v4, :cond_20

    monitor-exit v0

    goto :goto_7

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1d

    throw v1

    :cond_20
    :try_start_20
    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_1d

    return-void

    :cond_46
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    monitor-enter v4

    :try_start_4b
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-nez v4, :cond_54

    monitor-exit v0

    goto :goto_7

    :catchall_51
    move-exception v2

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_51

    throw v2

    :cond_54
    :try_start_54
    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_54 .. :try_end_79} :catchall_51

    return-void
.end method

.method private static binarySearchHashes([III)I
    .registers 5

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
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

    if-eq v4, v5, :cond_38

    :goto_c
    return-void

    :cond_d
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    monitor-enter v4

    :try_start_12
    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

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
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const/4 v4, 0x1

    aput-object p0, p1, v4

    shl-int/lit8 v4, p2, 0x1

    add-int/lit8 v3, v4, -0x1

    :goto_27
    if-ge v3, v6, :cond_32

    sput-object p1, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

    goto :goto_16

    :cond_32
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_18

    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    :cond_38
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    monitor-enter v4

    :try_start_3d
    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    if-lt v4, v7, :cond_46

    :goto_41
    monitor-exit v0

    goto :goto_c

    :catchall_43
    move-exception v2

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_43

    throw v2

    :cond_46
    :try_start_46
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const/4 v4, 0x1

    aput-object p0, p1, v4

    shl-int/lit8 v4, p2, 0x1

    add-int/lit8 v3, v4, -0x1

    :goto_52
    if-ge v3, v6, :cond_5d

    sput-object p1, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    goto :goto_41

    :cond_5d
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_43

    add-int/lit8 v3, v3, -0x1

    goto :goto_52
.end method


# virtual methods
.method public clear()V
    .registers 6

    const/4 v4, 0x0

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-gtz v3, :cond_a

    :goto_5
    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-gtz v3, :cond_1e

    return-void

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    iput v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_5

    :cond_1e
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public ensureCapacity(I)V
    .registers 8

    const/4 v5, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v3, p1, :cond_d

    :goto_8
    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-ne v3, v2, :cond_29

    return-void

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->allocArrays(I)V

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-gtz v3, :cond_1c

    :goto_18
    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_8

    :cond_1c
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_18

    :cond_29
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eq p0, p1, :cond_d

    instance-of v8, p1, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-nez v8, :cond_e

    instance-of v8, p1, Ljava/util/Map;

    if-nez v8, :cond_48

    return v10

    :cond_d
    return v11

    :cond_e
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v8

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v9

    if-ne v8, v9, :cond_21

    const/4 v0, 0x0

    :goto_1c
    :try_start_1c
    iget v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-lt v0, v8, :cond_22

    return v11

    :cond_21
    return v10

    :cond_22
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v6, :cond_39

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_39
    if-eqz v7, :cond_3c

    :cond_3b
    return v10

    :cond_3c
    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_3f} :catch_44
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_3f} :catch_46

    move-result v8

    if-eqz v8, :cond_3b

    goto :goto_36

    :cond_43
    return v10

    :catch_44
    move-exception v2

    return v10

    :catch_46
    move-exception v1

    return v10

    :cond_48
    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v8, v9, :cond_5b

    const/4 v0, 0x0

    :goto_56
    :try_start_56
    iget v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-lt v0, v8, :cond_5c

    return v11

    :cond_5b
    return v10

    :cond_5c
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v6, :cond_73

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_73
    if-eqz v7, :cond_76

    :cond_75
    return v10

    :cond_76
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/NullPointerException; {:try_start_56 .. :try_end_79} :catch_7e
    .catch Ljava/lang/ClassCastException; {:try_start_56 .. :try_end_79} :catch_80

    move-result v8

    if-eqz v8, :cond_75

    goto :goto_70

    :cond_7d
    return v10

    :catch_7e
    move-exception v2

    return v10

    :catch_80
    move-exception v1

    return v10
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_7
.end method

.method public hashCode()I
    .registers 10

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    :goto_9
    if-lt v2, v4, :cond_c

    return v3

    :cond_c
    aget-object v6, v0, v5

    aget v8, v1, v2

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_16
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_9

    :cond_1d
    const/4 v7, 0x0

    goto :goto_16
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 9

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-eqz v0, :cond_23

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->binarySearchHashes([III)I

    move-result v3

    if-ltz v3, :cond_25

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    add-int/lit8 v1, v3, 0x1

    :goto_1a
    if-lt v1, v0, :cond_27

    :cond_1c
    add-int/lit8 v2, v3, -0x1

    :goto_1e
    if-gez v2, :cond_3d

    :cond_20
    xor-int/lit8 v4, v1, -0x1

    return v4

    :cond_23
    const/4 v4, -0x1

    return v4

    :cond_25
    return v3

    :cond_26
    return v3

    :cond_27
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_1c

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3c
    return v1

    :cond_3d
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_20

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_52
    return v2
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfNull()I

    move-result v0

    goto :goto_a
.end method

.method indexOfNull()I
    .registers 7

    const/4 v5, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-eqz v0, :cond_20

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, v5}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->binarySearchHashes([III)I

    move-result v3

    if-ltz v3, :cond_22

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_23

    add-int/lit8 v1, v3, 0x1

    :goto_17
    if-lt v1, v0, :cond_24

    :cond_19
    add-int/lit8 v2, v3, -0x1

    :goto_1b
    if-gez v2, :cond_36

    :cond_1d
    xor-int/lit8 v4, v1, -0x1

    return v4

    :cond_20
    const/4 v4, -0x1

    return v4

    :cond_22
    return v3

    :cond_23
    return v3

    :cond_24
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_35

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_35
    return v1

    :cond_36
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_1d

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_47

    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_47
    return v2
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 6

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    if-eqz p1, :cond_d

    const/4 v2, 0x1

    :goto_9
    if-lt v2, v0, :cond_1a

    :cond_b
    const/4 v3, -0x1

    return v3

    :cond_d
    const/4 v2, 0x1

    :goto_e
    if-ge v2, v0, :cond_b

    aget-object v3, v1, v2

    if-eqz v3, :cond_17

    add-int/lit8 v2, v2, 0x2

    goto :goto_e

    :cond_17
    shr-int/lit8 v3, v2, 0x1

    return v3

    :cond_1a
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_25
    shr-int/lit8 v3, v2, 0x1

    return v3
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-lez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v12, 0x0

    const/16 v7, 0x8

    const/4 v2, 0x4

    const/4 v9, 0x0

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    :goto_11
    if-gez v1, :cond_2c

    xor-int/lit8 v1, v1, -0x1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v8, v8

    if-ge v6, v8, :cond_39

    :goto_1a
    if-lt v1, v6, :cond_6b

    :goto_1c
    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-eq v6, v7, :cond_89

    :cond_20
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfNull()I

    move-result v1

    goto :goto_11

    :cond_2c
    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v1, v7, 0x1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v7, v1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v7, v1

    return-object v5

    :cond_39
    if-ge v6, v7, :cond_51

    if-ge v6, v2, :cond_56

    :goto_3d
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->allocArrays(I)V

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-ne v6, v7, :cond_58

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v7, v7

    if-gtz v7, :cond_5e

    :goto_4d
    invoke-static {v4, v3, v6}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_1a

    :cond_51
    shr-int/lit8 v7, v6, 0x1

    add-int v2, v6, v7

    goto :goto_3d

    :cond_56
    move v2, v7

    goto :goto_3d

    :cond_58
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    :cond_5e
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v8, v4

    invoke-static {v4, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v8, v3

    invoke-static {v3, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4d

    :cond_6b
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    add-int/lit8 v9, v1, 0x1

    sub-int v10, v6, v1

    invoke-static {v7, v1, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v10, v1, 0x1

    shl-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    sub-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c

    :cond_89
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v7, v7

    if-ge v1, v7, :cond_20

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aput v0, v7, v1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    aput-object p1, v7, v8

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    add-int/lit8 v8, v8, 0x1

    aput-object p2, v7, v8

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    return-object v12
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v11, 0x0

    const/16 v0, 0x8

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v4, v6, v7

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_2f

    add-int/lit8 v1, v5, -0x1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-gt v6, v0, :cond_40

    :cond_18
    if-lt p1, v1, :cond_8b

    :goto_1a
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object v11, v6, v7

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object v11, v6, v7

    :cond_28
    :goto_28
    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-ne v5, v6, :cond_a9

    iput v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    return-object v4

    :cond_2f
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v6, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_INTS:[I

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sget-object v6, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_28

    :cond_40
    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v7, v7

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_18

    if-gt v5, v0, :cond_73

    :goto_4b
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->allocArrays(I)V

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-ne v5, v6, :cond_78

    if-gtz p1, :cond_7e

    :goto_58
    if-ge p1, v1, :cond_28

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sub-int v8, v1, p1

    invoke-static {v3, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, p1, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, p1, 0x1

    sub-int v9, v1, p1

    shl-int/lit8 v9, v9, 0x1

    invoke-static {v2, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_28

    :cond_73
    shr-int/lit8 v6, v5, 0x1

    add-int v0, v5, v6

    goto :goto_4b

    :cond_78
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    :cond_7e
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    invoke-static {v3, v8, v6, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v2, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_58

    :cond_8b
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    add-int/lit8 v7, p1, 0x1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sub-int v9, v1, p1

    invoke-static {v6, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    shl-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, p1, 0x1

    sub-int v10, v1, p1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1a

    :cond_a9
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_15
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

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
    if-gtz v1, :cond_49

    :goto_29
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_50

    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_35
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_54

    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_49
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_46
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
