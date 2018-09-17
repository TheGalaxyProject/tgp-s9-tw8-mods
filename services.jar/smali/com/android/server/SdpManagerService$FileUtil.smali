.class Lcom/android/server/SdpManagerService$FileUtil;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileUtil"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 14

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_79
    .catchall {:try_start_4 .. :try_end_9} :catchall_70

    :try_start_9
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_7b
    .catchall {:try_start_9 .. :try_end_e} :catchall_72

    const/16 v8, 0x400

    :try_start_10
    new-array v0, v8, [B

    :goto_12
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_39

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1c} :catch_1d
    .catchall {:try_start_10 .. :try_end_1c} :catchall_75

    goto :goto_12

    :catch_1d
    move-exception v8

    move-object v5, v6

    move-object v2, v3

    :goto_20
    :try_start_20
    throw v8
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_25
    if-eqz v5, :cond_2a

    :try_start_27
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_34

    :cond_2a
    move-object v10, v9

    :cond_2b
    :goto_2b
    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_65
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_34

    :cond_30
    move-object v9, v10

    :cond_31
    :goto_31
    if-eqz v9, :cond_6f

    :try_start_33
    throw v9
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_34} :catch_34

    :catch_34
    move-exception v1

    :goto_35
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    return v7

    :cond_39
    const/4 v7, 0x1

    if-eqz v6, :cond_3f

    :try_start_3c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_48

    :cond_3f
    :goto_3f
    if-eqz v3, :cond_44

    :try_start_41
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_48

    :cond_44
    move-object v8, v9

    :cond_45
    :goto_45
    if-eqz v8, :cond_58

    :try_start_47
    throw v8

    :catch_48
    move-exception v1

    move-object v5, v6

    move-object v2, v3

    goto :goto_35

    :catch_4c
    move-exception v9

    goto :goto_3f

    :catch_4e
    move-exception v8

    if-eqz v9, :cond_45

    if-eq v9, v8, :cond_44

    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_48

    move-object v8, v9

    goto :goto_45

    :cond_58
    move-object v5, v6

    move-object v2, v3

    goto :goto_38

    :catch_5b
    move-exception v10

    if-eqz v9, :cond_2b

    if-eq v9, v10, :cond_2a

    :try_start_60
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v9

    goto :goto_2b

    :catch_65
    move-exception v9

    if-eqz v10, :cond_31

    if-eq v10, v9, :cond_30

    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v10

    goto :goto_31

    :cond_6f
    throw v8
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_70} :catch_34

    :catchall_70
    move-exception v8

    goto :goto_25

    :catchall_72
    move-exception v8

    move-object v2, v3

    goto :goto_25

    :catchall_75
    move-exception v8

    move-object v5, v6

    move-object v2, v3

    goto :goto_25

    :catch_79
    move-exception v8

    goto :goto_20

    :catch_7b
    move-exception v8

    move-object v2, v3

    goto :goto_20
.end method

.method static exists(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static exists(Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v1, 0x0

    return v1

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SdpManagerService$FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method static getEncUserDir(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "enc_user"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getUserSystemDir(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
