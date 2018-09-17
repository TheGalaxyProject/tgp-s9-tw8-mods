.class public Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectionLockSplashActivity.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;,
        Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;
    }
.end annotation


# static fields
.field private static mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;


# instance fields
.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFeedback:Landroid/support/v7/preference/PreferenceCategory;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSetBeep:Landroid/support/v14/preference/SwitchPreference;

.field private mSetFingerprint:Landroid/support/v14/preference/SwitchPreference;

.field private mSetIris:Landroid/support/v14/preference/SwitchPreference;

.field private mSetLockScreen:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSetVibration:Landroid/support/v14/preference/SwitchPreference;

.field private mSetVisibility:Landroid/support/v14/preference/SwitchPreference;

.field private mSetVoice:Landroid/support/v14/preference/SwitchPreference;

.field private mShowDescription:Landroid/support/v7/preference/Preference;

.field mSwitchStateObserver:Landroid/database/ContentObserver;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method static synthetic -get0()Lcom/android/settings/widget/SwitchBar;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSwitchStateObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private initPreferences()V
    .registers 5

    const v3, 0x7f120843

    const/4 v1, 0x6

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetLockScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v0, "lock_screen_visible"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "lock_screen_vibration"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "lock_screen_beep"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "lock_screen_voice"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "lock_screen_fingerprint"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "lock_screen_iris"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "descriptionText"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mShowDescription:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v0

    if-ne v0, v1, :cond_b4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mShowDescription:Landroid/support/v7/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120845

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_98
    :goto_98
    const-string/jumbo v0, "lock_screen_options_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mFeedback:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mFeedback:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120853

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_b4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mShowDescription:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120844

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_98

    :cond_c5
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v0

    if-ne v0, v1, :cond_98

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mShowDescription:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_98
.end method

.method private isVibrationSupport()Z
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_21

    :cond_1f
    const/4 v1, 0x0

    return v1

    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method private removeVibrationPreference()V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private setListeners()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x14b4

    return v0
.end method

.method loadSettings()V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->toggleSettings()V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_visible"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_67

    move v0, v1

    :goto_15
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_vibration"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_69

    move v0, v1

    :goto_28
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6b

    move v0, v1

    :goto_3b
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_6d

    :goto_4d
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isFingerPrintSwitchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isIrisSwitchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_67
    move v0, v2

    goto :goto_15

    :cond_69
    move v0, v2

    goto :goto_28

    :cond_6b
    move v0, v2

    goto :goto_3b

    :cond_6d
    move v1, v2

    goto :goto_4d
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "DirectionLockSplashActivity"

    const-string/jumbo v1, "onActivityCreated :"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$3;-><init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500e3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->initPreferences()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    const-string/jumbo v0, "DirectionLockSplashActivity"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSwitchStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->finish()V

    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DirectionLock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/16 v1, 0x3e8

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_visible"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    :goto_27
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5a

    :goto_3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_45
    :goto_45
    return v6

    :cond_46
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_visible"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    goto :goto_27

    :cond_5a
    move v1, v2

    goto :goto_3e

    :cond_5c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_vibration"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    :goto_7f
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b2

    :goto_96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_45

    :cond_9e
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_vibration"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    goto :goto_7f

    :cond_b2
    move v1, v2

    goto :goto_96

    :cond_b4
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_f7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    :goto_d7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_10b

    :goto_ee
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_45

    :cond_f7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    goto :goto_d7

    :cond_10b
    move v1, v2

    goto :goto_ee

    :cond_10d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_166

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_150

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    :goto_130
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_164

    :goto_147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_45

    :cond_150
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    goto :goto_130

    :cond_164
    move v1, v2

    goto :goto_147

    :cond_166
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_19c

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v3, v2, v6, v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    move-result v0

    :goto_17c
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1a3

    :goto_193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_45

    :cond_19c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v3, v6, v6, v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    move-result v0

    goto :goto_17c

    :cond_1a3
    move v1, v2

    goto :goto_193

    :cond_1a5
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1bd

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1, v2, v2, v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    move-result v0

    goto/16 :goto_45

    :cond_1bd
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1, v6, v2, v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    move-result v0

    goto/16 :goto_45
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 10

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120ffe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v7

    :cond_28
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "fromScreenLock"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f121cc9

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v7

    :cond_53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "DirectionLockSplashActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->isVibrationSupport()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->removeVibrationPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_vibration"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_20
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->setSummary()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->loadSettings()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->setListeners()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    :cond_50
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_switch_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSwitchStateObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DirectionLock"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-void
.end method

.method public setSummary()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetLockScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getLockTypeSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetLockScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public toggleSettings()V
    .registers 9

    const v7, 0x10001

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "universal_lock_switch_state"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6b

    const/4 v1, 0x1

    :goto_13
    const-string/jumbo v2, "DirectionLockSplashActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switchState :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getCurrentLockScreen()I

    move-result v0

    sget-object v2, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVisibility:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_6f

    if-ne v0, v7, :cond_6d

    move v2, v3

    :goto_3f
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVibration:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_73

    if-ne v0, v7, :cond_71

    move v2, v3

    :goto_49
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetVoice:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_77

    if-ne v0, v7, :cond_75

    move v2, v3

    :goto_53
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetBeep:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_5d

    if-ne v0, v7, :cond_5d

    move v4, v3

    :cond_5d
    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetFingerprint:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mSetIris:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void

    :cond_6b
    const/4 v1, 0x0

    goto :goto_13

    :cond_6d
    move v2, v4

    goto :goto_3f

    :cond_6f
    move v2, v4

    goto :goto_3f

    :cond_71
    move v2, v4

    goto :goto_49

    :cond_73
    move v2, v4

    goto :goto_49

    :cond_75
    move v2, v4

    goto :goto_53

    :cond_77
    move v2, v4

    goto :goto_53
.end method
