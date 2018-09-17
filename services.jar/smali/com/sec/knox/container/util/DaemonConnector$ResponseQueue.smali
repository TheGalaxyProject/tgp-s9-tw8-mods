.class Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "DaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/util/DaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    iput p1, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mMaxCount:I

    return-void
.end method


# virtual methods
.method public add(ILcom/sec/knox/container/util/DaemonEvent;)V
    .registers 12

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v6

    :try_start_4
    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    iget v5, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_b5

    if-ne v5, p1, :cond_a

    move-object v1, v3

    move-object v2, v1

    :goto_1c
    if-nez v2, :cond_b7

    :goto_1e
    :try_start_1e
    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    iget v7, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v5, v7, :cond_92

    const-string/jumbo v5, "DaemonConnector.ResponseQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "more buffered than allowed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    const-string/jumbo v5, "DaemonConnector.ResponseQueue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->request:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_1e .. :try_end_8d} :catchall_8e

    goto :goto_1e

    :catchall_8e
    move-exception v5

    move-object v1, v2

    :goto_90
    monitor-exit v6

    throw v5

    :cond_92
    :try_start_92
    new-instance v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v5}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_8e

    :try_start_98
    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_9d
    iget v5, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    iget v5, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v5, :cond_ac

    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_98 .. :try_end_ac} :catchall_b5

    :cond_ac
    monitor-exit v6

    :try_start_ad
    iget-object v5, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b2
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_b2} :catch_b3

    :goto_b2
    return-void

    :catch_b3
    move-exception v0

    goto :goto_b2

    :catchall_b5
    move-exception v5

    goto :goto_90

    :cond_b7
    move-object v1, v2

    goto :goto_9d

    :cond_b9
    move-object v2, v1

    goto/16 :goto_1c
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v2, "Pending requests:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_9
    iget-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Cmd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->request:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_42

    goto :goto_f

    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_45
    monitor-exit v3

    return-void
.end method

.method public remove(IILjava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;
    .registers 16

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v9

    :try_start_4
    iget-object v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    iget v8, v5, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_52

    if-ne v8, p1, :cond_a

    move-object v3, v5

    move-object v4, v3

    :goto_1c
    if-nez v4, :cond_5a

    :try_start_1e
    new-instance v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v3, p1, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_57

    :try_start_23
    iget-object v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_28
    iget v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    iget v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v8, :cond_37

    iget-object v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_52

    :cond_37
    monitor-exit v9

    const/4 v7, 0x0

    :try_start_39
    iget-object v8, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    int-to-long v10, p2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v10, v11, v9}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/sec/knox/container/util/DaemonEvent;

    move-object v7, v0
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_46} :catch_55

    :goto_46
    if-nez v7, :cond_51

    const-string/jumbo v8, "DaemonConnector.ResponseQueue"

    const-string/jumbo v9, "Timeout waiting for response"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-object v7

    :catchall_52
    move-exception v8

    :goto_53
    monitor-exit v9

    throw v8

    :catch_55
    move-exception v2

    goto :goto_46

    :catchall_57
    move-exception v8

    move-object v3, v4

    goto :goto_53

    :cond_5a
    move-object v3, v4

    goto :goto_28

    :cond_5c
    move-object v4, v3

    goto :goto_1c
.end method
