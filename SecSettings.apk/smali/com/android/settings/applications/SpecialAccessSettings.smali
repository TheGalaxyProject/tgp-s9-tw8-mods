.class public Lcom/android/settings/applications/SpecialAccessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SpecialAccessSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/SpecialAccessSettings$1;
    }
.end annotation


# static fields
.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field private mDataSaver:Landroid/support/v7/preference/SecPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mHighPowerApps:Landroid/support/v7/preference/SecPreference;

.field private mOverlay:Landroid/support/v7/preference/SecPreference;

.field private mPremiumSms:Landroid/support/v7/preference/SecPreference;

.field private mVRLiteners:Landroid/support/v7/preference/SecPreference;

.field private mWriteSettings:Landroid/support/v7/preference/SecPreference;


# direct methods
.method static synthetic -get0()Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sget-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/SpecialAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sput-object p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/applications/SpecialAccessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/SpecialAccessSettings$1;-><init>(Lcom/android/settings/applications/SpecialAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method


# virtual methods
.method public exeCustomAction()V
    .registers 1

    return-void
.end method

.method public exeOptAction()V
    .registers 1

    return-void
.end method

.method public exePrefAction()V
    .registers 5

    sget-object v2, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/SpecialAccessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    sget-object v2, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1f

    sget-object v2, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :goto_19
    sget-object v2, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_1f
    sget-object v2, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public exeViewAction()V
    .registers 1

    return-void
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x15f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15010e

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "system_alert_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mOverlay:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v0, "write_settings_apps"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mWriteSettings:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v0, "high_power_apps"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mHighPowerApps:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v0, "enabled_vr_listeners"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mVRLiteners:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v0, "premium_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mPremiumSms:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v0, "data_saver"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mDataSaver:Landroid/support/v7/preference/SecPreference;

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mOverlay:Landroid/support/v7/preference/SecPreference;

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mWriteSettings:Landroid/support/v7/preference/SecPreference;

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mDataSaver:Landroid/support/v7/preference/SecPreference;

    const v1, 0x7f121ce7

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    :cond_6b
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SpecialAccess"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/SpecialAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SpecialAccess"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .registers 6

    const/16 v3, 0x2710

    const/4 v2, 0x1

    const-string/jumbo v0, "ApplicationsChangeSystemSettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mWriteSettings:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    const-string/jumbo v0, "ApplicationsAppsThatCanAppearOnTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mOverlay:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_13

    :cond_25
    const-string/jumbo v0, "OptimizeBatteryUsage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mHighPowerApps:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_13

    :cond_36
    const-string/jumbo v0, "VRHelperServices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mVRLiteners:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_13

    :cond_47
    const-string/jumbo v0, "UsePremiumSMSServices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mPremiumSms:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_13
.end method

.method public stopAction()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    sput-object v2, Lcom/android/settings/applications/SpecialAccessSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    :cond_e
    return-void
.end method
