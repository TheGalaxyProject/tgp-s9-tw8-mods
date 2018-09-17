.class public Lcom/samsung/android/settings/cpa/CpaAddmenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CpaAddmenu.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAddAPN:Landroid/support/v7/preference/PreferenceScreen;

.field private mAddCPA:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_d

    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->finish()V

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150012

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "add_apn"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddAPN:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "add_cpa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddCPA:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "kddi_cpa_added"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    const/4 v0, 0x1

    :goto_2f
    iget-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddCPA:Landroid/support/v7/preference/PreferenceScreen;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_37
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 9

    const/16 v6, 0x7e

    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddAPN:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "CpaAddmenu"

    const-string/jumbo v3, "addNewApn"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_20
    :goto_20
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_25
    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddCPA:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "5"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.settings.cpa.CpaAdvancedSettings"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "new"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_20
.end method
