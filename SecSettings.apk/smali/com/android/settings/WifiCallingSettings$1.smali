.class Lcom/android/settings/WifiCallingSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallingSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 15

    iget-object v10, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v10}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_74

    move v4, v3

    :goto_1b
    if-nez p1, :cond_76

    :goto_1d
    invoke-virtual {v9, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v10, "carrier_config"

    invoke-virtual {v0, v10}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_41

    const-string/jumbo v10, "editable_wfc_mode_bool"

    invoke-virtual {v1, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v10, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v1, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_41
    iget-object v10, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v10}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "wifi_calling_mode"

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_5a

    if-eqz v4, :cond_7a

    if-eqz v5, :cond_7a

    if-nez p1, :cond_78

    const/4 v10, 0x1

    :goto_57
    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_5a
    iget-object v10, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v10}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "wifi_calling_roaming_mode"

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_73

    if-eqz v4, :cond_7e

    if-eqz v6, :cond_7e

    if-nez p1, :cond_7c

    const/4 v10, 0x1

    :goto_70
    invoke-virtual {v8, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_73
    return-void

    :cond_74
    const/4 v4, 0x0

    goto :goto_1b

    :cond_76
    const/4 v3, 0x0

    goto :goto_1d

    :cond_78
    const/4 v10, 0x0

    goto :goto_57

    :cond_7a
    const/4 v10, 0x0

    goto :goto_57

    :cond_7c
    const/4 v10, 0x0

    goto :goto_70

    :cond_7e
    const/4 v10, 0x0

    goto :goto_70
.end method
