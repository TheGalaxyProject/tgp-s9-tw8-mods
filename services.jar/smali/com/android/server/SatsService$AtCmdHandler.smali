.class public final Lcom/android/server/SatsService$AtCmdHandler;
.super Ljava/lang/Object;
.source "SatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AtCmdHandler"
.end annotation


# static fields
.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID PARAM)"

.field private static final AT_RESPONSE_NA:Ljava/lang/String; = "NA"

.field private static final AT_RESPONSE_START:Ljava/lang/String; = "\r\n"

.field private static final THREAD_SUFFIX_UART:Ljava/lang/String; = "At"

.field private static final THREAD_SUFFIX_USB:Ljava/lang/String; = "Data"

.field private static final UART_SOCKET_NAME:Ljava/lang/String; = "SatsService"

.field private static final USB_SOCKET_NAME:Ljava/lang/String; = "/data/.socket_stream"


# instance fields
.field private THREAD_TAG:Ljava/lang/String;

.field private mGettedBuffer:Z

.field private mLocalSocket:Landroid/net/LocalSocket;

.field private mLocalSocketAddress:Landroid/net/LocalSocketAddress;

.field final synthetic this$0:Lcom/android/server/SatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/SatsService;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    const-string/jumbo v0, "SatsService"

    const-string/jumbo v1, "AtCmdHandler called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/SatsService$AtCmdHandler;->selectTarget(I)V

    return-void
.end method

.method private doWork(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iget-object v5, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v5}, Lcom/android/server/SatsService;->-get4(Lcom/android/server/SatsService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_103

    const-string/jumbo v5, "SatsService"

    const-string/jumbo v6, "doWork: iterator: "

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IWorkOnAt;

    invoke-interface {v0}, Lcom/android/server/IWorkOnAt;->getCmd()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "SatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "doWork: cmdResponse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string/jumbo v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_141

    iget-object v5, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string/jumbo v6, "SatsServiceData"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "="

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b8} :catch_127

    move-result-object v4

    :goto_b9
    const-string/jumbo v5, "SatsService"

    const-string/jumbo v6, "doWork: cmdResponse is equal to cmd."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/android/server/IWorkOnAt;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\r\n\r\nOK\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_103
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_126

    const-string/jumbo v5, "SatsService"

    const-string/jumbo v6, "doWork: no such service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "NG (INVALID PARAM)\r\n\r\nOK\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_126
    return-object v4

    :catch_127
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "NG (INVALID PARAM)\r\n\r\nOK\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b9

    :cond_141
    const-string/jumbo v5, "SatsService"

    const-string/jumbo v6, "doWork: cmd not in list"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method

.method private isValidCommand(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    if-nez p1, :cond_c

    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string/jumbo v4, "error: cmd = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_c
    :try_start_c
    const-string/jumbo v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_82

    const-string/jumbo v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "AT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_82

    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v3}, Lcom/android/server/SatsService;->-get0(Lcom/android/server/SatsService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isValidCommand: cmd is true. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_68
    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isValidCommand: cmd is not in list. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_82
    iget-object v3, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isValidCmd: cmd is false. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_9b} :catch_9c

    return v6

    :catch_9c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v6
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v12, 0x0

    const/4 v11, 0x0

    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    if-nez v8, :cond_e

    new-instance v8, Landroid/net/LocalSocket;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    :cond_e
    :try_start_e
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    iget-object v9, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v8, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_de

    :goto_15
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_177

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Connected to daemon."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string/jumbo v7, ""

    :try_start_2a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3a} :catch_fa

    :try_start_3a
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    iget-object v9, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4a} :catch_1b4

    const/4 v8, 0x1

    :try_start_4b
    iput-boolean v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4d} :catch_1b8

    move-object v2, v3

    move-object v0, v1

    :cond_4f
    :goto_4f
    iget-boolean v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    if-eqz v8, :cond_2

    :try_start_53
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_152

    invoke-direct {p0, v7}, Lcom/android/server/SatsService$AtCmdHandler;->isValidCommand(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_118

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "command_0: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/android/server/SatsService$AtCmdHandler;->doWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "command_1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Response:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_a6} :catch_a7

    goto :goto_4f

    :catch_a7
    move-exception v4

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Socket seems be closed - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    :try_start_c3
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownInput()V

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownOutput()V

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Closed socket."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_da} :catch_171

    :goto_da
    iput-object v11, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    goto/16 :goto_4f

    :catch_de
    move-exception v4

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to connect daemon - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :catch_fa
    move-exception v4

    :goto_fb
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to get input/output stream - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    goto/16 :goto_4f

    :cond_118
    :try_start_118
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string/jumbo v9, "SatsServiceData"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    const-string/jumbo v6, "NA"

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Command:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Response:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f

    :cond_152
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Socket seems be closed."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mGettedBuffer:Z

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownInput()V

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownOutput()V

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocket:Landroid/net/LocalSocket;
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_16f} :catch_a7

    goto/16 :goto_2

    :catch_171
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_da

    :cond_177
    const-wide/16 v8, 0x1388

    :try_start_179
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string/jumbo v9, "SatsServiceAt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Wait until JIG is inserted."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v8}, Lcom/android/server/SatsService;->-get2(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v9

    monitor-enter v9
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_196} :catch_1ab

    :goto_196
    :try_start_196
    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v8}, Lcom/android/server/SatsService;->-get3(Lcom/android/server/SatsService;)Z

    move-result v8

    if-eqz v8, :cond_1b1

    iget-object v8, p0, Lcom/android/server/SatsService$AtCmdHandler;->this$0:Lcom/android/server/SatsService;

    invoke-static {v8}, Lcom/android/server/SatsService;->-get2(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->wait()V
    :try_end_1a7
    .catchall {:try_start_196 .. :try_end_1a7} :catchall_1a8

    goto :goto_196

    :catchall_1a8
    move-exception v8

    :try_start_1a9
    monitor-exit v9

    throw v8
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1ab} :catch_1ab

    :catch_1ab
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_1b1
    :try_start_1b1
    monitor-exit v9
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1b2} :catch_1ab

    goto/16 :goto_2

    :catch_1b4
    move-exception v4

    move-object v0, v1

    goto/16 :goto_fb

    :catch_1b8
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    goto/16 :goto_fb
.end method

.method public selectTarget(I)V
    .registers 5

    packed-switch p1, :pswitch_data_5c

    const-string/jumbo v0, "SatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid target : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void

    :pswitch_25
    const-string/jumbo v0, "SatsService"

    const-string/jumbo v1, "connect at distributor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v1, "SatsService"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    const-string/jumbo v0, "SatsServiceAt"

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    goto :goto_24

    :pswitch_40
    const-string/jumbo v0, "SatsService"

    const-string/jumbo v1, "connect data distributor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v1, "/data/.socket_stream"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    const-string/jumbo v0, "SatsServiceData"

    iput-object v0, p0, Lcom/android/server/SatsService$AtCmdHandler;->THREAD_TAG:Ljava/lang/String;

    goto :goto_24

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_25
        :pswitch_40
    .end packed-switch
.end method