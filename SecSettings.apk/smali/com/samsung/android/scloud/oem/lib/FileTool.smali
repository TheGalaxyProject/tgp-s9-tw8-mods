.class public final Lcom/samsung/android/scloud/oem/lib/FileTool;
.super Ljava/lang/Object;
.source "FileTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;
    }
.end annotation


# static fields
.field private static mMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/FileTool;->mMessageDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "writeToFile - start Write with stream : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FileTool"

    invoke-static {v7, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v6, 0x20000

    new-array v1, v6, [B

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :goto_1d
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_40

    int-to-long v6, v3

    add-long/2addr v4, v6

    if-nez p4, :cond_34

    :goto_27
    const/4 v6, 0x0

    invoke-virtual {p3, v1, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2e

    goto :goto_1d

    :catch_2c
    move-exception v2

    :try_start_2d
    throw v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    if-nez p0, :cond_38

    :goto_31
    if-nez p3, :cond_3c

    :goto_33
    throw v0

    :cond_34
    :try_start_34
    invoke-interface {p4, v4, v5, p1, p2}, Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;->transferred(JJ)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_2c
    .catchall {:try_start_34 .. :try_end_37} :catchall_2e

    goto :goto_27

    :cond_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_31

    :cond_3c
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_33

    :cond_40
    if-nez p0, :cond_45

    :goto_42
    if-nez p3, :cond_49

    :goto_44
    return-void

    :cond_45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_42

    :cond_49
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_44
.end method

.method public static writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "writeToFile - start Write with stream : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FileTool"

    invoke-static {v7, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v1, v5, v6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_44

    :cond_3b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0, p1, p2, v2, p4}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    return-void

    :cond_44
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Creating folder : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FileTool"

    invoke-static {v7, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3b

    const-string/jumbo v6, "FileTool"

    const-string/jumbo v7, "ORSMetaResponse.fromBinaryFile(): Can not create directory. "

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method

.method public static writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    return-void

    :cond_14
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
.end method
