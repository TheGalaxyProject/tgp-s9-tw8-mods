.class final Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;
.super Ljava/lang/Object;
.source "DomainFilterDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "DomainFilterDaemonConnector"


# instance fields
.field private mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mDaemonLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    const-string/jumbo v0, "dnsproxyd"

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mSocket:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mLooper:Landroid/os/Looper;

    return-void
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

    const/4 v13, 0x0

    :try_start_1
    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_278
    .catchall {:try_start_1 .. :try_end_6} :catchall_a6

    :try_start_6
    new-instance v2, Landroid/net/LocalSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v14, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v14}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_25} :catch_87
    .catchall {:try_start_6 .. :try_end_25} :catchall_189

    :try_start_25
    invoke-virtual {v14}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_84

    :try_start_2f
    monitor-exit v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;->onDaemonConnected()V

    const/16 v16, 0x1000

    move/from16 v0, v16

    new-array v3, v0, [B

    const/4 v15, 0x0

    :goto_40
    rsub-int v0, v15, 0x1000

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v3, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_ee

    const-string/jumbo v16, "DomainFilterDaemonConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "got "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " reading with start = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_76
    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_1a9

    const/16 v16, 0x0

    aput-byte v16, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_76

    :catchall_84
    move-exception v16

    monitor-exit v17

    throw v16
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_87} :catch_87
    .catchall {:try_start_2f .. :try_end_87} :catchall_189

    :catch_87
    move-exception v8

    move-object v13, v14

    :goto_89
    :try_start_89
    const-string/jumbo v16, "DomainFilterDaemonConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Communications error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_a6
    .catchall {:try_start_89 .. :try_end_a6} :catchall_a6

    :catchall_a6
    move-exception v16

    :goto_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0
    :try_end_b4
    .catchall {:try_start_ae .. :try_end_b4} :catchall_256

    if-eqz v18, :cond_e7

    :try_start_b6
    const-string/jumbo v18, "DomainFilterDaemonConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "closing stream for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_df} :catch_237
    .catchall {:try_start_b6 .. :try_end_df} :catchall_256

    :goto_df
    const/16 v18, 0x0

    :try_start_e1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_e7
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_256

    :cond_e7
    monitor-exit v17

    if-eqz v13, :cond_ed

    :try_start_ea
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_259

    :cond_ed
    :goto_ed
    throw v16

    :cond_ee
    add-int/2addr v4, v15

    const/4 v15, 0x0

    const/4 v9, 0x0

    :goto_f1
    if-ge v9, v4, :cond_18d

    :try_start_f3
    aget-byte v16, v3, v9

    if-nez v16, :cond_168

    new-instance v11, Ljava/lang/String;

    sub-int v16, v9, v15

    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v3, v15, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string/jumbo v16, "DomainFilterDaemonConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "rawEvent "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_120} :catch_87
    .catchall {:try_start_f3 .. :try_end_120} :catchall_189

    const/16 v16, 0x0

    :try_start_122
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const-string/jumbo v16, "DomainFilterDaemonConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "RCV <- {"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "}"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-virtual {v7}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v18

    invoke-virtual {v7}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_166
    .catch Ljava/lang/IllegalArgumentException; {:try_start_122 .. :try_end_166} :catch_16b
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_166} :catch_87
    .catchall {:try_start_122 .. :try_end_166} :catchall_189

    :goto_166
    add-int/lit8 v15, v9, 0x1

    :cond_168
    add-int/lit8 v9, v9, 0x1

    goto :goto_f1

    :catch_16b
    move-exception v6

    :try_start_16c
    const-string/jumbo v16, "DomainFilterDaemonConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Problem parsing message "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    :catchall_189
    move-exception v16

    move-object v13, v14

    goto/16 :goto_a7

    :cond_18d
    if-nez v15, :cond_198

    const-string/jumbo v16, "DomainFilterDaemonConnector"

    const-string/jumbo v17, "RCV incomplete"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_198
    if-eq v15, v4, :cond_1a6

    rsub-int v12, v15, 0x1000

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v3, v15, v3, v0, v12}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_1a3} :catch_87
    .catchall {:try_start_16c .. :try_end_1a3} :catchall_189

    move v15, v12

    goto/16 :goto_40

    :cond_1a6
    const/4 v15, 0x0

    goto/16 :goto_40

    :cond_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v16, v0
    :try_end_1b6
    .catchall {:try_start_1b0 .. :try_end_1b6} :catchall_216

    if-eqz v16, :cond_1ed

    :try_start_1b8
    const-string/jumbo v16, "DomainFilterDaemonConnector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "closing stream for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mSocket:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1e5} :catch_1f4
    .catchall {:try_start_1b8 .. :try_end_1e5} :catchall_216

    :goto_1e5
    const/16 v16, 0x0

    :try_start_1e7
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1ed
    .catchall {:try_start_1e7 .. :try_end_1ed} :catchall_216

    :cond_1ed
    monitor-exit v17

    if-eqz v14, :cond_1f3

    :try_start_1f0
    invoke-virtual {v14}, Landroid/net/LocalSocket;->close()V
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1f3} :catch_219

    :cond_1f3
    :goto_1f3
    return-void

    :catch_1f4
    move-exception v5

    :try_start_1f5
    const-string/jumbo v16, "DomainFilterDaemonConnector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed closing output stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_215
    .catchall {:try_start_1f5 .. :try_end_215} :catchall_216

    goto :goto_1e5

    :catchall_216
    move-exception v16

    monitor-exit v17

    throw v16

    :catch_219
    move-exception v8

    const-string/jumbo v16, "DomainFilterDaemonConnector"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed closing socket: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f3

    :catch_237
    move-exception v5

    :try_start_238
    const-string/jumbo v18, "DomainFilterDaemonConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed closing output stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_254
    .catchall {:try_start_238 .. :try_end_254} :catchall_256

    goto/16 :goto_df

    :catchall_256
    move-exception v16

    monitor-exit v17

    throw v16

    :catch_259
    move-exception v8

    const-string/jumbo v17, "DomainFilterDaemonConnector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed closing socket: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ed

    :catch_278
    move-exception v8

    goto/16 :goto_89
.end method

.method static makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x20

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_23

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_32

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Arguments must be separate from command"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_65

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_65
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_39

    :cond_6c
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x300

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v1, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_37

    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v3, :cond_23

    const-string/jumbo v3, "DomainFilterDaemonConnector"

    const-string/jumbo v5, "Missing Output stream - cannot write commands!"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_34

    :goto_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_37

    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_2f
    .catchall {:try_start_23 .. :try_end_2e} :catchall_34

    goto :goto_20

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_20

    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v4

    throw v3
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    const/4 v6, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "DomainFilterDaemonConnector"

    const-string/jumbo v3, "Unhandled event \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return v6

    :catch_27
    move-exception v0

    const-string/jumbo v2, "DomainFilterDaemonConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error handling \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public run()V
    .registers 5

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    :goto_9
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->listenToSocket()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_9

    :catch_d
    move-exception v0

    const-string/jumbo v1, "DomainFilterDaemonConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in NativeDaemonConnector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    invoke-interface {v1}, Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;->onDaemonDisconnected()V

    goto :goto_9
.end method
