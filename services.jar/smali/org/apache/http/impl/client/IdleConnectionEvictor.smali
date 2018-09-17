.class public final Lorg/apache/http/impl/client/IdleConnectionEvictor;
.super Ljava/lang/Object;
.source "IdleConnectionEvictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/IdleConnectionEvictor$DefaultThreadFactory;
    }
.end annotation


# instance fields
.field private final connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private volatile exception:Ljava/lang/Exception;

.field private final maxIdleTimeMs:J

.field private final sleepTimeMs:J

.field private final thread:Ljava/lang/Thread;

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;)V
    .registers 15

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_17

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_19

    move-wide v3, p2

    :goto_b
    if-nez p4, :cond_1c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_f
    move-object v0, p0

    move-object v1, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/client/IdleConnectionEvictor;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_8

    :cond_19
    const-wide/16 v3, 0x5

    goto :goto_b

    :cond_1c
    move-object v5, p4

    goto :goto_f
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .registers 17

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/client/IdleConnectionEvictor;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Connection manager"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/HttpClientConnectionManager;

    iput-object v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-nez p2, :cond_15

    new-instance p2, Lorg/apache/http/impl/client/IdleConnectionEvictor$DefaultThreadFactory;

    invoke-direct {p2}, Lorg/apache/http/impl/client/IdleConnectionEvictor$DefaultThreadFactory;-><init>()V

    :cond_15
    iput-object p2, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-nez p5, :cond_2d

    :goto_19
    iput-wide p3, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->sleepTimeMs:J

    if-nez p8, :cond_32

    :goto_1d
    iput-wide p6, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->maxIdleTimeMs:J

    iget-object v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/http/impl/client/IdleConnectionEvictor$1;-><init>(Lorg/apache/http/impl/client/IdleConnectionEvictor;Lorg/apache/http/conn/HttpClientConnectionManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    return-void

    :cond_2d
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    goto :goto_19

    :cond_32
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p6

    goto :goto_1d
.end method

.method static synthetic access$000(Lorg/apache/http/impl/client/IdleConnectionEvictor;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->sleepTimeMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/http/impl/client/IdleConnectionEvictor;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->maxIdleTimeMs:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/apache/http/impl/client/IdleConnectionEvictor;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2

    iput-object p1, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->exception:Ljava/lang/Exception;

    return-object p1
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    if-nez p3, :cond_6

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_6
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
