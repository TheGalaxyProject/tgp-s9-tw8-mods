.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dumper"

.field private static final TEMP_FILENAME:Ljava/lang/String; = "/temp/"

.field private static mTemporaryPath:Ljava/lang/String;


# instance fields
.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeader:Ljava/lang/StringBuilder;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mTemporaryDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method private appendFileNodeToTemporaryFile(Ljava/io/File;)Z
    .registers 15

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1a

    :cond_10
    const-string/jumbo v9, "Dumper"

    const-string/jumbo v10, "Invalid temporary directory, cannot create file"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_1a
    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_1c
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/temp.gz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_41} :catch_ab
    .catchall {:try_start_1c .. :try_end_41} :catchall_94

    :try_start_41
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_ad
    .catchall {:try_start_41 .. :try_end_46} :catchall_a4

    const/high16 v9, 0x10000

    :try_start_48
    new-array v0, v9, [B

    :goto_4a
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_81

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_54} :catch_55
    .catchall {:try_start_48 .. :try_end_54} :catchall_a7

    goto :goto_4a

    :catch_55
    move-exception v3

    move-object v7, v8

    move-object v5, v6

    :goto_58
    :try_start_58
    const-string/jumbo v9, "Dumper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to append file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_58 .. :try_end_76} :catchall_94

    if-eqz v5, :cond_7b

    :try_start_78
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_90

    :cond_7b
    :goto_7b
    if-eqz v7, :cond_80

    :try_start_7d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_92

    :cond_80
    :goto_80
    return v12

    :cond_81
    if-eqz v6, :cond_86

    :try_start_83
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_8c

    :cond_86
    :goto_86
    if-eqz v8, :cond_8b

    :try_start_88
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8e

    :cond_8b
    :goto_8b
    return v11

    :catch_8c
    move-exception v2

    goto :goto_86

    :catch_8e
    move-exception v2

    goto :goto_8b

    :catch_90
    move-exception v2

    goto :goto_7b

    :catch_92
    move-exception v2

    goto :goto_80

    :catchall_94
    move-exception v9

    :goto_95
    if-eqz v5, :cond_9a

    :try_start_97
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_a0

    :cond_9a
    :goto_9a
    if-eqz v7, :cond_9f

    :try_start_9c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a2

    :cond_9f
    :goto_9f
    throw v9

    :catch_a0
    move-exception v2

    goto :goto_9a

    :catch_a2
    move-exception v2

    goto :goto_9f

    :catchall_a4
    move-exception v9

    move-object v7, v8

    goto :goto_95

    :catchall_a7
    move-exception v9

    move-object v7, v8

    move-object v5, v6

    goto :goto_95

    :catch_ab
    move-exception v3

    goto :goto_58

    :catch_ad
    move-exception v3

    move-object v7, v8

    goto :goto_58
.end method

.method private concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    :cond_1c
    :try_start_1c
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2f

    const-string/jumbo v5, "Dumper"

    const-string/jumbo v6, "Failed to append tempHeaderFile"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    return-object v7

    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v5

    if-nez v5, :cond_68

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_47} :catch_48

    goto :goto_2f

    :catch_48
    move-exception v0

    const-string/jumbo v5, "Dumper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "concatenateFiles.Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    :goto_67
    return-object v1

    :cond_68
    :try_start_68
    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/auditlog/Dumper;->appendFileNodeToTemporaryFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2f

    const-string/jumbo v5, "Dumper"

    const-string/jumbo v6, "Failed to append file node"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->removeTempFile()V

    return-object v7

    :cond_89
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-eqz v5, :cond_67

    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/temp.gz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_ac} :catch_48

    move-object v1, v2

    goto :goto_67
.end method

.method private createHeader()V
    .registers 8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "----------------------------------------------\n"

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_4b

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dump Log Generated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createHeaderTempFile(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2e

    :try_start_7
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_41

    :try_start_11
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_44

    if-eqz v2, :cond_26

    :try_start_20
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_48

    :cond_26
    :goto_26
    if-eqz v4, :cond_2b

    :try_start_28
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    goto :goto_2b

    :catchall_2e
    move-exception v5

    :goto_2f
    if-eqz v1, :cond_37

    :try_start_31
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_37} :catch_3f

    :cond_37
    :goto_37
    if-eqz v3, :cond_3c

    :try_start_39
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    throw v5

    :catch_3d
    move-exception v0

    goto :goto_3c

    :catch_3f
    move-exception v0

    goto :goto_37

    :catchall_41
    move-exception v5

    move-object v3, v4

    goto :goto_2f

    :catchall_44
    move-exception v5

    move-object v1, v2

    move-object v3, v4

    goto :goto_2f

    :catch_48
    move-exception v0

    goto :goto_26
