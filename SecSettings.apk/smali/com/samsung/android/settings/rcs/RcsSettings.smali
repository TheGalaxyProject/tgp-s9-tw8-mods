.class public Lcom/samsung/android/settings/rcs/RcsSettings;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "RcsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field mIsDefaultSms:Z

.field private mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

.field mSwitchRcs:Z

.field private phoneId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/rcs/RcsSettings;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/rcs/RcsSettings;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    const-class v0, Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    iput-boolean v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_25

    return-void

    :cond_25
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/rcs/RcsSettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/rcs/RcsSettings$1;-><init>(Lcom/samsung/android/settings/rcs/RcsSettings;)V

    iget v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings_partial_branded"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "rcs_settings_partial_branded_cpr"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-void
.end method


# virtual methods
.method public disableAllRcsSettingsPreference()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disableAllRcsSettingsPreference: disable for all brand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v7, 0x1

    move-object v3, p1

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    const-string/jumbo v4, "com.samsung.android.messaging"

    iget-object v5, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    iget-boolean v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    if-eqz v4, :cond_94

    iget-boolean v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v4, v7}, Lcom/sec/ims/ImsManager;->enableRcs(Z)V

    :cond_28
    :goto_28
    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v5, "rcs_settings"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-ne p1, v4, :cond_9f

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    :cond_38
    :goto_38
    return v7

    :cond_39
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "package"

    const-string/jumbo v5, "com.samsung.android.messaging"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_50
    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_55
    .catch Landroid/content/ActivityNotFoundException; {:try_start_50 .. :try_end_55} :catch_56
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_55} :catch_75

    goto :goto_28

    :catch_56
    move-exception v0

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " doesn\'t exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :catch_75
    move-exception v1

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IllegalStateException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_94
    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/ims/ImsManager;->enableRcs(Z)V

    goto :goto_28

    :cond_9f
    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v5, "rcs_settings_partial_branded"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-ne p1, v4, :cond_b0

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_38

    :cond_b0
    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v5, "rcs_settings_partial_branded_cpr"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-ne p1, v4, :cond_38

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto/16 :goto_38
.end method

.method public setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "com.samsung.android.messaging"

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1, v4}, Lcom/sec/ims/ImsManager;->isRcsEnabled(Z)Z

    move-result v0

    :cond_18
    if-eqz v0, :cond_2e

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v1, :cond_2e

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const v1, 0x7f121b7e

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p1, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p1, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const v1, 0x7f1215f6

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-nez v1, :cond_2d

    const v1, 0x7f1215f5

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2d
.end method

.method public updateRcsSettingsVisibility()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->isRcsEnabledInCsc()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: RCS is not enabled in CSC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    return-void

    :cond_15
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DISABLE_ON_DS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string/jumbo v1, "dsds"

    const-string/jumbo v2, "persist.radio.multisim.config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: RCS is disabled by DISABLE_ON_DS in others.xml"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    return-void

    :cond_45
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isRcse()Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: update for RCSe"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    :cond_78
    :goto_78
    return-void

    :cond_79
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isPartialBranded()Z

    move-result v1

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: update for Partial Branded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isSupportCPR()Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_78

    :cond_b9
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_78

    :cond_d9
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isFullBranded()Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRcsSettingsVisibility: update for Full Branded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto/16 :goto_78
.end method
