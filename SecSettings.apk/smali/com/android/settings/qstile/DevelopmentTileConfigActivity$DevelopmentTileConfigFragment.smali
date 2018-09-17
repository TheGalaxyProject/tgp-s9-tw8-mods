.class public Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DevelopmentTileConfigActivity.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/qstile/DevelopmentTileConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevelopmentTileConfigFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15

    const/4 v12, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v9, 0x200

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_81

    if-nez v2, :cond_83

    iget-boolean v0, v8, Landroid/content/pm/ServiceInfo;->enabled:Z

    :goto_5a
    new-instance v7, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v7, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget v9, v8, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SwitchPreference;->setIcon(I)V

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v7, v12}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_38

    :cond_81
    const/4 v0, 0x1

    goto :goto_5a

    :cond_83
    const/4 v0, 0x0

    goto :goto_5a

    :cond_85
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v2

    :goto_1f
    invoke-virtual {v3, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return v2

    :cond_23
    const/4 v1, 0x2

    goto :goto_1f
.end method
