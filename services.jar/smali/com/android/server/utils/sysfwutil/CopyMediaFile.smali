.class public Lcom/android/server/utils/sysfwutil/CopyMediaFile;
.super Ljava/lang/Object;
.source "CopyMediaFile.java"


# static fields
.field private static final FILE_MODE:I = 0x1fd

.field private static final FOLDER_MODE:I = 0x1b4

.field private static final MEDIA_FILE_PATH_SOURCE:Ljava/io/File;

.field private static final MEDIA_FILE_PATH_TARGET:Ljava/io/File;

.field private static final PROPERTY_FIRST_BOOT:Ljava/lang/String; = "persist.sys.vold.firstboot"

.field private static final TAG:Ljava/lang/String; = "CopyMediaFile"

.field private static copySuccess:Z = false

.field private static firstBoot:Z = false

.field private static hasOdmPath:Z = false

.field private static final media_rw:I = 0x3ff


# instance fields
.field private fin:Ljava/io/FileInputStream;

.field private fis:Ljava/io/FileInputStream;

.field private fos:Ljava/io/FileOutputStream;

.field private fout:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/hidden/INTERNAL_SDCARD"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_SOURCE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/media/0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_TARGET:Ljava/io/File;

    sput-boolean v2, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->firstBoot:Z

    sput-boolean v2, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->hasOdmPath:Z

    sput-boolean v2, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copySuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fis:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fos:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    iput-object v0, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    const-string/jumbo v0, "CopyMediaFile"

    const-string/jumbo v1, "Started : CopyMediaFile"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .registers 14

    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " src : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / dest : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_ab

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3d

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    :try_start_34
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1fd

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3d
    .catch Landroid/system/ErrnoException; {:try_start_34 .. :try_end_3d} :catch_4b

    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_4a

    array-length v8, v4

    if-gtz v8, :cond_67

    :cond_4a
    return-void

    :catch_4b
    move-exception v2

    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error chmod or chown "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_67
    const/4 v6, 0x0

    :goto_68
    array-length v8, v4

    if-ge v6, v8, :cond_f9

    if-eqz v1, :cond_99

    array-length v8, v1

    if-ge v6, v8, :cond_99

    aget-object v8, v4, v6

    aget-object v9, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File already Exists: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    :cond_99
    new-instance v8, Ljava/io/File;

    aget-object v9, v4, v6

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    aget-object v10, v4, v6

    invoke-direct {v9, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v8, v9}, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_96

    :cond_ab
    :try_start_ab
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    const/16 v8, 0x400

    new-array v0, v8, [B

    :goto_bd
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_fa

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_cb
    .catch Ljava/io/FileNotFoundException; {:try_start_ab .. :try_end_cb} :catch_cc
    .catch Landroid/system/ErrnoException; {:try_start_ab .. :try_end_cb} :catch_13f
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_cb} :catch_126
    .catchall {:try_start_ab .. :try_end_cb} :catchall_16f

    goto :goto_bd

    :catch_cc
    move-exception v5

    :try_start_cd
    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File not found : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_cd .. :try_end_e7} :catchall_16f

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v8, :cond_f0

    :try_start_eb
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f0} :catch_18a

    :cond_f0
    :goto_f0
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_f9

    :try_start_f4
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f9} :catch_187

    :cond_f9
    :goto_f9
    return-void

    :cond_fa
    :try_start_fa
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1fd

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_111
    .catch Ljava/io/FileNotFoundException; {:try_start_fa .. :try_end_111} :catch_cc
    .catch Landroid/system/ErrnoException; {:try_start_fa .. :try_end_111} :catch_13f
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_111} :catch_126
    .catchall {:try_start_fa .. :try_end_111} :catchall_16f

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v8, :cond_11a

    :try_start_115
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11a} :catch_191

    :cond_11a
    :goto_11a
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_f9

    :try_start_11e
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_123} :catch_124

    goto :goto_f9

    :catch_124
    move-exception v3

    goto :goto_f9

    :catch_126
    move-exception v3

    :try_start_127
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_16f

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v8, :cond_133

    :try_start_12e
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_133} :catch_18f

    :cond_133
    :goto_133
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_f9

    :try_start_137
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13c} :catch_13d

    goto :goto_f9

    :catch_13d
    move-exception v3

    goto :goto_f9

    :catch_13f
    move-exception v2

    :try_start_140
    const-string/jumbo v8, "CopyMediaFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error chmod or chown "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catchall {:try_start_140 .. :try_end_15a} :catchall_16f

    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v8, :cond_163

    :try_start_15e
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_163} :catch_18d

    :cond_163
    :goto_163
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_f9

    :try_start_167
    iget-object v8, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16c} :catch_16d

    goto :goto_f9

    :catch_16d
    move-exception v3

    goto :goto_f9

    :catchall_16f
    move-exception v8

    iget-object v9, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    if-eqz v9, :cond_179

    :try_start_174
    iget-object v9, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fin:Ljava/io/FileInputStream;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_179} :catch_185

    :cond_179
    :goto_179
    iget-object v9, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    if-eqz v9, :cond_182

    :try_start_17d
    iget-object v9, p0, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_182} :catch_183

    :cond_182
    :goto_182
    throw v8

    :catch_183
    move-exception v3

    goto :goto_182

    :catch_185
    move-exception v3

    goto :goto_179

    :catch_187
    move-exception v3

    goto/16 :goto_f9

    :catch_18a
    move-exception v3

    goto/16 :goto_f0

    :catch_18d
    move-exception v3

    goto :goto_163

    :catch_18f
    move-exception v3

    goto :goto_133

    :catch_191
    move-exception v3

    goto :goto_11a
.end method


# virtual methods
.method public copyMpFile()V
    .registers 5

    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "copyMpFile++"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    sget-object v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_SOURCE:Ljava/io/File;

    sget-object v2, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->MEDIA_FILE_PATH_TARGET:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copySuccess:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_1d

    :goto_13
    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "copyMpFile--"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1d
    move-exception v0

    const-string/jumbo v1, "CopyMediaFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "copyMpFile Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo v0, "CopyMediaFile: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " firstBoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->firstBoot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " hasOdmPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->hasOdmPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " copySuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->copySuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public hasOdm()Z
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/odm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "Odm is exist!"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->hasOdmPath:Z

    return v3

    :cond_1b
    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "Odm is not eexist"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isFirstBoot()Z
    .registers 5

    const/4 v3, 0x1

    const-string/jumbo v1, "persist.sys.vold.firstboot"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "This is not a first boot!"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1c
    const-string/jumbo v1, "CopyMediaFile"

    const-string/jumbo v2, "This is a first boot!, So set property"

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.sys.vold.firstboot"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/server/utils/sysfwutil/CopyMediaFile;->firstBoot:Z

    return v3
.end method
