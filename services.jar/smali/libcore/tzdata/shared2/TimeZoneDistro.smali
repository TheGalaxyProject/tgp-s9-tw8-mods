.class public final Llibcore/tzdata/shared2/TimeZoneDistro;
.super Ljava/lang/Object;
.source "TimeZoneDistro.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final DISTRO_VERSION_FILE_NAME:Ljava/lang/String; = "distro_version"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field private static final MAX_GET_ENTRY_CONTENTS_SIZE:J = 0x20000L

.field public static final TZDATA_FILE_NAME:Ljava/lang/String; = "tzdata"

.field public static final TZLOOKUP_FILE_NAME:Ljava/lang/String; = "tzlookup.xml"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/tzdata/shared2/TimeZoneDistro;->bytes:[B

    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p1 .. p2}, Llibcore/tzdata/shared2/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    const/4 v12, 0x0

    const/4 v8, 0x0

    :try_start_5
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_b0
    .catchall {:try_start_5 .. :try_end_a} :catchall_ad

    const/16 v10, 0x2000

    :try_start_c
    new-array v1, v10, [B

    :cond_e
    :goto_e
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_96

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Llibcore/tzdata/shared2/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_39

    move/from16 v0, p2

    invoke-static {v4, v0}, Llibcore/tzdata/shared2/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_29} :catch_2a
    .catchall {:try_start_c .. :try_end_29} :catchall_6e

    goto :goto_e

    :catch_2a
    move-exception v10

    move-object v8, v9

    :goto_2c
    :try_start_2c
    throw v10
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_31
    if-eqz v8, :cond_36

    :try_start_33
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_a0

    :cond_36
    :goto_36
    if-eqz v11, :cond_ab

    throw v11

    :cond_39
    :try_start_39
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4c

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    move/from16 v0, p2

    invoke-static {v10, v0}, Llibcore/tzdata/shared2/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_4c} :catch_2a
    .catchall {:try_start_39 .. :try_end_4c} :catchall_6e

    :cond_4c
    const/4 v11, 0x0

    const/4 v5, 0x0

    :try_start_4e
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_53} :catch_b8
    .catchall {:try_start_4e .. :try_end_53} :catchall_b3

    :goto_53
    :try_start_53
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_72

    const/4 v10, 0x0

    invoke-virtual {v6, v1, v10, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_5e} :catch_5f
    .catchall {:try_start_53 .. :try_end_5e} :catchall_b5

    goto :goto_53

    :catch_5f
    move-exception v10

    move-object v5, v6

    :goto_61
    :try_start_61
    throw v10
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_66
    if-eqz v5, :cond_6b

    :try_start_68
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_83
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6e

    :cond_6b
    :goto_6b
    if-eqz v11, :cond_8e

    :try_start_6d
    throw v11
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6e} :catch_2a
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v10

    move-object v8, v9

    move-object v11, v12

    goto :goto_31

    :cond_72
    :try_start_72
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_79} :catch_5f
    .catchall {:try_start_72 .. :try_end_79} :catchall_b5

    if-eqz v6, :cond_7e

    :try_start_7b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_81
    .catchall {:try_start_7b .. :try_end_7e} :catchall_6e

    :cond_7e
    :goto_7e
    if-eqz v11, :cond_8f

    :try_start_80
    throw v11

    :catch_81
    move-exception v11

    goto :goto_7e

    :catch_83
    move-exception v13

    if-nez v11, :cond_88

    move-object v11, v13

    goto :goto_6b

    :cond_88
    if-eq v11, v13, :cond_6b

    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6b

    :cond_8e
    throw v10

    :cond_8f
    if-eqz p2, :cond_e

    invoke-static {v4}, Llibcore/tzdata/shared2/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_94} :catch_2a
    .catchall {:try_start_80 .. :try_end_94} :catchall_6e

    goto/16 :goto_e

    :cond_96
    if-eqz v9, :cond_9b

    :try_start_98
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9b} :catch_9e

    :cond_9b
    :goto_9b
    if-eqz v12, :cond_ac

    throw v12

    :catch_9e
    move-exception v12

    goto :goto_9b

    :catch_a0
    move-exception v12

    if-nez v11, :cond_a5

    move-object v11, v12

    goto :goto_36

    :cond_a5
    if-eq v11, v12, :cond_36

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_36

    :cond_ab
    throw v10

    :cond_ac
    return-void

    :catchall_ad
    move-exception v10

    move-object v11, v12

    goto :goto_31

    :catch_b0
    move-exception v10

    goto/16 :goto_2c

    :catchall_b3
    move-exception v10

    goto :goto_66

    :catchall_b5
    move-exception v10

    move-object v5, v6

    goto :goto_66

    :catch_b8
    move-exception v10

    goto :goto_61
.end method

