.class final Lcom/android/server/desktopmode/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/Utils$1;->val$path:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/desktopmode/Utils$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v5, 0x0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/desktopmode/Utils$1;->val$path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5d

    const/4 v0, 0x0

    :try_start_f
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_95
    .catchall {:try_start_f .. :try_end_19} :catchall_b1

    :try_start_19
    iget v4, p0, Lcom/android/server/desktopmode/Utils$1;->val$value:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_b6
    .catchall {:try_start_19 .. :try_end_22} :catchall_b3

    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_93
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2a

    :cond_27
    :goto_27
    if-eqz v5, :cond_5d

    :try_start_29
    throw v5
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v2

    move-object v0, v1

    :goto_2c
    invoke-static {}, Lcom/android/server/desktopmode/Utils;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to writeFile("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/desktopmode/Utils$1;->val$path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/desktopmode/Utils$1;->val$value:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5d
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_92

    invoke-static {}, Lcom/android/server/desktopmode/Utils;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeFile("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/desktopmode/Utils$1;->val$path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/desktopmode/Utils$1;->val$value:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "), returning"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return-void

    :catch_93
    move-exception v5

    goto :goto_27

    :catch_95
    move-exception v4

    :goto_96
    :try_start_96
    throw v4
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_9b
    if-eqz v0, :cond_a0

    :try_start_9d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_a5
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a3

    :cond_a0
    :goto_a0
    if-eqz v5, :cond_b0

    :try_start_a2
    throw v5

    :catch_a3
    move-exception v2

    goto :goto_2c

    :catch_a5
    move-exception v6

    if-nez v5, :cond_aa

    move-object v5, v6

    goto :goto_a0

    :cond_aa
    if-eq v5, v6, :cond_a0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a0

    :cond_b0
    throw v4
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b1} :catch_a3

    :catchall_b1
    move-exception v4

    goto :goto_9b

    :catchall_b3
    move-exception v4

    move-object v0, v1

    goto :goto_9b

    :catch_b6
    move-exception v4

    move-object v0, v1

    goto :goto_96
.end method
