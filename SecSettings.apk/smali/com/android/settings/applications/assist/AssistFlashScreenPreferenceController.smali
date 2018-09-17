.class public Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AssistFlashScreenPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    if-eqz p2, :cond_16

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    :cond_16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    return-void
.end method

.method private getCurrentAssist()Landroid/content/ComponentName;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private updatePreference()V
    .registers 5

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    instance-of v2, v2, Landroid/support/v7/preference/TwoStatePreference;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->isChecked(Landroid/content/Context;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_4f

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->isPreInstalledAssistant(Landroid/content/ComponentName;)Z

    move-result v2

    :goto_38
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->willShowFlash(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_47
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_26

    :cond_4f
    const/4 v2, 0x0

    goto :goto_38
.end method


# virtual methods
.method allowDisablingAssistDisclosure()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "flash"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->allowDisablingAssistDisclosure()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isPreInstalledAssistant(Landroid/content/ComponentName;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assist_disclosure_enabled"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_13
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onResume()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->updatePreference()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->updatePreference()V

    return-void
.end method

.method willShowFlash(Landroid/content/ComponentName;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method
