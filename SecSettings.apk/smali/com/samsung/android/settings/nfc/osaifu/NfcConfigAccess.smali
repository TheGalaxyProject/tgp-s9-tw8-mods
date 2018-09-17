.class public Lcom/samsung/android/settings/nfc/osaifu/NfcConfigAccess;
.super Ljava/lang/Object;
.source "NfcConfigAccess.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z
    .registers 10

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "/data/misc/osaifu/osaifu.cfg"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_12

    const/4 v4, 0x0

    :cond_11
    :goto_11
    return v4

    :cond_12
    :try_start_12
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_a2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_a4
    .catchall {:try_start_12 .. :try_end_17} :catchall_92

    :try_start_17
    const-string/jumbo v6, "00001,0"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const-string/jumbo v6, "00001,0"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {v1, v6, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_36} :catch_53
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_36} :catch_7b
    .catchall {:try_start_17 .. :try_end_36} :catchall_9f

    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_8c

    :cond_3b
    :goto_3b
    move-object v0, v1

    goto :goto_11

    :cond_3d
    :try_start_3d
    const-string/jumbo v6, "00001,1"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    const-string/jumbo v6, "00001,1"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {v1, v6, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_52} :catch_53
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_52} :catch_7b
    .catchall {:try_start_3d .. :try_end_52} :catchall_9f

    goto :goto_2c

    :catch_53
    move-exception v2

    move-object v0, v1

    :goto_55
    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_92

    const/4 v4, 0x0

    if-eqz v0, :cond_11

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_11

    :catch_5f
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_63
    const/4 v4, 0x0

    goto :goto_11

    :cond_65
    :try_start_65
    const-string/jumbo v6, "00001,2"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string/jumbo v6, "00001,2"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {v1, v6, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_7a} :catch_53
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_7a} :catch_7b
    .catchall {:try_start_65 .. :try_end_7a} :catchall_9f

    goto :goto_2c

    :catch_7b
    move-exception v3

    move-object v0, v1

    :goto_7d
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_92

    const/4 v4, 0x0

    if-eqz v0, :cond_11

    :try_start_83
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_11

    :catch_87
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :catch_8c
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_3b

    :catchall_92
    move-exception v6

    :goto_93
    if-eqz v0, :cond_98

    :try_start_95
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    :cond_98
    :goto_98
    throw v6

    :catch_99
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_98

    :catchall_9f
    move-exception v6

    move-object v0, v1

    goto :goto_93

    :catch_a2
    move-exception v2

    goto :goto_55

    :catch_a4
    move-exception v3

    goto :goto_7d
.end method
