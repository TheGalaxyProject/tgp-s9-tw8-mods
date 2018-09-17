.class Lcom/android/server/desktopmode/Log$EvictingArrayQueue;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EvictingArrayQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCapacity:I

.field private final mElements:[Ljava/lang/Object;

.field private mFront:I

.field private final mLock:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRear:I

.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mFront:I

    iput v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mRear:I

    iput v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mSize:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    iget v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mRear:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mRear:I

    iget v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mFront:I

    iget v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mRear:I

    if-ne v0, v2, :cond_23

    iget v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mFront:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mFront:I

    :goto_1b
    iget-object v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mRear:I

    aput-object p1, v0, v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2a

    monitor-exit v1

    return-void

    :cond_23
    :try_start_23
    iget v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mSize:I
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_2a

    goto :goto_1b

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mSize:I

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mElements:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mFront:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v3, v4

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    monitor-exit v2

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method
