.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;,
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mParentFragment:Landroid/app/Fragment;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v2, "remove_account"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a012a

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "remove_account"

    return-object v0
.end method

.method public init(Landroid/accounts/Account;Landroid/os/UserHandle;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->show(Landroid/app/Fragment;Landroid/accounts/Account;Landroid/os/UserHandle;)Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    return-void
.end method
