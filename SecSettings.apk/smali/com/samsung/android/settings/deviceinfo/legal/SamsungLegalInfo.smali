.class public Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SamsungLegalInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f1500c7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TFN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string/jumbo v6, "warranty"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    :cond_1d
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "end_user_license_agreement"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3c

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_68

    :cond_3c
    const-string/jumbo v6, "end_user_license_agreement"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    :cond_42
    :goto_42
    const-string/jumbo v6, "arbitration_agreement"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const-string/jumbo v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    const-string/jumbo v1, "com.sec.android.app.setupwizard.AA_NOTITLE"

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8f

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_67
    return-void

    :cond_68
    const-string/jumbo v6, "VZW"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.sec.android.app.setupwizard.EULA_NOTITLE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_42

    :cond_7d
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_42

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.sec.android.app.SecSetupWizard.SamsungLegal"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_42

    :cond_8f
    const-string/jumbo v6, "arbitration_agreement"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    goto :goto_67

    :cond_96
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSupportAAModel()Z

    move-result v6

    if-eqz v6, :cond_d0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c2

    const-string/jumbo v6, "com.sec.android.app.SecSetupWizard.SamsungLegal"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_ad
    const-string/jumbo v6, "ShowAAOnly"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_67

    :cond_c2
    const-string/jumbo v6, "com.sec.android.app.SecSetupWizard.SamsungLegalActivity"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_ad

    :cond_c9
    const-string/jumbo v6, "arbitration_agreement"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    goto :goto_67

    :cond_d0
    const-string/jumbo v6, "arbitration_agreement"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungLegalInfo;->removePreference(Ljava/lang/String;)V

    goto :goto_67
.end method
