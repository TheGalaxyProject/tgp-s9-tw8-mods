.class public abstract Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "DefaultAppPreferenceController.java"


# instance fields
.field protected final mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

.field protected mUserId:I

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    return-void
.end method

.method private mayUpdateGearIcon(Lcom/android/settings/applications/defaultapps/DefaultAppInfo;Landroid/support/v7/preference/Preference;)V
    .registers 6

    const/4 v2, 0x0

    instance-of v1, p2, Lcom/samsung/android/settings/SecGearPreference;

    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getSettingIntent(Lcom/android/settings/applications/defaultapps/DefaultAppInfo;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_17

    check-cast p2, Lcom/samsung/android/settings/SecGearPreference;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$1;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/settings/SecGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;)V

    :goto_16
    return-void

    :cond_17
    check-cast p2, Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {p2, v2}, Lcom/samsung/android/settings/SecGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;)V

    goto :goto_16
.end method


# virtual methods
.method protected abstract getDefaultAppInfo()Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
.end method

.method public getDefaultAppLabel()Ljava/lang/CharSequence;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_13
    return-object v2
.end method

.method protected getSettingIntent(Lcom/android/settings/applications/defaultapps/DefaultAppInfo;)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected loggingSettingsIcon()V
    .registers 1

    return-void
.end method

.method protected setEnabled(Landroid/support/v7/preference/Preference;)V
    .registers 2

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_11
    instance-of v2, p1, Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_1c

    move-object v2, p1

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1c
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mayUpdateGearIcon(Lcom/android/settings/applications/defaultapps/DefaultAppInfo;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->setEnabled(Landroid/support/v7/preference/Preference;)V

    return-void

    :cond_23
    const-string/jumbo v2, "DefaultAppPrefControl"

    const-string/jumbo v3, "No default app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f1201db

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_11
.end method
