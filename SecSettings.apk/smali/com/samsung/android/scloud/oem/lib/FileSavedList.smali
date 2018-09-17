.class public Lcom/samsung/android/scloud/oem/lib/FileSavedList;
.super Ljava/util/ArrayList;
.source "FileSavedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fw:Ljava/io/FileWriter;

.field private mTAG:Ljava/lang/String;

.field private processedKeyFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "FileSavedList_"

    iput-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/scloud/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_cd

    :goto_40
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/scloud/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_processedFile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "create : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/scloud/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_processedFile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_b8
    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_e8

    :cond_c0
    :goto_c0
    new-instance v8, Ljava/io/FileWriter;

    iget-object v9, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->fw:Ljava/io/FileWriter;
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ca} :catch_186
    .catchall {:try_start_b8 .. :try_end_ca} :catchall_16b

    if-nez v1, :cond_178

    :cond_cc
    :goto_cc
    return-void

    :cond_cd
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "isDirectoryMade : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_e8
    :try_start_e8
    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_14a

    const/4 v8, 0x1

    :goto_f5
    if-nez v8, :cond_c0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    iget-object v9, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_108} :catch_186
    .catchall {:try_start_e8 .. :try_end_108} :catchall_16b

    const/4 v5, 0x0

    :cond_109
    :goto_109
    :try_start_109
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14c

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_109

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "read : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_131} :catch_132
    .catchall {:try_start_109 .. :try_end_131} :catchall_183

    goto :goto_109

    :catch_132
    move-exception v3

    move-object v1, v2

    :goto_134
    :try_start_134
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    const-string/jumbo v9, "FileSavedList err"

    invoke-static {v8, v9, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13f
    .catchall {:try_start_134 .. :try_end_13f} :catchall_16b

    if-eqz v1, :cond_cc

    :try_start_141
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_145

    goto :goto_cc

    :catch_145
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cc

    :cond_14a
    const/4 v8, 0x0

    goto :goto_f5

    :cond_14c
    :try_start_14c
    invoke-virtual {p0, v7}, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Add prev data : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_168} :catch_132
    .catchall {:try_start_14c .. :try_end_168} :catchall_183

    move-object v1, v2

    goto/16 :goto_c0

    :catchall_16b
    move-exception v0

    :goto_16c
    if-nez v1, :cond_16f

    :goto_16e
    throw v0

    :cond_16f
    :try_start_16f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_173

    goto :goto_16e

    :catch_173
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16e

    :cond_178
    :try_start_178
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17b} :catch_17d

    goto/16 :goto_cc

    :catch_17d
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_cc

    :catchall_183
    move-exception v0

    move-object v1, v2

    goto :goto_16c

    :catch_186
    move-exception v3

    goto :goto_134
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/FileSavedList;
    .registers 3

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/scloud/oem/lib/FileSavedList;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->add(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->fw:Ljava/io/FileWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->fw:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_23

    :goto_1e
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "FileSavedList err"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public clear()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->fw:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clear this : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->processedKeyFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->fw:Ljava/io/FileWriter;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3b} :catch_3f

    :goto_3b
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "FileSavedList err"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b
.end method