.end method

.method private fullDump()V
    .registers 33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    sget-object v8, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v26, 0x0

    :try_start_18
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2b} :catch_36c
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2a6

    :try_start_2b
    new-instance v24, Ljava/util/zip/GZIPOutputStream;

    new-instance v28, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3d} :catch_36f
    .catchall {:try_start_2b .. :try_end_3d} :catchall_325

    :try_start_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v28, v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_43} :catch_132
    .catchall {:try_start_3d .. :try_end_43} :catchall_32a

    if-eqz v28, :cond_139

    :cond_45
    :goto_45
    move-object v5, v4

    move-object v7, v6

    move-object/from16 v19, v18

    move-object v13, v12

    :goto_4a
    :try_start_4a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3a4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v28

    if-nez v28, :cond_cb

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_62} :catch_63
    .catchall {:try_start_4a .. :try_end_62} :catchall_331

    goto :goto_4a

    :catch_63
    move-exception v10

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    move-object/from16 v18, v19

    move-object v12, v13

    :goto_6d
    const/16 v28, 0x0

    :try_start_6f
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    const-string/jumbo v28, "Dumper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "fullDump.Exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_6f .. :try_end_a4} :catchall_2a6

    if-eqz v26, :cond_a9

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    :cond_a9
    if-eqz v23, :cond_b1

    :try_start_ab
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b1} :catch_249

    :cond_b1
    :goto_b1
    if-eqz v4, :cond_b6

    :try_start_b3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_26a

    :cond_b6
    :goto_b6
    if-eqz v18, :cond_bb

    :try_start_b8
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_276

    :cond_bb
    :goto_bb
    if-eqz v12, :cond_c0

    :try_start_bd
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_282

    :cond_c0
    :goto_c0
    if-eqz v16, :cond_c5

    :try_start_c2
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_28e

    :cond_c5
    :goto_c5
    if-eqz v14, :cond_ca

    :try_start_c7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_29a

    :cond_ca
    :goto_ca
    return-void

    :cond_cb
    :try_start_cb
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_39d

    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_e0} :catch_63
    .catchall {:try_start_cb .. :try_end_e0} :catchall_331

    :try_start_e0
    new-instance v18, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e7} :catch_374
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_33d

    :try_start_e7
    new-instance v6, Ljava/io/InputStreamReader;

    const-string/jumbo v28, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-direct {v6, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_f3} :catch_37f
    .catchall {:try_start_e7 .. :try_end_f3} :catchall_348

    :try_start_f3
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f8} :catch_388
    .catchall {:try_start_f3 .. :try_end_f8} :catchall_351

    :cond_f8
    :goto_f8
    :try_start_f8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f8

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_f8

    :catch_132
    move-exception v10

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    goto/16 :goto_6d

    :cond_139
    if-eqz v8, :cond_1c6

    new-instance v28, Ljava/io/File;

    sget-object v29, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_15d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdir()Z

    :cond_15d
    new-instance v27, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "/header"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_180} :catch_132
    .catchall {:try_start_f8 .. :try_end_180} :catchall_32a

    :try_start_180
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_399

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_19e} :catch_390
    .catchall {:try_start_180 .. :try_end_19e} :catchall_359

    const/high16 v28, 0x10000

    :try_start_1a0
    move/from16 v0, v28

    new-array v3, v0, [B

    :goto_1a4
    invoke-virtual {v15, v3}, Ljava/io/InputStream;->read([B)I

    move-result v21

    if-lez v21, :cond_1c0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1a4

    :catch_1b6
    move-exception v10

    move-object/from16 v26, v27

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    move-object v14, v15

    goto/16 :goto_6d

    :cond_1c0
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1c3} :catch_1b6
    .catchall {:try_start_1a0 .. :try_end_1c3} :catchall_362

    move-object/from16 v26, v27

    move-object v14, v15

    :cond_1c6
    :goto_1c6
    if-eqz v26, :cond_1cb

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    :cond_1cb
    if-eqz v24, :cond_1d3

    :try_start_1cd
    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual/range {v24 .. v24}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d3} :catch_1f2

    :cond_1d3
    :goto_1d3
    if-eqz v4, :cond_1d8

    :try_start_1d5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1d8
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1d8} :catch_212

    :cond_1d8
    :goto_1d8
    if-eqz v18, :cond_1dd

    :try_start_1da
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_21d

    :cond_1dd
    :goto_1dd
    if-eqz v12, :cond_1e2

    :try_start_1df
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e2} :catch_228

    :cond_1e2
    :goto_1e2
    if-eqz v17, :cond_1e7

    :try_start_1e4
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_233

    :cond_1e7
    :goto_1e7
    if-eqz v14, :cond_1ec

    :try_start_1e9
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_1ec} :catch_23e

    :cond_1ec
    :goto_1ec
    move-object/from16 v23, v24

    move-object/from16 v16, v17

    goto/16 :goto_ca

    :catch_1f2
    move-exception v9

    const-string/jumbo v28, "Dumper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "run.IOException "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d3

    :catch_212
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close bufferedReader at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d8

    :catch_21d
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close gizp stream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dd

    :catch_228
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e2

    :catch_233
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close outStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e7

    :catch_23e
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ec

    :catch_249
    move-exception v9

    const-string/jumbo v28, "Dumper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "run.IOException "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b1

    :catch_26a
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close bufferedReader at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b6

    :catch_276
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close gizp stream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bb

    :catch_282
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c0

    :catch_28e
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close outStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c5

    :catch_29a
    move-exception v9

    const-string/jumbo v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ca

    :catchall_2a6
    move-exception v28

    :goto_2a7
    if-eqz v26, :cond_2ac

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    :cond_2ac
    if-eqz v23, :cond_2b4

    :try_start_2ae
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2b4
    .catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2b4} :catch_2ce

    :cond_2b4
    :goto_2b4
    if-eqz v4, :cond_2b9

    :try_start_2b6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2b9
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2b9} :catch_2ee

    :cond_2b9
    :goto_2b9
    if-eqz v18, :cond_2be

    :try_start_2bb
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_2be
    .catch Ljava/io/IOException; {:try_start_2bb .. :try_end_2be} :catch_2f9

    :cond_2be
    :goto_2be
    if-eqz v12, :cond_2c3

    :try_start_2c0
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2c3
    .catch Ljava/io/IOException; {:try_start_2c0 .. :try_end_2c3} :catch_304

    :cond_2c3
    :goto_2c3
    if-eqz v16, :cond_2c8

    :try_start_2c5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_2c8
    .catch Ljava/io/IOException; {:try_start_2c5 .. :try_end_2c8} :catch_30f

    :cond_2c8
    :goto_2c8
    if-eqz v14, :cond_2cd

    :try_start_2ca
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_2cd} :catch_31a

    :cond_2cd
    :goto_2cd
    throw v28

    :catch_2ce
    move-exception v9

    const-string/jumbo v29, "Dumper"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "run.IOException "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b4

    :catch_2ee
    move-exception v9

    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close bufferedReader at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b9

    :catch_2f9
    move-exception v9

    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close gizp stream at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2be

    :catch_304
    move-exception v9

    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close fileStream at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c3

    :catch_30f
    move-exception v9

    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close outStream at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c8

    :catch_31a
    move-exception v9

    const-string/jumbo v29, "Dumper"

    const-string/jumbo v30, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v29 .. v30}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2cd

    :catchall_325
    move-exception v28

    move-object/from16 v16, v17

    goto/16 :goto_2a7

    :catchall_32a
    move-exception v28

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    goto/16 :goto_2a7

    :catchall_331
    move-exception v28

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    move-object/from16 v18, v19

    move-object v12, v13

    goto/16 :goto_2a7

    :catchall_33d
    move-exception v28

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    move-object/from16 v18, v19

    goto/16 :goto_2a7

    :catchall_348
    move-exception v28

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    goto/16 :goto_2a7

    :catchall_351
    move-exception v28

    move-object v4, v5

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    goto/16 :goto_2a7

    :catchall_359
    move-exception v28

    move-object/from16 v26, v27

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    goto/16 :goto_2a7

    :catchall_362
    move-exception v28

    move-object/from16 v26, v27

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    move-object v14, v15

    goto/16 :goto_2a7

    :catch_36c
    move-exception v10

    goto/16 :goto_6d

    :catch_36f
    move-exception v10

    move-object/from16 v16, v17

    goto/16 :goto_6d

    :catch_374
    move-exception v10

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    move-object/from16 v18, v19

    goto/16 :goto_6d

    :catch_37f
    move-exception v10

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    goto/16 :goto_6d

    :catch_388
    move-exception v10

    move-object v4, v5

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    goto/16 :goto_6d

    :catch_390
    move-exception v10

    move-object/from16 v26, v27

    move-object/from16 v23, v24

    move-object/from16 v16, v17

    goto/16 :goto_6d

    :cond_399
    move-object/from16 v26, v27

    goto/16 :goto_1c6

    :cond_39d
    move-object v4, v5

    move-object v6, v7

    move-object/from16 v18, v19

    move-object v12, v13

    goto/16 :goto_45

    :cond_3a4
    move-object v4, v5

    move-object v6, v7

    move-object/from16 v18, v19

    move-object v12, v13

    goto/16 :goto_1c6
