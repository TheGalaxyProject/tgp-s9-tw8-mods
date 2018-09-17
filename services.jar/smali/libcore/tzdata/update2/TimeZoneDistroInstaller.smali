.class public Llibcore/tzdata/update2/TimeZoneDistroInstaller;
.super Ljava/lang/Object;
.source "TimeZoneDistroInstaller.java"


# static fields
.field private static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field public static final INSTALL_FAIL_BAD_DISTRO_FORMAT_VERSION:I = 0x2

.field public static final INSTALL_FAIL_BAD_DISTRO_STRUCTURE:I = 0x1

.field public static final INSTALL_FAIL_RULES_TOO_OLD:I = 0x3

.field public static final INSTALL_FAIL_VALIDATION_ERROR:I = 0x4

.field public static final INSTALL_SUCCESS:I = 0x0

.field private static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field private static final STAGED_TZ_DATA_DIR_NAME:Ljava/lang/String; = "staged"

.field public static final UNINSTALL_TOMBSTONE_FILE_NAME:Ljava/lang/String; = "STAGED_UNINSTALL_TOMBSTONE"

.field private static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final currentTzDataDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;

.field private final oldStagedDataDir:Ljava/io/File;

.field private final stagedTzDataDir:Ljava/io/File;

.field private final systemTzDataFile:Ljava/io/File;

.field private final workingDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    iput-object p2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->systemTzDataFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "old"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "staged"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "current"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "working"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    return-void
.end method

