.class public Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultBrowserPreferenceController.java"


# static fields
.field static final BROWSE_PROBE:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->BROWSE_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static getCandidates(Lcom/android/settings/applications/PackageManagerWrapper;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/PackageManagerWrapper;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->BROWSE_PROBE:Landroid/content/Intent;

    const/high16 v1, 0x20000

    invoke-interface {p0, v0, v1, p1}, Lcom/android/settings/applications/PackageManagerWrapper;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultAppInfo(Lcom/android/settings/applications/PackageManagerWrapper;I)Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
    .registers 7

    :try_start_0
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    invoke-interface {p0}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {p0, p1}, Lcom/android/settings/applications/PackageManagerWrapper;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDefaultAppLabel(Lcom/android/settings/applications/PackageManagerWrapper;I)Ljava/lang/CharSequence;
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->isAvailable(Lcom/android/settings/applications/PackageManagerWrapper;I)Z

    move-result v2

    if-nez v2, :cond_8

    return-object v3

    :cond_8
    invoke-static {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppInfo(Lcom/android/settings/applications/PackageManagerWrapper;I)Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_12

    :cond_1b
    invoke-static {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getOnlyAppLabel(Lcom/android/settings/applications/PackageManagerWrapper;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getOnlyAppLabel(Lcom/android/settings/applications/PackageManagerWrapper;I)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getCandidates(Lcom/android/settings/applications/PackageManagerWrapper;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-interface {p0}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_22
    return-object v3
.end method

.method public static hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->BROWSE_PROBE:Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2
.end method

.method public static isAvailable(Lcom/android/settings/applications/PackageManagerWrapper;I)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getCandidates(Lcom/android/settings/applications/PackageManagerWrapper;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 4

    new-instance v1, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/applications/PackageManagerWrapper;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "http:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static returnSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 5

    new-instance v1, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppLabel(Lcom/android/settings/applications/PackageManagerWrapper;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    return-object v0

    :cond_18
    const v3, 0x7f121331

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getBixbyStateId()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DefaultApplicationsBrowser"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected getDefaultAppInfo()Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppInfo(Lcom/android/settings/applications/PackageManagerWrapper;I)Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAppLabel()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppLabel(Lcom/android/settings/applications/PackageManagerWrapper;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "default_browser"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->isAvailable(Lcom/android/settings/applications/PackageManagerWrapper;I)Z

    move-result v0

    return v0
.end method

.method protected setEnabled(Landroid/support/v7/preference/Preference;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->returnSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_16

    check-cast p1, Landroid/support/v7/preference/SecPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_16
    return-void
.end method
