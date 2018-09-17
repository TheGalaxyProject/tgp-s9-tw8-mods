.class public Lcom/sec/knox/container/util/DaemonConnector;
.super Ljava/lang/Object;
.source "DaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/util/DaemonConnector$Command;,
        Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;,
        Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;,
        Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x15f90

.field private static final LOGD:Z = true

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    const/16 v0, 0x1000

    iput v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->BUFFER_SIZE:I

    iput-object p1, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    iput-object p2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-direct {v0, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p4, :cond_26

    :goto_23
    iput-object p4, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    return-void

    :cond_26
    const-string/jumbo p4, "ECS_DaemonConnector"

    goto :goto_23
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8

    const/16 v5, 0x22

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_26

    const/4 v1, 0x1

    :goto_b
    if-eqz v1, :cond_10

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v3, :cond_37

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_28

    const-string/jumbo v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_26
    const/4 v1, 0x0

    goto :goto_b

    :cond_28
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_33

    const-string/jumbo v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_37
    if-eqz v1, :cond_3c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3c
    return-void
.end method

.method private listenToSocket()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    const/16 v17, 0x1000

    move/from16 v0, v17

    new-array v4, v0, [B

    const/16 v16, 0x0

    :try_start_9
    new-instance v15, Landroid/net/LocalSocket;

    invoke-direct {v15}, Landroid/net/LocalSocket;-><init>()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_2b4
    .catchall {:try_start_9 .. :try_end_e} :catchall_105

    :try_start_e
    new-instance v3, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v15, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2d} :catch_e2
    .catchall {:try_start_e .. :try_end_2d} :catchall_1df

    :try_start_2d
    invoke-virtual {v15}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_df

    :try_start_37
    monitor-exit v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;->onDaemonConnected()V

    :cond_41
    :goto_41
    move/from16 v0, v16

    rsub-int v0, v0, 0x1000

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_14e

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "got "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " reading with start = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_7d} :catch_e2
    .catchall {:try_start_37 .. :try_end_7d} :catchall_1df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_24e

    if-eqz v17, :cond_c6

    :try_start_8c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "closing stream for "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_be} :catch_22a
    .catchall {:try_start_8c .. :try_end_be} :catchall_24e

    :goto_be
    const/16 v17, 0x0

    :try_start_c0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_c6
    .catchall {:try_start_c0 .. :try_end_c6} :catchall_24e

    :cond_c6
    monitor-exit v18

    if-eqz v15, :cond_cc

    :try_start_c9
    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_251

    :cond_cc
    :goto_cc
    if-eqz v4, :cond_de

    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_de
    return-void

    :catchall_df
    move-exception v17

    :try_start_e0
    monitor-exit v18

    throw v17
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e2} :catch_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_1df

    :catch_e2
    move-exception v9

    move-object v14, v15

    :goto_e4
    :try_start_e4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Communications error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    throw v9
    :try_end_105
    .catchall {:try_start_e4 .. :try_end_105} :catchall_105

    :catchall_105
    move-exception v17

    :goto_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v19, v0
    :try_end_113
    .catchall {:try_start_10d .. :try_end_113} :catchall_291

    if-eqz v19, :cond_147

    :try_start_115
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "closing stream for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_13f} :catch_271
    .catchall {:try_start_115 .. :try_end_13f} :catchall_291

    :goto_13f
    const/16 v19, 0x0

    :try_start_141
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_147
    .catchall {:try_start_141 .. :try_end_147} :catchall_291

    :cond_147
    monitor-exit v18

    if-eqz v14, :cond_14d

    :try_start_14a
    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_294

    :cond_14d
    :goto_14d
    throw v17

    :cond_14e
    add-int v5, v5, v16

    const/16 v16, 0x0

    const/4 v10, 0x0

    :goto_153
    if-ge v10, v5, :cond_1e3

    :try_start_155
    aget-byte v17, v4, v10

    if-nez v17, :cond_19e

    new-instance v12, Ljava/lang/String;

    sub-int v17, v10, v16

    const-string/jumbo v18, "UTF-8"

    invoke-static/range {v18 .. v18}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v18

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v12, v4, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string/jumbo v17, "RCV <-"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_177} :catch_e2
    .catchall {:try_start_155 .. :try_end_177} :catchall_1df

    :try_start_177
    invoke-static {v12}, Lcom/sec/knox/container/util/DaemonEvent;->parseRawEvent(Ljava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassUnsolicited()Z

    move-result v17

    if-eqz v17, :cond_1a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v19

    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_19c
    add-int/lit8 v16, v10, 0x1

    :cond_19e
    add-int/lit8 v10, v10, 0x1

    goto :goto_153

    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    move-object/from16 v17, v0

    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->getCmdNumber()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->add(ILcom/sec/knox/container/util/DaemonEvent;)V
    :try_end_1b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_177 .. :try_end_1b2} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_1b2} :catch_e2
    .catchall {:try_start_177 .. :try_end_1b2} :catchall_1df

    goto :goto_19c

    :catch_1b3
    move-exception v7

    :try_start_1b4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Problem parsing message: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    goto :goto_19c

    :catchall_1df
    move-exception v17

    move-object v14, v15

    goto/16 :goto_106

    :cond_1e3
    if-nez v16, :cond_1ff

    new-instance v12, Ljava/lang/String;

    const-string/jumbo v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v4, v0, v5, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string/jumbo v17, "RCV incomplete <-"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    :cond_1ff
    move/from16 v0, v16

    if-eq v0, v5, :cond_214

    move/from16 v0, v16

    rsub-int v13, v0, 0x1000

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v0, v4, v1, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    move/from16 v16, v13

    goto/16 :goto_41

    :cond_214
    const/16 v16, 0x0

    if-eqz v4, :cond_41

    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_1b4 .. :try_end_228} :catch_e2
    .catchall {:try_start_1b4 .. :try_end_228} :catchall_1df

    goto/16 :goto_41

    :catch_22a
    move-exception v6

    :try_start_22b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed closing output stream: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_24c
    .catchall {:try_start_22b .. :try_end_24c} :catchall_24e

    goto/16 :goto_be

    :catchall_24e
    move-exception v17

    monitor-exit v18

    throw v17

    :catch_251
    move-exception v9

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed closing socket: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_cc

    :catch_271
    move-exception v6

    :try_start_272
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed closing output stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_28f
    .catchall {:try_start_272 .. :try_end_28f} :catchall_291

    goto/16 :goto_13f

    :catchall_291
    move-exception v17

    monitor-exit v18

    throw v17

    :catch_294
    move-exception v9

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed closing socket: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto/16 :goto_14d

    :catch_2b4
    move-exception v9

    goto/16 :goto_e4
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_21

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    move v2, v3

    :goto_26
    if-ge v2, v4, :cond_59

    aget-object v0, p3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_4e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4e
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lcom/sec/knox/container/util/DaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_59
    return-void
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v1

    array-length v4, v1

    :goto_c
    if-ge v3, v4, :cond_1a

    aget-object v0, v1, v3

    invoke-virtual {v0}, Lcom/sec/knox/container/util/DaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1a
    return-object v2
