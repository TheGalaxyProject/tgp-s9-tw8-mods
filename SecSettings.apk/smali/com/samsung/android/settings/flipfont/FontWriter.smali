.class public Lcom/samsung/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# instance fields
.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    const/4 v2, 0x0

    :goto_c
    array-length v5, v4

    if-ge v2, v5, :cond_1c

    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 22

    move-object/from16 v12, p2

    move-object/from16 v11, p1

    move-object/from16 v10, p3

    const/4 v5, 0x0

    :try_start_7
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6c

    new-instance v15, Ljava/lang/Exception;

    const-string/jumbo v16, "Directory traversal attack!"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_27} :catch_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_ab

    :catch_27
    move-exception v6

    const/4 v5, 0x1

    :try_start_29
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-nez v15, :cond_3f

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_3f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_ab

    if-eqz p2, :cond_47

    :try_start_44
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    :cond_47
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_54

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_54} :catch_e9

    :cond_54
    :goto_54
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-nez v15, :cond_6b

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const/4 v5, 0x1

    :cond_6b
    return v5

    :cond_6c
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v13, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v15, 0x400

    new-array v2, v15, [B

    const/4 v14, 0x0

    :goto_9e
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_c3

    const/4 v15, 0x0

    invoke-virtual {v13, v2, v15, v14}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_aa} :catch_27
    .catchall {:try_start_6c .. :try_end_aa} :catchall_ab

    goto :goto_9e

    :catchall_ab
    move-exception v15

    if-eqz p2, :cond_b1

    :try_start_ae
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_c2} :catch_e7

    :cond_c2
    :goto_c2
    throw v15

    :cond_c3
    :try_start_c3
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d0} :catch_27
    .catchall {:try_start_c3 .. :try_end_d0} :catchall_ab

    if-eqz p2, :cond_d5

    :try_start_d2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    :cond_d5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_54

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_e2} :catch_e4

    goto/16 :goto_54

    :catch_e4
    move-exception v4

    goto/16 :goto_54

    :catch_e7
    move-exception v4

    goto :goto_c2

    :catch_e9
    move-exception v4

    goto/16 :goto_54
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/app_fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    return-object v0
.end method

.method public deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/app_fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    const/4 v1, 0x0

    :goto_2d
    array-length v5, v4

    if-ge v1, v5, :cond_40

    aget-object v5, v4, v1

    invoke-virtual {v5, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3d

    aget-object v5, v4, v1

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_40
    return-void
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/app_fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "Directory traversal attack!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_b7

    :catch_3d
    move-exception v3

    :try_start_3e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_b7

    :try_start_41
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_4a

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    :cond_4a
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_53} :catch_cd

    :cond_53
    :goto_53
    const-string/jumbo v5, "persist.sys.flipfontpath"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_a2} :catch_3d
    .catchall {:try_start_5d .. :try_end_a2} :catchall_b7

    :try_start_a2
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_ab

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    :cond_ab
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b4} :catch_b5

    goto :goto_53

    :catch_b5
    move-exception v2

    goto :goto_53

    :catchall_b7
    move-exception v5

    :try_start_b8
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v6, :cond_c1

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    :cond_c1
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_ca

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ca} :catch_cb

    :cond_ca
    :goto_ca
    throw v5

    :catch_cb
    move-exception v2

    goto :goto_ca

    :catch_cd
    move-exception v2

    goto :goto_53
.end method
