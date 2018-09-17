.class Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;
.super Ljava/lang/Thread;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

.field final synthetic val$converter:Ljava/io/InputStreamReader;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;Ljava/io/InputStreamReader;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$1:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    new-instance v2, Ljava/io/BufferedReader;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$1:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    monitor-enter v5

    :try_start_b
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$1:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_28

    if-nez v4, :cond_13

    monitor-exit v5

    return-void

    :cond_13
    const/4 v4, 0x2

    if-ne v0, v4, :cond_20

    :try_start_16
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$1:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGotGdbPrint:Z

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$1:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->notifyAll()V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_28

    :cond_20
    monitor-exit v5

    :try_start_21
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_50

    move-result-object v3

    if-nez v3, :cond_2b

    return-void

    :catchall_28
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2b
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$1:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GDB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$1:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4d} :catch_50

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catch_50
    move-exception v1

    return-void
.end method
