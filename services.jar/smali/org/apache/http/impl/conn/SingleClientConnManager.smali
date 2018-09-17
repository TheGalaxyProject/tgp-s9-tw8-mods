.class public Lorg/apache/http/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;,
        Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected final alwaysShutDown:Z

.field protected final connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected volatile connectionExpiresTime:J

.field protected volatile isShutDown:Z

.field protected volatile lastReleaseTime:J

.field private final log:Lorg/apache/commons/logging/Log;

.field protected volatile managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

.field protected final schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field protected volatile uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/apache/http/impl/conn/SchemeRegistryFactory;->createDefault()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v0, "Scheme registry"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/SingleClientConnManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    iput-boolean v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    iput-boolean v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method protected final assertStillUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    if-eqz v1, :cond_c

    :goto_5
    const-string/jumbo v1, "Manager is shut down"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public closeExpiredConnections()V
    .registers 7

    iget-wide v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_15

    const/4 v2, 0x1

    :goto_b
    if-nez v2, :cond_14

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    :cond_14
    return-void

    :cond_15
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .registers 15

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    const-string/jumbo v6, "Time unit"

    invoke-static {p3, v6}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    monitor-enter p0

    :try_start_c
    iget-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v6, :cond_12

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    iget-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v6, v6, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sub-long v2, v6, v8

    iget-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_3f

    cmp-long v6, v6, v2

    if-lez v6, :cond_2d

    const/4 v5, 0x1

    :cond_2d
    if-nez v5, :cond_10

    :try_start_2f
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v5}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_35
    .catchall {:try_start_2f .. :try_end_34} :catchall_3f

    goto :goto_10

    :catch_35
    move-exception v4

    :try_start_36
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v6, "Problem closing idle connection."

    invoke-interface {v5, v6, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_3f
    move-exception v1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .registers 3

    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->shutdown()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;
    .registers 14

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v8, "Route"

    invoke-static {p1, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    iget-object v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-nez v8, :cond_41

    :goto_13
    move-object v0, p0

    monitor-enter p0

    :try_start_15
    iget-object v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v8, :cond_5b

    move v8, v6

    :goto_1a
    const-string/jumbo v9, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-static {v8, v9}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    iget-object v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v8, v8, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v8}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v8

    if-nez v8, :cond_5d

    const/4 v3, 0x1

    :goto_30
    if-nez v4, :cond_71

    :goto_32
    if-nez v3, :cond_85

    :goto_34
    new-instance v6, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v7, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v6, p0, v7, p1}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lorg/apache/http/conn/routing/HttpRoute;)V

    iput-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_82

    return-object v6

    :cond_41
    iget-object v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Get connection for route "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_13

    :cond_5b
    move v8, v7

    goto :goto_1a

    :cond_5d
    :try_start_5d
    iget-object v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v5, v8, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    if-nez v5, :cond_65

    :cond_63
    move v4, v7

    :goto_64
    goto :goto_30

    :cond_65
    invoke-virtual {v5}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_82

    move-result v8

    if-eqz v8, :cond_63

    move v4, v6

    goto :goto_64

    :cond_71
    const/4 v3, 0x1

    :try_start_72
    iget-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_77} :catch_78
    .catchall {:try_start_72 .. :try_end_77} :catchall_82

    goto :goto_32

    :catch_78
    move-exception v2

    :try_start_79
    iget-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v7, "Problem shutting down connection."

    invoke-interface {v6, v7, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_32

    :catchall_82
    move-exception v1

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_82

    throw v1

    :cond_85
    :try_start_85
    new-instance v6, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v6, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_82

    goto :goto_34
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 25

    move-object/from16 v0, p1

    instance-of v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    const-string/jumbo v16, "Connection class mismatch, connection not obtained from this manager"

    invoke-static/range {v15 .. v16}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v15

    if-nez v15, :cond_6d

    :goto_17
    move-object/from16 v14, p1

    check-cast v14, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    move-object v9, v14

    monitor-enter v14

    :try_start_1d
    iget-object v15, v14, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-eqz v15, :cond_8d

    invoke-virtual {v14}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    move-object/from16 v0, p0

    if-eq v13, v0, :cond_8f

    const/4 v15, 0x0

    :goto_2a
    const-string/jumbo v16, "Connection not obtained from this manager"

    invoke-static/range {v15 .. v16}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_e9

    :try_start_30
    invoke-virtual {v14}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->isOpen()Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_a5
    .catchall {:try_start_30 .. :try_end_33} :catchall_ff

    move-result v15

    if-nez v15, :cond_91

    :goto_36
    :try_start_36
    invoke-virtual {v14}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    move-object/from16 v10, p0

    monitor-enter p0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_e9

    const/4 v15, 0x0

    :try_start_3d
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const-wide/16 v16, 0x0

    cmp-long v15, p2, v16

    if-gtz v15, :cond_136

    const/4 v15, 0x1

    :goto_52
    if-nez v15, :cond_139

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    :goto_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_3d .. :try_end_6b} :catchall_146

    :goto_6b
    :try_start_6b
    monitor-exit v9
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_e9

    return-void

    :cond_6d
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Releasing connection "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_17

    :cond_8d
    :try_start_8d
    monitor-exit v9
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_e9

    return-void

    :cond_8f
    const/4 v15, 0x1

    goto :goto_2a

    :cond_91
    :try_start_91
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    if-eqz v15, :cond_ec

    :cond_97
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v15

    if-nez v15, :cond_f4

    :goto_a1
    invoke-virtual {v14}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->shutdown()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a4} :catch_a5
    .catchall {:try_start_91 .. :try_end_a4} :catchall_ff

    goto :goto_36

    :catch_a5
    move-exception v12

    :try_start_a6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_ff

    move-result v15

    if-nez v15, :cond_149

    :goto_b0
    :try_start_b0
    invoke-virtual {v14}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    move-object/from16 v10, p0

    monitor-enter p0
    :try_end_b6
    .catchall {:try_start_b0 .. :try_end_b6} :catchall_e9

    const/4 v15, 0x0

    :try_start_b7
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const-wide/16 v16, 0x0

    cmp-long v15, p2, v16

    if-gtz v15, :cond_157

    const/4 v15, 0x1

    :goto_cc
    if-nez v15, :cond_15a

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    :goto_e4
    monitor-exit p0

    goto :goto_6b

    :catchall_e6
    move-exception v4

    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_b7 .. :try_end_e8} :catchall_e6

    :try_start_e8
    throw v4

    :catchall_e9
    move-exception v8

    monitor-exit v9
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_e9

    throw v8

    :cond_ec
    :try_start_ec
    invoke-virtual {v14}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->isMarkedReusable()Z

    move-result v15

    if-eqz v15, :cond_97

    goto/16 :goto_36

    :cond_f4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v16, "Released connection open but not reusable."

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_fe} :catch_a5
    .catchall {:try_start_ec .. :try_end_fe} :catchall_ff

    goto :goto_a1

    :catchall_ff
    move-exception v5

    :try_start_100
    invoke-virtual {v14}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    move-object/from16 v6, p0

    monitor-enter p0
    :try_end_106
    .catchall {:try_start_100 .. :try_end_106} :catchall_e9

    const/4 v15, 0x0

    :try_start_107
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const-wide/16 v16, 0x0

    cmp-long v15, p2, v16

    if-gtz v15, :cond_167

    const/4 v15, 0x1

    :goto_11c
    if-nez v15, :cond_169

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    :goto_134
    monitor-exit p0
    :try_end_135
    .catchall {:try_start_107 .. :try_end_135} :catchall_175

    :try_start_135
    throw v5
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_e9

    :cond_136
    const/4 v15, 0x0

    goto/16 :goto_52

    :cond_139
    const-wide v16, 0x7fffffffffffffffL

    :try_start_13e
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto/16 :goto_6a

    :catchall_146
    move-exception v11

    monitor-exit p0
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_146

    :try_start_148
    throw v11
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_e9

    :cond_149
    :try_start_149
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v16, "Exception shutting down released connection."

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_155
    .catchall {:try_start_149 .. :try_end_155} :catchall_ff

    goto/16 :goto_b0

    :cond_157
    const/4 v15, 0x0

    goto/16 :goto_cc

    :cond_15a
    const-wide v16, 0x7fffffffffffffffL

    :try_start_15f
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J
    :try_end_165
    .catchall {:try_start_15f .. :try_end_165} :catchall_e6

    goto/16 :goto_e4

    :cond_167
    const/4 v15, 0x0

    goto :goto_11c

    :cond_169
    const-wide v16, 0x7fffffffffffffffL

    :try_start_16e
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_134

    :catchall_175
    move-exception v7

    monitor-exit p0
    :try_end_177
    .catchall {:try_start_16e .. :try_end_177} :catchall_175

    :try_start_177
    throw v7
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_e9
.end method

.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .registers 4

    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager$1;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected revokeConnection()V
    .registers 7

    iget-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    move-object v0, p0

    monitor-enter p0

    :try_start_9
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v4}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_11
    .catchall {:try_start_9 .. :try_end_e} :catchall_1b

    :goto_e
    :try_start_e
    monitor-exit p0

    return-void

    :cond_10
    return-void

    :catch_11
    move-exception v3

    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v5, "Problem while shutting down connection."

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public shutdown()V
    .registers 7

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    move-object v0, p0

    monitor-enter p0

    :try_start_5
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_7} :catch_17
    .catchall {:try_start_5 .. :try_end_7} :catchall_2a

    if-nez v4, :cond_11

    :goto_9
    const/4 v4, 0x0

    :try_start_a
    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    :goto_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_27

    return-void

    :cond_11
    :try_start_11
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v4}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_2a

    goto :goto_9

    :catch_17
    move-exception v3

    :try_start_18
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v5, "Problem while shutting down manager."

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2a

    const/4 v4, 0x0

    :try_start_21
    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    goto :goto_f

    :catchall_27
    move-exception v2

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw v2

    :catchall_2a
    move-exception v1

    const/4 v4, 0x0

    :try_start_2c
    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    throw v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_27
.end method
