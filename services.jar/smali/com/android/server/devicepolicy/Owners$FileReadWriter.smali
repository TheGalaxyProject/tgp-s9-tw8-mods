.class abstract Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FileReadWriter"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method readFromFileLocked()V
    .registers 11

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_a

    return-void

    :cond_a
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v2, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_24
    :goto_24
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v8, :cond_6a

    packed-switch v6, :pswitch_data_82

    goto :goto_24

    :pswitch_2e
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-ne v0, v8, :cond_60

    const-string/jumbo v7, "root"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    const-string/jumbo v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid root tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_59} :catch_6e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_59} :catch_6e
    .catchall {:try_start_12 .. :try_end_59} :catchall_7c

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :pswitch_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_60
    :try_start_60
    invoke-virtual {p0, v4, v0, v5}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    :try_end_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_63} :catch_6e
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6e
    .catchall {:try_start_60 .. :try_end_63} :catchall_7c

    move-result v7

    if-nez v7, :cond_24

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_6a
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_6d
    return-void

    :catch_6e
    move-exception v1

    :try_start_6f
    const-string/jumbo v7, "DevicePolicyManagerService"

    const-string/jumbo v8, "Error parsing owners information file"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_7c

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6d

    :catchall_7c
    move-exception v7

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    nop

    :pswitch_data_82
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_5d
    .end packed-switch
.end method

.method abstract readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
.end method

.method abstract shouldWrite()Z
.end method

.method abstract writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method writeToFileLocked()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->shouldWrite()Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_36

    const-string/jumbo v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void

    :cond_37
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :try_start_3f
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "root"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->writeInner(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "root"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_74} :catch_76

    const/4 v3, 0x0

    :cond_75
    :goto_75
    return-void

    :catch_76
    move-exception v0

    const-string/jumbo v4, "DevicePolicyManagerService"

    const-string/jumbo v5, "Exception when writing"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_75

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_75
.end method
