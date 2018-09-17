.class public Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;
.super Lcom/android/settings/accounts/AutoSyncPersonalDataPreferenceController;
.source "AutoSyncWorkDataPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    iget-object v0, p0, Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfileWithDisabled(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "auto_sync_work_account_data"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v3}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v3}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_2b

    :goto_2a
    return v1

    :cond_2b
    move v1, v2

    goto :goto_2a

    :cond_2d
    move v1, v2

    goto :goto_2a
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/accounts/AutoSyncPersonalDataPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_17

    const v1, 0x7f1200bb

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/accounts/AutoSyncWorkDataPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_16

    const v1, 0x7f1200bc

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    goto :goto_16
.end method
