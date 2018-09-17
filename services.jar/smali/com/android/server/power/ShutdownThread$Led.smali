.class public Lcom/android/server/power/ShutdownThread$Led;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Led"
.end annotation


# direct methods
.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->On()V

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Off()V
    .registers 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    return-void
.end method

.method private static On()V
    .registers 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    return-void
.end method

.method private static fileWriteInt(I)V
    .registers 8

    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/sec/led/led_pattern"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1c

    :cond_12
    const-string/jumbo v4, "LED"

    const-string/jumbo v5, "!@LED File is not exist"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    const/4 v2, 0x0

    :try_start_1d
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_3f
    .catchall {:try_start_1d .. :try_end_22} :catchall_5a

    :try_start_22
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2d} :catch_6f
    .catchall {:try_start_22 .. :try_end_2d} :catchall_6c

    if-eqz v3, :cond_32

    :try_start_2f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_34

    :cond_32
    :goto_32
    move-object v2, v3

    :cond_33
    :goto_33
    return-void

    :catch_34
    move-exception v0

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "led file close error"

    invoke-static {v4, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_32

    :catch_3f
    move-exception v0

    :goto_40
    :try_start_40
    const-string/jumbo v4, "LED"

    const-string/jumbo v5, "!@Exception has raised while file write"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_5a

    if-eqz v2, :cond_33

    :try_start_4b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_33

    :catch_4f
    move-exception v0

    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "led file close error"

    invoke-static {v4, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_33

    :catchall_5a
    move-exception v4

    :goto_5b
    if-eqz v2, :cond_60

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    :cond_60
    :goto_60
    throw v4

    :catch_61
    move-exception v0

    const-string/jumbo v5, "ShutdownThread"

    const-string/jumbo v6, "led file close error"

    invoke-static {v5, v6, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_60

    :catchall_6c
    move-exception v4

    move-object v2, v3

    goto :goto_5b

    :catch_6f
    move-exception v0

    move-object v2, v3

    goto :goto_40
.end method
