.class public Lcom/android/settings/backup/BackupSettingsActivity;
.super Landroid/app/Activity;
.source "BackupSettingsActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/BackupSettingsActivity$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/backup/BackupSettingsActivity$1;

    invoke-direct {v0}, Lcom/android/settings/backup/BackupSettingsActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/BackupSettingsActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/backup/BackupSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->isBackupProvidedByManufacturer()Z

    move-result v2

    if-nez v2, :cond_38

    const-string/jumbo v2, "BackupSettingsActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string/jumbo v2, "BackupSettingsActivity"

    const-string/jumbo v3, "No manufacturer settings found, launching the backup settings directly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForBackupSettings()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/backup/BackupSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->finish()V

    :goto_37
    return-void

    :cond_38
    const-string/jumbo v2, "BackupSettingsActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string/jumbo v2, "BackupSettingsActivity"

    const-string/jumbo v3, "Manufacturer provided backup settings, showing the preference screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v2, :cond_54

    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    :cond_54
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    new-instance v3, Lcom/android/settings/backup/BackupSettingsFragment;

    invoke-direct {v3}, Lcom/android/settings/backup/BackupSettingsFragment;-><init>()V

    const v4, 0x1020002

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_37
.end method

.method setFragmentManager(Landroid/app/FragmentManager;)V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method
