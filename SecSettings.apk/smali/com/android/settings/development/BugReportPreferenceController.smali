.class public Lcom/android/settings/development/BugReportPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "BugReportPreferenceController.java"


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/development/BugReportPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/development/BugReportPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "bugreport"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BugReportPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    :cond_12
    return-void
.end method

.method public enablePreference(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/development/BugReportPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/development/BugReportPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "bugreport"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/development/BugReportPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
