.class public Lcom/android/server/enterprise/utils/IOExceptionHandler;
.super Ljava/lang/Object;
.source "IOExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;,
        Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
            "<TS;>;>(TT;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->open()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_27

    move-result-object v2

    :try_start_a
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->process(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_31
    .catchall {:try_start_a .. :try_end_d} :catchall_49

    :try_start_d
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_22

    :goto_10
    :try_start_10
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_2c

    :goto_13
    :try_start_13
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_27

    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_5e

    new-instance v3, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;

    invoke-direct {v3, v1}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;-><init>(Ljava/util/ArrayList;)V

    throw v3

    :catch_22
    move-exception v0

    :try_start_23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_10

    :catch_27
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catch_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_27

    goto :goto_13

    :catch_31
    move-exception v0

    :try_start_32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_49

    :try_start_35
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3f

    :goto_38
    :try_start_38
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_44

    :goto_3b
    :try_start_3b
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V

    goto :goto_16

    :catch_3f
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :catch_44
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_48} :catch_27

    goto :goto_3b

    :catchall_49
    move-exception v3

    :try_start_4a
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->flush(Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_54

    :goto_4d
    :try_start_4d
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->sync(Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_59

    :goto_50
    :try_start_50
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;->close(Ljava/lang/Object;)V

    throw v3

    :catch_54
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :catch_59
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5d} :catch_27

    goto :goto_50

    :cond_5e
    return-void
.end method

.method public static process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
            "<TS;>;>(TT;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_3
    .catch Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$ExceptionChain;->printStackTrace()V

    goto :goto_3

    :cond_b
    throw v0
.end method
