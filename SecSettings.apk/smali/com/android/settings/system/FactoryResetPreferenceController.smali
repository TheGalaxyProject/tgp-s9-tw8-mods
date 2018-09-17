.class public Lcom/android/settings/system/FactoryResetPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "FactoryResetPreferenceController.java"


# instance fields
.field private final mAm:Landroid/accounts/AccountManager;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/system/FactoryResetPreferenceController;->mUm:Landroid/os/UserManager;

    const-string/jumbo v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/android/settings/system/FactoryResetPreferenceController;->mAm:Landroid/accounts/AccountManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "factory_reset"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/system/FactoryResetPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 12

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/settings/system/FactoryResetPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    iget-object v6, p0, Lcom/android/settings/system/FactoryResetPreferenceController;->mAm:Landroid/accounts/AccountManager;

    invoke-virtual {v6, v2}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    array-length v6, v0

    add-int/2addr v1, v6

    goto :goto_10

    :cond_27
    if-nez v1, :cond_30

    const v6, 0x7f121133

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_2f
    return-void

    :cond_30
    iget-object v6, p0, Lcom/android/settings/system/FactoryResetPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x7f100023

    invoke-virtual {v6, v8, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method