.method private static getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v8, 0x0

    :try_start_2
    new-instance v9, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_ce
    .catchall {:try_start_2 .. :try_end_9} :catchall_cb

    :cond_9
    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_b3

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    const-wide/32 v14, 0x20000

    cmp-long v10, v10, v14

    if-lez v10, :cond_62

    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Entry "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " too large: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_51} :catch_51
    .catchall {:try_start_9 .. :try_end_51} :catchall_8a

    :catch_51
    move-exception v10

    move-object v8, v9

    :goto_53
    :try_start_53
    throw v10
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v11

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    :goto_5a
    if-eqz v8, :cond_5f

    :try_start_5c
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_bf

    :cond_5f
    :goto_5f
    if-eqz v11, :cond_ca

    throw v11

    :cond_62
    const/16 v10, 0x2000

    :try_start_64
    new-array v4, v10, [B
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_66} :catch_51
    .catchall {:try_start_64 .. :try_end_66} :catchall_8a

    const/4 v11, 0x0

    const/4 v2, 0x0

    :try_start_68
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6d} :catch_d5
    .catchall {:try_start_68 .. :try_end_6d} :catchall_d0

    :goto_6d
    :try_start_6d
    invoke-virtual {v9, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_8e

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_78} :catch_79
    .catchall {:try_start_6d .. :try_end_78} :catchall_d2

    goto :goto_6d

    :catch_79
    move-exception v10

    move-object v2, v3

    :goto_7b
    :try_start_7b
    throw v10
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v11

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    :goto_82
    if-eqz v2, :cond_87

    :try_start_84
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_a7
    .catchall {:try_start_84 .. :try_end_87} :catchall_8a

    :cond_87
    :goto_87
    if-eqz v11, :cond_b2

    :try_start_89
    throw v11
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_8a} :catch_51
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v10

    move-object v8, v9

    move-object v11, v12

    goto :goto_5a

    :cond_8e
    :try_start_8e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_79
    .catchall {:try_start_8e .. :try_end_91} :catchall_d2

    move-result-object v10

    if-eqz v3, :cond_97

    :try_start_94
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_97} :catch_9a
    .catchall {:try_start_94 .. :try_end_97} :catchall_8a

    :cond_97
    :goto_97
    if-eqz v11, :cond_9c

    :try_start_99
    throw v11
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9a} :catch_51
    .catchall {:try_start_99 .. :try_end_9a} :catchall_8a

    :catch_9a
    move-exception v11

    goto :goto_97

    :cond_9c
    if-eqz v9, :cond_a1

    :try_start_9e
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a1} :catch_a4

    :cond_a1
    :goto_a1
    if-eqz v12, :cond_a6

    throw v12

    :catch_a4
    move-exception v12

    goto :goto_a1

    :cond_a6
    return-object v10

    :catch_a7
    move-exception v13

    if-nez v11, :cond_ac

    move-object v11, v13

    goto :goto_87

    :cond_ac
    if-eq v11, v13, :cond_87

    :try_start_ae
    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_87

    :cond_b2
    throw v10
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b3} :catch_51
    .catchall {:try_start_ae .. :try_end_b3} :catchall_8a

    :cond_b3
    const/4 v10, 0x0

    if-eqz v9, :cond_b9

    :try_start_b6
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b9} :catch_bc

    :cond_b9
    :goto_b9
    if-eqz v12, :cond_be

    throw v12

    :catch_bc
    move-exception v12

    goto :goto_b9

    :cond_be
    return-object v10

    :catch_bf
    move-exception v12

    if-nez v11, :cond_c4

    move-object v11, v12

    goto :goto_5f

    :cond_c4
    if-eq v11, v12, :cond_5f

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5f

    :cond_ca
    throw v10

    :catchall_cb
    move-exception v10

    move-object v11, v12

    goto :goto_5a

    :catch_ce
    move-exception v10

    goto :goto_53

    :catchall_d0
    move-exception v10

    goto :goto_82

    :catchall_d2
    move-exception v10

    move-object v2, v3

    goto :goto_82

    :catch_d5
    move-exception v10

    goto :goto_7b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Llibcore/tzdata/shared2/TimeZoneDistro;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_11
    return v3

    :cond_12
    move-object v0, p1

    check-cast v0, Llibcore/tzdata/shared2/TimeZoneDistro;

    iget-object v1, p0, Llibcore/tzdata/shared2/TimeZoneDistro;->bytes:[B

    iget-object v2, v0, Llibcore/tzdata/shared2/TimeZoneDistro;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_20

    return v3

    :cond_20
    return v4
.end method

.method public extractTo(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Llibcore/tzdata/shared2/TimeZoneDistro;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Llibcore/tzdata/shared2/TimeZoneDistro;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    return-void
.end method

.method public getBytes()[B
    .registers 2

    iget-object v0, p0, Llibcore/tzdata/shared2/TimeZoneDistro;->bytes:[B

    return-object v0
.end method

.method public getDistroVersion()Llibcore/tzdata/shared2/DistroVersion;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/tzdata/shared2/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Llibcore/tzdata/shared2/TimeZoneDistro;->bytes:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v2, "distro_version"

    invoke-static {v1, v2}, Llibcore/tzdata/shared2/TimeZoneDistro;->getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v1, Llibcore/tzdata/shared2/DistroException;

    const-string/jumbo v2, "Distro version file entry not found"

    invoke-direct {v1, v2}, Llibcore/tzdata/shared2/DistroException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    invoke-static {v0}, Llibcore/tzdata/shared2/DistroVersion;->fromBytes([B)Llibcore/tzdata/shared2/DistroVersion;

    move-result-object v1

    return-object v1
.end method