.end method

.method private readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .registers 26

    const-wide/16 v2, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_b
    new-instance v22, Ljava/io/File;

    sget-object v23, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdir()Z

    :cond_2d
    new-instance v20, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "Tmp"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5c} :catch_1c5
    .catchall {:try_start_b .. :try_end_5c} :catchall_19a

    :try_start_5c
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_63} :catch_1c8
    .catchall {:try_start_5c .. :try_end_63} :catchall_19c

    :try_start_63
    new-instance v15, Ljava/util/zip/GZIPOutputStream;

    new-instance v22, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_1cd
    .catchall {:try_start_63 .. :try_end_71} :catchall_1a0

    :try_start_71
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_78} :catch_1d3
    .catchall {:try_start_71 .. :try_end_78} :catchall_1a5

    :try_start_78
    new-instance v17, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_1da
    .catchall {:try_start_78 .. :try_end_7f} :catchall_1ab

    :try_start_7f
    new-instance v7, Ljava/io/InputStreamReader;

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8b} :catch_1e2
    .catchall {:try_start_7f .. :try_end_8b} :catchall_1b2

    :try_start_8b
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_1ec
    .catchall {:try_start_8b .. :try_end_90} :catchall_1bb

    :cond_90
    :goto_90
    :try_start_90
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b7

    const-string/jumbo v22, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a0} :catch_122
    .catchall {:try_start_90 .. :try_end_a0} :catchall_17d

    move-result-object v21

    const/16 v22, 0x0

    :try_start_a3
    aget-object v22, v21, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_ac} :catch_1f7
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ac} :catch_122
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_17d

    move-result-wide v2

    :try_start_ad
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b3} :catch_122
    .catchall {:try_start_ad .. :try_end_b3} :catchall_17d

    cmp-long v22, v2, v22

    if-lez v22, :cond_d3

    :cond_b7
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v15}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v16, v17

    move-object v10, v11

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    :goto_d2
    return-object v19

    :cond_d3
    :try_start_d3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    move-wide/from16 v22, v0

    cmp-long v22, v2, v22

    if-ltz v22, :cond_90

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0

    cmp-long v22, v2, v22

    if-gtz v22, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_15a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_90

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_120} :catch_122
    .catchall {:try_start_d3 .. :try_end_120} :catchall_17d

    goto/16 :goto_90

    :catch_122
    move-exception v8

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v16, v17

    move-object v10, v11

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    :goto_12c
    :try_start_12c
    const-string/jumbo v22, "Dumper"

    const-string/jumbo v23, "readFileLineByLine.IOException"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_146
    .catchall {:try_start_12c .. :try_end_146} :catchall_19a

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v14}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    goto/16 :goto_d2

    :cond_15a
    :try_start_15a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_17b} :catch_122
    .catchall {:try_start_15a .. :try_end_17b} :catchall_17d

    goto/16 :goto_90

    :catchall_17d
    move-exception v22

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v16, v17

    move-object v10, v11

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    :goto_187
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v14}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    throw v22

    :catchall_19a
    move-exception v22

    goto :goto_187

    :catchall_19c
    move-exception v22

    move-object/from16 v19, v20

    goto :goto_187

    :catchall_1a0
    move-exception v22

    move-object v12, v13

    move-object/from16 v19, v20

    goto :goto_187

    :catchall_1a5
    move-exception v22

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    goto :goto_187

    :catchall_1ab
    move-exception v22

    move-object v10, v11

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    goto :goto_187

    :catchall_1b2
    move-exception v22

    move-object/from16 v16, v17

    move-object v10, v11

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    goto :goto_187

    :catchall_1bb
    move-exception v22

    move-object v6, v7

    move-object/from16 v16, v17

    move-object v10, v11

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    goto :goto_187

    :catch_1c5
    move-exception v8

    goto/16 :goto_12c

    :catch_1c8
    move-exception v8

    move-object/from16 v19, v20

    goto/16 :goto_12c

    :catch_1cd
    move-exception v8

    move-object v12, v13

    move-object/from16 v19, v20

    goto/16 :goto_12c

    :catch_1d3
    move-exception v8

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    goto/16 :goto_12c

    :catch_1da
    move-exception v8

    move-object v10, v11

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    goto/16 :goto_12c

    :catch_1e2
    move-exception v8

    move-object/from16 v16, v17

    move-object v10, v11

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    goto/16 :goto_12c

    :catch_1ec
    move-exception v8

    move-object v6, v7

    move-object/from16 v16, v17

    move-object v10, v11

    move-object v12, v13

    move-object v14, v15

    move-object/from16 v19, v20

    goto/16 :goto_12c

    :catch_1f7
    move-exception v9

    goto/16 :goto_90
