.class public Lcom/android/settings/accounts/AutoSyncPersonalDataPreferenceController;
.super Lcom/android/settings/accounts/AutoSyncDataPreferenceController;
.source "AutoSyncPersonalDataPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accounts/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "auto_sync_personal_account_data"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accounts/AutoSyncPersonalDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/android/settings/accounts/AutoSyncPersonalDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/settings/accounts/AutoSyncPersonalDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_25

    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24

    :cond_27
    move v0, v1

    goto :goto_24
.end method