.method private checkDistroDataFilesExist(Ljava/io/File;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "Verifying distro contents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "tzdata"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "icu/icu_tzdata.dat"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Llibcore/tzdata/shared2/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkDistroRulesNewerThanSystem(Ljava/io/File;Llibcore/tzdata/shared2/DistroVersion;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v4, "Reading /system rules version"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readSystemRulesVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p2, Llibcore/tzdata/shared2/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3c

    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_3e

    iget-object v3, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed rules version check: distroRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", systemRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_15

    :cond_3e
    iget-object v3, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Passed rules version check: distroRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", systemRulesVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1f
    invoke-static {p1}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method private readDistroVersion(Ljava/io/File;)Llibcore/tzdata/shared2/DistroVersion;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/tzdata/shared2/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v3, "Reading distro format version"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "distro_version"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    new-instance v2, Llibcore/tzdata/shared2/DistroException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No distro version file found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Llibcore/tzdata/shared2/DistroException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    sget v2, Llibcore/tzdata/shared2/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    invoke-static {v0, v2}, Llibcore/tzdata/shared2/FileUtils;->readBytes(Ljava/io/File;I)[B

    move-result-object v1

    invoke-static {v1}, Llibcore/tzdata/shared2/DistroVersion;->fromBytes([B)Llibcore/tzdata/shared2/DistroVersion;

    move-result-object v2

    return-object v2
.end method

.method private readSystemRulesVersion(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "tzdata file cannot be found in /system"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system tzdata does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-static {p1}, Llibcore/util/ZoneInfoDB$TzData;->getRulesVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unpackDistro([BLjava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unpacking update content to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Llibcore/tzdata/shared2/TimeZoneDistro;

    invoke-direct {v0, p1}, Llibcore/tzdata/shared2/TimeZoneDistro;-><init>([B)V

    invoke-virtual {v0, p2}, Llibcore/tzdata/shared2/TimeZoneDistro;->extractTo(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method getCurrentTzDataDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getInstalledDistroVersion()Llibcore/tzdata/shared2/DistroVersion;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/tzdata/shared2/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Llibcore/tzdata/shared2/DistroVersion;

    move-result-object v0

    return-object v0
.end method

.method getOldStagedDataDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getStagedDistroOperation()Llibcore/tzdata/shared2/StagedDistroOperation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/tzdata/shared2/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    const-string/jumbo v2, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Llibcore/tzdata/shared2/StagedDistroOperation;->uninstall()Llibcore/tzdata/shared2/StagedDistroOperation;

    move-result-object v0

    return-object v0

    :cond_1f
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Llibcore/tzdata/shared2/DistroVersion;

    move-result-object v0

    invoke-static {v0}, Llibcore/tzdata/shared2/StagedDistroOperation;->install(Llibcore/tzdata/shared2/DistroVersion;)Llibcore/tzdata/shared2/StagedDistroOperation;

    move-result-object v0

    return-object v0
.end method

.method getStagedTzDataDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getSystemRulesVersion()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->systemTzDataFile:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readSystemRulesVersion(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWorkingDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    return-object v0
.end method

.method public install([B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stageInstallWithErrorCode([B)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public stageInstallWithErrorCode([B)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x4

    const/4 v10, 0x1

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v7}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_f
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v7}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_1c
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Unpacking / verifying time zone update"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_24
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, p1, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->unpackDistro([BLjava/io/File;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_183

    :try_start_29
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->readDistroVersion(Ljava/io/File;)Llibcore/tzdata/shared2/DistroVersion;
    :try_end_2e
    .catch Llibcore/tzdata/shared2/DistroException; {:try_start_29 .. :try_end_2e} :catch_44
    .catchall {:try_start_29 .. :try_end_2e} :catchall_183

    move-result-object v0

    if-nez v0, :cond_6d

    :try_start_31
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Update not applied: Distro version could not be loaded"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_183

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v10

    :catch_44
    move-exception v2

    :try_start_45
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid distro version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Llibcore/tzdata/shared2/DistroException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_183

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v10

    :cond_6d
    :try_start_6d
    invoke-static {v0}, Llibcore/tzdata/shared2/DistroVersion;->isCompatibleWithThisDevice(Llibcore/tzdata/shared2/DistroVersion;)Z

    move-result v7

    if-nez v7, :cond_98

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: Distro format version check failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_6d .. :try_end_8c} :catchall_183

    const/4 v7, 0x2

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v7

    :cond_98
    :try_start_98
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->checkDistroDataFilesExist(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_b3

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Update not applied: Distro is missing required data file(s)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_98 .. :try_end_a8} :catchall_183

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v10

    :cond_b3
    :try_start_b3
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->systemTzDataFile:Ljava/io/File;

    invoke-direct {p0, v7, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->checkDistroRulesNewerThanSystem(Ljava/io/File;Llibcore/tzdata/shared2/DistroVersion;)Z

    move-result v7

    if-nez v7, :cond_cf

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Update not applied: Distro rules version check failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_b3 .. :try_end_c3} :catchall_183

    const/4 v7, 0x3

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v7

    :cond_cf
    :try_start_cf
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v8, "tzdata"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llibcore/util/ZoneInfoDB$TzData;->loadTzData(Ljava/lang/String;)Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v4

    if-nez v4, :cond_10e

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " could not be loaded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_cf .. :try_end_103} :catchall_183

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v11

    :cond_10e
    :try_start_10e
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->validate()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_14f
    .catchall {:try_start_10e .. :try_end_111} :catchall_17e

    :try_start_111
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->close()V

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v8, "tzlookup.xml"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_18f

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_111 .. :try_end_144} :catchall_183

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v10

    :catch_14f
    move-exception v1

    :try_start_150
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed validation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_170
    .catchall {:try_start_150 .. :try_end_170} :catchall_17e

    :try_start_170
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->close()V
    :try_end_173
    .catchall {:try_start_170 .. :try_end_173} :catchall_183

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v11

    :catchall_17e
    move-exception v7

    :try_start_17f
    invoke-virtual {v4}, Llibcore/util/ZoneInfoDB$TzData;->close()V

    throw v7
    :try_end_183
    .catchall {:try_start_17f .. :try_end_183} :catchall_183

    :catchall_183
    move-exception v7

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    throw v7

    :cond_18f
    :try_start_18f
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llibcore/util/TimeZoneFinder;->createInstance(Ljava/lang/String;)Llibcore/util/TimeZoneFinder;

    move-result-object v3

    invoke-virtual {v3}, Llibcore/util/TimeZoneFinder;->validate()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_19a} :catch_227
    .catchall {:try_start_18f .. :try_end_19a} :catchall_183

    :try_start_19a
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v8, "Applying time zone update"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v7}, Llibcore/tzdata/shared2/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_253

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Nothing to unstage at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1ca
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Moving "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v7, v8}, Llibcore/tzdata/shared2/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Install staged: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " successfully created"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21b
    .catchall {:try_start_19a .. :try_end_21b} :catchall_183

    const/4 v7, 0x0

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v8}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v7

    :catch_227
    move-exception v1

    :try_start_228
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Update not applied: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed validation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_248
    .catchall {:try_start_228 .. :try_end_248} :catchall_183

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v7}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v11

    :cond_253
    :try_start_253
    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Moving "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v8, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v7, v8}, Llibcore/tzdata/shared2/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_282
    .catchall {:try_start_253 .. :try_end_282} :catchall_183

    goto/16 :goto_1ca
.end method

.method public stageUninstall()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    const-string/jumbo v1, "Uninstalling time zone update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_16
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-static {v0}, Llibcore/tzdata/shared2/FileUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_23
    :try_start_23
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nothing to unstage at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b1

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nothing to uninstall at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->currentTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_23 .. :try_end_69} :catchall_a5

    const/4 v0, 0x0

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v0

    :cond_75
    :try_start_75
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Llibcore/tzdata/shared2/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_a4
    .catchall {:try_start_75 .. :try_end_a4} :catchall_a5

    goto :goto_46

    :catchall_a5
    move-exception v0

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v1}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    throw v0

    :cond_b1
    :try_start_b1
    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/tzdata/shared2/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    const-string/jumbo v2, "STAGED_UNINSTALL_TOMBSTONE"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Llibcore/tzdata/shared2/FileUtils;->createEmptyFile(Ljava/io/File;)V

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    iget-object v1, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-static {v0, v1}, Llibcore/tzdata/shared2/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uninstall staged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->stagedTzDataDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " successfully created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_b1 .. :try_end_115} :catchall_a5

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->oldStagedDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    iget-object v0, p0, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->workingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Llibcore/tzdata/update2/TimeZoneDistroInstaller;->deleteBestEffort(Ljava/io/File;)V

    return v3
.end method