.end method

.method private removeTempFile()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-nez v2, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/temp.gz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2e

    :cond_2d
    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    goto :goto_2d
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 4

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "Dumper"

    const-string/jumbo v2, "Failed to close resource."

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private selectDumpInterval()V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v13

    const/16 v19, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    :cond_1a
    :goto_1a
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9e

    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-ltz v21, :cond_1a

    if-eqz v8, :cond_64

    invoke-interface {v13}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v21

    if-eqz v21, :cond_64

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    new-instance v18, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const-string/jumbo v21, "com.android.server.enterprise.auditlog"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_1a

    :cond_64
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-gez v21, :cond_78

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_78
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v17, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const-string/jumbo v21, "com.android.server.enterprise.auditlog"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    :cond_c0
    new-instance v20, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/header"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :try_start_e6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_16a

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_fc} :catch_200
    .catchall {:try_start_e6 .. :try_end_fc} :catchall_1bc

    :try_start_fc
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_10f} :catch_203
    .catchall {:try_start_fc .. :try_end_10f} :catchall_1f8

    const/high16 v21, 0x10000

    :try_start_111
    move/from16 v0, v21

    new-array v2, v0, [B

    :goto_115
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_167

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_124} :catch_125
    .catchall {:try_start_111 .. :try_end_124} :catchall_1fb

    goto :goto_115

    :catch_125
    move-exception v3

    move-object/from16 v15, v16

    move-object v6, v7

    :goto_129
    :try_start_129
    const-string/jumbo v21, "Dumper"

    const-string/jumbo v22, "SelectDumpInterval.Exception"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_143
    .catchall {:try_start_129 .. :try_end_143} :catchall_1bc

    if-eqz v9, :cond_148

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_148
    if-eqz v4, :cond_14d

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_14d
    if-eqz v17, :cond_152

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_152
    if-eqz v18, :cond_157

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_157
    if-eqz v5, :cond_15c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_15c
    if-eqz v6, :cond_161

    :try_start_15e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_1a5

    :cond_161
    :goto_161
    if-eqz v15, :cond_166

    :try_start_163
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_166} :catch_1b0

    :cond_166
    :goto_166
    return-void

    :cond_167
    move-object/from16 v15, v16

    move-object v6, v7

    :cond_16a
    if-eqz v9, :cond_16f

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_16f
    if-eqz v4, :cond_174

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_174
    if-eqz v17, :cond_179

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_179
    if-eqz v18, :cond_17e

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_17e
    if-eqz v5, :cond_183

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_183
    if-eqz v6, :cond_188

    :try_start_185
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_19a

    :cond_188
    :goto_188
    if-eqz v15, :cond_166

    :try_start_18a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18d} :catch_18e

    goto :goto_166

    :catch_18e
    move-exception v11

    const-string/jumbo v21, "Dumper"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    :catch_19a
    move-exception v10

    const-string/jumbo v21, "Dumper"

    const-string/jumbo v22, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_188

    :catch_1a5
    move-exception v10

    const-string/jumbo v21, "Dumper"

    const-string/jumbo v22, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_161

    :catch_1b0
    move-exception v11

    const-string/jumbo v21, "Dumper"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    :catchall_1bc
    move-exception v21

    :goto_1bd
    if-eqz v9, :cond_1c2

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_1c2
    if-eqz v4, :cond_1c7

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1c7
    if-eqz v17, :cond_1cc

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_1cc
    if-eqz v18, :cond_1d1

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_1d1
    if-eqz v5, :cond_1d6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1d6
    if-eqz v6, :cond_1db

    :try_start_1d8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1db} :catch_1e1

    :cond_1db
    :goto_1db
    if-eqz v15, :cond_1e0

    :try_start_1dd
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1e0} :catch_1ec

    :cond_1e0
    :goto_1e0
    throw v21

    :catch_1e1
    move-exception v10

    const-string/jumbo v22, "Dumper"

    const-string/jumbo v23, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1db

    :catch_1ec
    move-exception v11

    const-string/jumbo v22, "Dumper"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e0

    :catchall_1f8
    move-exception v21

    move-object v6, v7

    goto :goto_1bd

    :catchall_1fb
    move-exception v21

    move-object/from16 v15, v16

    move-object v6, v7

    goto :goto_1bd

    :catch_200
    move-exception v3

    goto/16 :goto_129

    :catch_203
    move-exception v3

    move-object v6, v7

    goto/16 :goto_129
