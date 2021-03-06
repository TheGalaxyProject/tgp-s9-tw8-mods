.class public Lcom/att/iqi/IQIBridgeLoader;
.super Ljava/lang/Object;
.source "IQIBridgeLoader.java"


# static fields
.field private static final BRIDGE_LIBRARY_NAME:Ljava/lang/String;

.field private static final BRIDGE_LIBRARY_PATH:Ljava/lang/String; = "/system/carrier/priv-app/AttIqi_ATT/lib/"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "IQIBridgeLoader"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "iqi_bridge"

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyBridgeLibrary(Ljava/lang/String;)V
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v5, v8, [Ljava/lang/String;

    sget-object v6, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {p0, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "/system/carrier/priv-app/AttIqi_ATT/lib/"

    new-array v6, v9, [Ljava/lang/String;

    aput-object v0, v6, v7

    sget-object v7, Lcom/att/iqi/IQIBridgeLoader;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    const-string/jumbo v5, "IQIBridgeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageLibrary ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] systemLibrary ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v4}, Lcom/att/iqi/IQIBridgeLoader;->shouldCopy(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_b9

    const-string/jumbo v5, "IQIBridgeLoader"

    const-string/jumbo v6, "Performing copy..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    :try_start_62
    new-array v5, v5, [Ljava/nio/file/CopyOption;

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v2, v5}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    new-instance v3, Ljava/util/HashSet;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v7, 0x4

    aput-object v6, v5, v7

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v7, 0x5

    aput-object v6, v5, v7

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v7, 0x6

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    const-string/jumbo v5, "IQIBridgeLoader"

    const-string/jumbo v6, "Copy completed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_ac} :catch_ad

    :goto_ac
    return-void

    :catch_ad
    move-exception v1

    const-string/jumbo v5, "IQIBridgeLoader"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    :cond_b9
    const-string/jumbo v5, "IQIBridgeLoader"

    const-string/jumbo v6, "No copy needed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x400

    :try_start_7
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_13

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v4

    :catch_12
    move-exception v1

    :cond_13
    return-object v5
.end method

.method static loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/att/iqi/IQIBridgeLoader;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/att/iqi/IQIBridgeLoader;->copyBridgeLibrary(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static shouldCopy(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v11}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    new-array v11, v10, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v11}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    const-wide/16 v2, -0x1

    const-wide/16 v6, -0x1

    if-eqz v1, :cond_25

    :try_start_14
    const-class v11, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v11, v12}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/file/attribute/FileTime;->toMillis()J
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_24} :catch_83

    move-result-wide v2

    :cond_25
    :goto_25
    if-eqz v8, :cond_38

    :try_start_27
    const-class v11, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v11, v12}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/file/attribute/FileTime;->toMillis()J
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_37} :catch_8f

    move-result-wide v6

    :cond_38
    :goto_38
    const-string/jumbo v11, "IQIBridgeLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "appLibraryExists ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] systemLibraryExists ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] appLibraryCreationDate ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] systemLibraryCreationDate ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_9d

    if-eqz v1, :cond_82

    cmp-long v11, v6, v2

    if-lez v11, :cond_9b

    :cond_82
    :goto_82
    return v9

    :catch_83
    move-exception v4

    const-string/jumbo v11, "IQIBridgeLoader"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    :catch_8f
    move-exception v4

    const-string/jumbo v11, "IQIBridgeLoader"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :cond_9b
    move v9, v10

    goto :goto_82

    :cond_9d
    move v9, v10

    goto :goto_82
.end method
