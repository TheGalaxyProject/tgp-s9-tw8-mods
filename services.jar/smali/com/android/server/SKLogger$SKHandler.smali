.class Lcom/android/server/SKLogger$SKHandler;
.super Ljava/util/logging/Handler;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SKLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SKHandler"
.end annotation


# instance fields
.field fileOutputStream:Ljava/io/FileOutputStream;

.field maxSize:J

.field newLogFile:Ljava/lang/String;

.field oldLogFile:Ljava/lang/String;

.field printWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/server/SKLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/SKLogger;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    iput-object p1, p0, Lcom/android/server/SKLogger$SKHandler;->this$0:Lcom/android/server/SKLogger;

    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/SKLogger$SKHandler;->oldLogFile:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/SKLogger$SKHandler;->maxSize:J

    invoke-direct {p0}, Lcom/android/server/SKLogger$SKHandler;->getPrintWriter()Ljava/io/PrintWriter;

    return-void
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x400

    new-array v0, v8, [B

    :try_start_6
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_b} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_31

    :try_start_b
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_41
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_44

    :goto_10
    :try_start_10
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2e

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_47

    goto :goto_10

    :catch_1b
    move-exception v2

    move-object v6, v7

    move-object v3, v4

    :goto_1e
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_21
    :goto_21
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    :cond_27
    if-eqz v6, :cond_2d

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    const/4 v6, 0x0

    :cond_2d
    return-void

    :cond_2e
    move-object v6, v7

    move-object v3, v4

    goto :goto_21

    :catch_31
    move-exception v1

    :goto_32
    if-eqz v3, :cond_38

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    :cond_38
    if-eqz v6, :cond_21

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    const/4 v6, 0x0

    goto :goto_21

    :catch_3f
    move-exception v2

    goto :goto_1e

    :catch_41
    move-exception v2

    move-object v3, v4

    goto :goto_1e

    :catch_44
    move-exception v1

    move-object v3, v4

    goto :goto_32

    :catch_47
    move-exception v1

    move-object v6, v7

    move-object v3, v4

    goto :goto_32
.end method

.method private getPrintWriter()Ljava/io/PrintWriter;
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/SKLogger$SKHandler;->maxSize:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_5a

    :try_start_1f
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_36

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_36} :catch_55

    :cond_36
    :goto_36
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_52

    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    :try_start_40
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_52} :catch_89

    :cond_52
    :goto_52
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    return-object v3

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    :cond_5a
    :try_start_5a
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_68
    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/SKLogger$SKHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/SKLogger$SKHandler;->copy(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_86} :catch_87

    goto :goto_36

    :catch_87
    move-exception v0

    goto :goto_36

    :catch_89
    move-exception v0

    goto :goto_52
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_13

    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_9
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/SKLogger$SKHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/server/SKLogger$SKHandler;->getPrintWriter()Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/server/SKLogger$SKHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SKLogger$SKHandler;->flush()V

    :cond_1e
    return-void
.end method