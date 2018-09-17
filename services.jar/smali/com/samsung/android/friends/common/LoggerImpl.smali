.class public Lcom/samsung/android/friends/common/LoggerImpl;
.super Ljava/lang/Object;
.source "LoggerImpl.java"

# interfaces
.implements Lcom/samsung/android/friends/common/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/common/LoggerImpl$Node;
    }
.end annotation


# static fields
.field private static final TIME_DIFF:J = 0x5265c00L


# instance fields
.field private mLastTimeStamp:J

.field private final mMaxCount:I

.field private final mNodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/friends/common/LoggerImpl$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mLastTimeStamp:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    iput p1, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mMaxCount:I

    return-void
.end method

.method private appendHistoryNode(Lcom/samsung/android/friends/common/LoggerImpl$Node;)V
    .registers 7

    iget-object v3, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/friends/common/LoggerImpl;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    :cond_12
    :goto_12
    iput-wide v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mLastTimeStamp:J

    iget-object v2, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2b

    monitor-exit v3

    return-void

    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v4, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mMaxCount:I

    if-lt v2, v4, :cond_12

    iget-object v2, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_12

    :catchall_2b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isExpired(J)Z
    .registers 8

    iget-wide v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mLastTimeStamp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public varargs append(JLjava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mMaxCount:I

    if-eqz v0, :cond_6

    if-nez p3, :cond_7

    :cond_6
    return-void

    :cond_7
    if-eqz p4, :cond_10

    array-length v0, p4

    if-lez v0, :cond_10

    invoke-static {p3, p4}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_10
    new-instance v0, Lcom/samsung/android/friends/common/LoggerImpl$Node;

    invoke-direct {v0, p3, p1, p2}, Lcom/samsung/android/friends/common/LoggerImpl$Node;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/common/LoggerImpl;->appendHistoryNode(Lcom/samsung/android/friends/common/LoggerImpl$Node;)V

    return-void
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mMaxCount:I

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    return-void

    :cond_7
    if-eqz p2, :cond_10

    array-length v0, p2

    if-lez v0, :cond_10

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    new-instance v0, Lcom/samsung/android/friends/common/LoggerImpl$Node;

    invoke-direct {v0, p1}, Lcom/samsung/android/friends/common/LoggerImpl$Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/common/LoggerImpl;->appendHistoryNode(Lcom/samsung/android/friends/common/LoggerImpl$Node;)V

    return-void
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .registers 8

    const-string/jumbo v2, "\n---- history info.\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_11
    if-ltz v1, :cond_3a

    iget-object v2, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/friends/common/LoggerImpl$Node;

    if-eqz v0, :cond_37

    iget-wide v4, v0, Lcom/samsung/android/friends/common/LoggerImpl$Node;->timeStamp:J

    invoke-static {v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->getDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/friends/common/LoggerImpl$Node;->msg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_3a
    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/samsung/android/friends/common/LoggerImpl;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_47

    :cond_45
    monitor-exit v3

    return-void

    :catchall_47
    move-exception v2

    monitor-exit v3

    throw v2
.end method