.end method


# virtual methods
.method public isCompressed(Ljava/io/File;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_32

    const/4 v5, 0x2

    :try_start_a
    new-array v0, v5, [B

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    if-eqz v0, :cond_16

    array-length v5, v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_39

    if-ge v5, v7, :cond_1c

    :cond_16
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1b
    return v4

    :cond_1c
    const/4 v5, 0x0

    :try_start_1d
    aget-byte v5, v0, v5

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_30

    const/4 v5, 0x1

    aget-byte v5, v0, v5
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_39

    const/16 v6, -0x75

    if-ne v5, v6, :cond_30

    :goto_2a
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2f
    return v3

    :cond_30
    move v3, v4

    goto :goto_2a

    :catchall_32
    move-exception v3

    :goto_33
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_38
    throw v3

    :catchall_39
    move-exception v3

    move-object v1, v2

    goto :goto_33
.end method

.method public run()V
    .registers 7

    const-wide/16 v4, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeader()V

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_11

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2e

    :cond_11
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_32
    .catchall {:try_start_2 .. :try_end_1b} :catchall_86

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_70

    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    :goto_2d
    return-void

    :cond_2e
    :try_start_2e
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_86

    goto :goto_1b

    :catch_32
    move-exception v1

    :try_start_33
    const-string/jumbo v2, "Dumper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run.Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_33 .. :try_end_5d} :catchall_86

    :try_start_5d
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_66} :catch_7b

    :cond_66
    :goto_66
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    goto :goto_2d

    :catch_70
    move-exception v0

    const-string/jumbo v2, "Dumper"

    const-string/jumbo v3, "run.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catch_7b
    move-exception v0

    const-string/jumbo v2, "Dumper"

    const-string/jumbo v3, "run.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :catchall_86
    move-exception v2

    :try_start_87
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_90

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_90} :catch_9a

    :cond_90
    :goto_90
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v3, v4, v5}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    throw v2

    :catch_9a
    move-exception v0

    const-string/jumbo v3, "Dumper"

    const-string/jumbo v4, "run.IOException"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    return-void
.end method
