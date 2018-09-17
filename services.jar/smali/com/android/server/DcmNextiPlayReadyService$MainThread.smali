.class Lcom/android/server/DcmNextiPlayReadyService$MainThread;
.super Ljava/lang/Thread;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DcmNextiPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;

.field private urlToRead:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 37

    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    const/16 v29, 0x0

    :try_start_5
    new-instance v28, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v32

    move-object/from16 v0, v32

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v29, v0

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v25

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v24, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/security/KeyStore;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_57
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_153

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    const-string/jumbo v32, "Date"

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_57

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_7f
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_c6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    const-string/jumbo v32, "DcmNextiPlayReadyService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " Date List value "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_b0} :catch_b1
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_b0} :catch_185
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_b0} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b0} :catch_1b1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b0} :catch_19b
    .catchall {:try_start_5 .. :try_end_b0} :catchall_1dd

    goto :goto_7f

    :catch_b1
    move-exception v10

    :try_start_b2
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v10}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_1dd

    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v29, :cond_c5

    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_c5
    :goto_c5
    return-void

    :cond_c6
    :try_start_c6
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v32, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v33, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v6, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-string/jumbo v32, "DcmNextiPlayReadyService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "epoch time: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v32, 0x0

    cmp-long v32, v14, v32

    if-eqz v32, :cond_15e

    const-wide/16 v32, 0x3e8

    div-long v18, v14, v32

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v20, v32, v34

    const-string/jumbo v32, "DcmNextiPlayReadyService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "networktime "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "recvElapsedTime"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/DcmNextiPlayReadyService;->onNetworkStateChanged(JJ)V
    :try_end_153
    .catch Ljava/lang/SecurityException; {:try_start_c6 .. :try_end_153} :catch_b1
    .catch Ljava/text/ParseException; {:try_start_c6 .. :try_end_153} :catch_185
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_153} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_153} :catch_1b1
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_153} :catch_19b
    .catchall {:try_start_c6 .. :try_end_153} :catchall_1dd

    :cond_153
    :goto_153
    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v29, :cond_c5

    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_c5

    :cond_15e
    :try_start_15e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v26, v32, v34

    const-string/jumbo v32, "DcmNextiPlayReadyService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_184
    .catch Ljava/lang/SecurityException; {:try_start_15e .. :try_end_184} :catch_b1
    .catch Ljava/text/ParseException; {:try_start_15e .. :try_end_184} :catch_185
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15e .. :try_end_184} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_184} :catch_1b1
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_184} :catch_19b
    .catchall {:try_start_15e .. :try_end_184} :catchall_1dd

    goto :goto_153

    :catch_185
    move-exception v11

    :try_start_186
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v11}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catchall {:try_start_186 .. :try_end_190} :catchall_1dd

    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v29, :cond_c5

    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_c5

    :catch_19b
    move-exception v8

    :try_start_19c
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a6
    .catchall {:try_start_19c .. :try_end_1a6} :catchall_1dd

    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v29, :cond_c5

    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_c5

    :catch_1b1
    move-exception v7

    :try_start_1b2
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v7}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bc
    .catchall {:try_start_1b2 .. :try_end_1bc} :catchall_1dd

    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v29, :cond_c5

    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_c5

    :catch_1c7
    move-exception v9

    :try_start_1c8
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d2
    .catchall {:try_start_1c8 .. :try_end_1d2} :catchall_1dd

    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v29, :cond_c5

    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_c5

    :catchall_1dd
    move-exception v32

    const/16 v33, 0x1

    sput v33, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v29, :cond_1e7

    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1e7
    throw v32
.end method