.end method

.method public doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v2

    const/4 v4, 0x0

    :goto_c
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_48

    aget-object v1, v2, v4

    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v0

    if-ne v0, p2, :cond_23

    invoke-virtual {v1}, Lcom/sec/knox/container/util/DaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_23
    new-instance v6, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected list response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " instead of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_48
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v2, v6

    invoke-virtual {v3}, Lcom/sec/knox/container/util/DaemonEvent;->isClassOk()Z

    move-result v6

    if-nez v6, :cond_6d

    new-instance v6, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected final event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public execute(Lcom/sec/knox/container/util/DaemonConnector$Command;)Lcom/sec/knox/container/util/DaemonEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->-get1(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->-get0(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sec/knox/container/util/DaemonEvent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_23

    new-instance v1, Lcom/sec/knox/container/util/DaemonConnectorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public varargs execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/knox/container/util/DaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    array-length v13, v0

    if-lez v13, :cond_72

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SND -> {"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v16, 0x0

    aget-object v16, p3, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, "}"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    :cond_72
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/util/DaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v13, :cond_95

    new-instance v13, Lcom/sec/knox/container/util/DaemonConnectorException;

    const-string/jumbo v17, "missing output stream"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_92
    .catchall {:try_start_81 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v13

    monitor-exit v16

    throw v13

    :cond_95
    :try_start_95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    const-string/jumbo v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_ab} :catch_c9
    .catchall {:try_start_95 .. :try_end_ab} :catchall_92

    monitor-exit v16

    const/4 v8, 0x0

    :cond_ad
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/knox/container/util/DaemonConnector;->mResponseQueue:Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;

    move/from16 v0, p1

    invoke-virtual {v13, v12, v0, v11}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->remove(IILjava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v8

    if-nez v8, :cond_d5

    const-string/jumbo v13, "timed-out waiting for response"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    :catch_c9
    move-exception v5

    :try_start_ca
    new-instance v13, Lcom/sec/knox/container/util/DaemonConnectorException;

    const-string/jumbo v17, "problem sending command"

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v5}, Lcom/sec/knox/container/util/DaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_d5
    .catchall {:try_start_ca .. :try_end_d5} :catchall_92

    :cond_d5
    const-string/jumbo v13, "RMV <-"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassContinue()Z

    move-result v13

    if-nez v13, :cond_ad

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v16, v6, v14

    const-wide/16 v18, 0x1f4

    cmp-long v13, v16, v18

    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassClientError()Z

    move-result v13

    if-eqz v13, :cond_fe

    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonArgumentException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    :cond_fe
    invoke-virtual {v8}, Lcom/sec/knox/container/util/DaemonEvent;->isClassServerError()Z

    move-result v13

    if-eqz v13, :cond_10c

    new-instance v13, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v8}, Lcom/sec/knox/container/util/DaemonConnector$DaemonFailureException;-><init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V

    throw v13

    :cond_10c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/sec/knox/container/util/DaemonEvent;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/sec/knox/container/util/DaemonEvent;

    return-object v13
.end method

.method public executeForList(Lcom/sec/knox/container/util/DaemonConnector$Command;)[Lcom/sec/knox/container/util/DaemonEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->-get1(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/knox/container/util/DaemonConnector$Command;->-get0(Lcom/sec/knox/container/util/DaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/knox/container/util/DaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/knox/container/util/DaemonConnectorException;
        }
    .end annotation

    const v0, 0x15f90

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/knox/container/util/DaemonConnector;->execute(ILjava/lang/String;[Ljava/lang/Object;)[Lcom/sec/knox/container/util/DaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    const/4 v5, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_5
    iget-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbacks:Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/knox/container/util/DaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/knox/container/util/IDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string/jumbo v2, "Unhandled event \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->log(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return v5

    :catch_24
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error handling \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public monitor()V
    .registers 1

    return-void
.end method

.method public run()V
    .registers 5

    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonConnector;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".CallbackHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    :goto_29
    :try_start_29
    invoke-direct {p0}, Lcom/sec/knox/container/util/DaemonConnector;->listenToSocket()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_29

    :catch_2d
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in DaemonConnector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/util/DaemonConnector;->loge(Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_29
.end method
