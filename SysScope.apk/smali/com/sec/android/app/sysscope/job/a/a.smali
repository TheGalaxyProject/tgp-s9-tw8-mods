.class public Lcom/sec/android/app/sysscope/job/a/a;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/sec/android/app/sysscope/job/a/a;->a:J

    iput-wide v2, p0, Lcom/sec/android/app/sysscope/job/a/a;->b:J

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v2, 0x10

    new-array v2, v2, [B

    iget-wide v4, p0, Lcom/sec/android/app/sysscope/job/a/a;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sysscope/job/a/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/job/a/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sysscope/job/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x1

    goto :goto_3

    :cond_2c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_3
.end method

.method private b(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const/16 v8, 0x2000

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    new-array v5, v8, [B

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/sec/android/app/sysscope/job/a/a;->b:J

    long-to-int v3, v0

    :try_start_e
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_28

    :try_start_15
    iget-wide v6, p0, Lcom/sec/android/app/sysscope/job/a/a;->a:J

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_87

    move v0, v3

    :goto_1b
    if-lez v0, :cond_46

    if-le v0, v8, :cond_2f

    :try_start_1f
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_38
    .catchall {:try_start_1f .. :try_end_25} :catchall_41

    :goto_25
    add-int/lit16 v0, v0, -0x2000

    goto :goto_1b

    :catch_28
    move-exception v0

    move-object v1, v2

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    goto :goto_1b

    :cond_2f
    :try_start_2f
    new-array v2, v0, [B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_38
    .catchall {:try_start_2f .. :try_end_37} :catchall_41

    goto :goto_25

    :catch_38
    move-exception v0

    :try_start_39
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to process file for MD5"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    :try_start_42
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_7e

    throw v0

    :cond_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FILE_SCAN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MD5 Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_71} :catch_38
    .catchall {:try_start_46 .. :try_end_71} :catchall_41

    :try_start_71
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    return-object v0

    :catch_75
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to close input stream for MD5 calculation"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to close input stream for MD5 calculation"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_87
    move-exception v0

    goto :goto_2a
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    iput-wide p3, p0, Lcom/sec/android/app/sysscope/job/a/a;->a:J

    iput-wide p5, p0, Lcom/sec/android/app/sysscope/job/a/a;->b:J

    iput-object p7, p0, Lcom/sec/android/app/sysscope/job/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "busybox"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    invoke-direct {p0, p1}, Lcom/sec/android/app/sysscope/job/a/a;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sysscope/job/a/a;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method
