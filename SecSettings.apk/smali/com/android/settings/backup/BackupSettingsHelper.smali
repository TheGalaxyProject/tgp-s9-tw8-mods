.class public Lcom/android/settings/backup/BackupSettingsHelper;
.super Ljava/lang/Object;
.source "BackupSettingsHelper.java"


# instance fields
.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getIntentForDefaultBackupSettings()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/Settings$PrivacySettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "show_drawer_menu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getIntentFromBackupTransport()Landroid/content/Intent;
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget-object v3, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "BackupSettingsHelper"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz v1, :cond_38

    const-string/jumbo v2, "BackupSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parsed intent from backup transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    return-object v1

    :cond_38
    const-string/jumbo v2, "BackupSettingsHelper"

    const-string/jumbo v3, "Received a null intent from backup transport"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_41} :catch_42

    goto :goto_37

    :catch_42
    move-exception v0

    const-string/jumbo v2, "BackupSettingsHelper"

    const-string/jumbo v3, "Error getting data management intent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method private isBackupServiceActive()Z
    .registers 5

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v1

    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public getIntentForBackupSettings()Landroid/content/Intent;
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->isIntentProvidedByTransport()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForBackupSettingsFromTransport()Landroid/content/Intent;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string/jumbo v1, "BackupSettingsHelper"

    const-string/jumbo v2, "Backup transport has not provided an intent or the component for the intent is not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForDefaultBackupSettings()Landroid/content/Intent;

    move-result-object v0

    goto :goto_a
.end method

.method getIntentForBackupSettingsFromTransport()Landroid/content/Intent;
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentFromBackupTransport()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string/jumbo v1, "backup_services_available"

    invoke-direct {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->isBackupServiceActive()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    return-object v0
.end method

.method public getIntentProvidedByManufacturer()Landroid/content/Intent;
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v2, "BackupSettingsHelper"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "BackupSettingsHelper"

    const-string/jumbo v3, "Getting a backup settings intent provided by manufacturer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120620

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3b

    const/4 v2, 0x0

    :try_start_2c
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2f
    .catch Ljava/net/URISyntaxException; {:try_start_2c .. :try_end_2f} :catch_31

    move-result-object v2

    return-object v2

    :catch_31
    move-exception v0

    const-string/jumbo v2, "BackupSettingsHelper"

    const-string/jumbo v3, "Invalid intent provided by the manufacturer."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    return-object v4
.end method

.method public getLabelForBackupSettings()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getLabelFromBackupTransport()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_c
    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f121549

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method getLabelFromBackupTransport()Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget-object v3, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BackupSettingsHelper"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "BackupSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received the backup settings label from backup transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    :cond_30
    return-object v1

    :catch_31
    move-exception v0

    const-string/jumbo v2, "BackupSettingsHelper"

    const-string/jumbo v3, "Error getting data management label"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public getLabelProvidedByManufacturer()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120621

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForBackupSettings()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getSummaryFromBackupTransport()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f1202f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method getSummaryFromBackupTransport()Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget-object v3, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BackupSettingsHelper"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "BackupSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received the backup settings summary from backup transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    :cond_30
    return-object v1

    :catch_31
    move-exception v0

    const-string/jumbo v2, "BackupSettingsHelper"

    const-string/jumbo v3, "Error getting data management summary"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public isBackupProvidedByManufacturer()Z
    .registers 4

    const-string/jumbo v1, "BackupSettingsHelper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "BackupSettingsHelper"

    const-string/jumbo v2, "Checking if intent provided by manufacturer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_28
    return v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method isIntentProvidedByTransport()Z
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentFromBackupTransport()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method
