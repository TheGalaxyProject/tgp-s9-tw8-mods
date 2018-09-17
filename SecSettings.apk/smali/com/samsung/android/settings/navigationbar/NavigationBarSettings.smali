.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NavigationBarSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;
    }
.end annotation


# static fields
.field public static final NAVBAR_FLOATING_FEATURES:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static sApplyCurrentTheme:I

.field private static sButtonLayout:I

.field private static sUnlockWithHomeBtn:I


# instance fields
.field private mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

.field private mColortitlePref:Landroid/support/v7/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mHidebarPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mOrderPref:Lcom/android/settings/SecDropDownPreference;

.field private mPressureObserver:Landroid/database/ContentObserver;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mThemeSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->NAVBAR_FLOATING_FEATURES:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mPressureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private initPreference()V
    .registers 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "current_sec_active_themepackage"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_136

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_136

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigationbar_use_theme_default"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_133

    const/4 v5, 0x1

    :goto_38
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mThemeSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    if-eqz v5, :cond_48

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_48
    :goto_48
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_141

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_59
    sget-object v6, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->NAVBAR_FLOATING_FEATURES:Ljava/lang/String;

    const-string/jumbo v7, "SupportForceTouch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_76

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_76
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigationbar_hide_bar"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_15c

    const/4 v2, 0x1

    :goto_84
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_15f

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :goto_96
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigationbar_unlock_with_home_button"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_166

    const/4 v5, 0x1

    :goto_a4
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigationbar_force_touch_enable"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_169

    const/4 v4, 0x1

    :goto_b2
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    if-eqz v4, :cond_16c

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v7, 0x7f12126d

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_ca
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v6, :cond_109

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigationbar_pressure_user_level"

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v4, :cond_17f

    const v6, 0x7f121259

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_104
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_109
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigationbar_force_touch_enable"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mPressureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v9, "NavigationBar"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_133
    const/4 v5, 0x0

    goto/16 :goto_38

    :cond_136
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mThemeSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_48

    :cond_141
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "navigationbar_key_order"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    goto/16 :goto_59

    :cond_15c
    const/4 v2, 0x0

    goto/16 :goto_84

    :cond_15f
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v6, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_96

    :cond_166
    const/4 v5, 0x0

    goto/16 :goto_a4

    :cond_169
    const/4 v4, 0x0

    goto/16 :goto_b2

    :cond_16c
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v7, 0x7f12126c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_ca

    :cond_17f
    const v6, 0x7f121258

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_104
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1d2e

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_24

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateGridNumberColumns(Z)V

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_23
    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_f

    :cond_26
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_23
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "NavigationBarSettings"

    const-string/jumbo v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f150096

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "order_option"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    const-string/jumbo v0, "show_hide_bar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "color_title"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColortitlePref:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v0, "color"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string/jumbo v0, "show_hide_bar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "color_title"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "color"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->removePreference(Ljava/lang/String;)V

    :cond_6a
    const-string/jumbo v0, "theme_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mThemeSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mThemeSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "navigationbar_hard_press"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8e
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    new-array v1, v5, [Ljava/lang/CharSequence;

    const v2, 0x7f121253

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f121254

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "unlock_with_home_btn"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initPreference()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mPressureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NavigationBar"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    if-ne p1, v7, :cond_3a

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "navigationbar_key_order"

    invoke-static {v5, v7, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b01c0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sButtonLayout:I

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    :cond_30
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v7, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sButtonLayout:I

    invoke-static {v5, v7}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v6

    :cond_3a
    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHidebarPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne p1, v7, :cond_52

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "navigationbar_hide_bar"

    if-eqz v4, :cond_4e

    move v5, v6

    :cond_4e
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_51
    :goto_51
    return v6

    :cond_52
    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mUnlockWithHomeBtnPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v7, :cond_89

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "navigationbar_unlock_with_home_button"

    if-eqz v4, :cond_87

    move v7, v6

    :goto_66
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sUnlockWithHomeBtn:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    sget v8, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sUnlockWithHomeBtn:I

    if-eqz v4, :cond_7f

    move v5, v6

    :cond_7f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v8, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_51

    :cond_87
    move v7, v5

    goto :goto_66

    :cond_89
    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mThemeSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v7, :cond_d5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "navigationbar_use_theme_default"

    if-eqz v4, :cond_c9

    move v7, v6

    :goto_9d
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_cb

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_ab
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sApplyCurrentTheme:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    sget v8, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sApplyCurrentTheme:I

    if-eqz v4, :cond_c1

    move v5, v6

    :cond_c1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v8, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_51

    :cond_c9
    move v7, v5

    goto :goto_9d

    :cond_cb
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPref:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_ab

    :cond_d5
    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-ne p1, v7, :cond_51

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "navigationbar_force_touch_enable"

    if-eqz v4, :cond_129

    move v7, v6

    :goto_e9
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v7, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v7, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "navigationbar_pressure_user_level"

    const/4 v9, 0x3

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v4, :cond_12b

    const v7, 0x7f121259

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_122
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHardPressPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_51

    :cond_129
    move v7, v5

    goto :goto_e9

    :cond_12b
    const v5, 0x7f121258

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_122
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initPreference()V

    return-void
.end method
