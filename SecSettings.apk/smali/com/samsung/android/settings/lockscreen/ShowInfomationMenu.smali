.class public Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ShowInfomationMenu.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;,
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;,
        Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;
    }
.end annotation


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final ACCU_WEATHERINFO_URI:Landroid/net/Uri;

.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClockStyle:Landroid/support/v7/preference/SecPreference;

.field private mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFromCoverSetting:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)Landroid/support/v7/preference/SecRestrictedPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updatePreferenceRelatedAOD()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$1;-><init>(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$3;-><init>(Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private InitValue()V
    .registers 12

    const v10, 0x7f1208fe

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "ShowInfomationMenu"

    const-string/jumbo v6, "onResume() 1"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "clock_style_pref"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->setClockStyleState()V

    :cond_26
    const-string/jumbo v5, "lock_screen_dualclock"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v5, :cond_b4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1cc

    const/4 v1, 0x1

    :goto_43
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    if-eqz v1, :cond_54

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_54
    const-string/jumbo v5, "oversea"

    const-string/jumbo v6, "ril.currentplmn"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_1cf

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f121353

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :goto_9f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v6, 0x7f1216ac

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setTitle(I)V

    :cond_b4
    const-string/jumbo v5, "lock_screen_menu_owner_infomation"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecRestrictedPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v5, :cond_f0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_1f2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_d8
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updateOwnerInfo()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    const v6, 0x7f120646

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/SecRestrictedPreference;->setTitle(I)V

    :cond_f0
    const-string/jumbo v5, "lock_screen_additional_info"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_118

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.app.aodservice"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f9

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    const v6, 0x7f1200f5

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_118
    :goto_118
    const-string/jumbo v5, "lock_screen_settings_weather"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v5, :cond_157

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_157

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getRegisteredCityCount(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_208

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_208

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->isWeatherState(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_203

    const v5, 0x7f121b7e

    :goto_154
    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_157
    :goto_157
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_16a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_16a

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_16a
    iget-boolean v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v5, :cond_1cb

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_181

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v5, :cond_181

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    :cond_181
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1a7

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v5, :cond_194

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_194
    const-string/jumbo v5, "lock_screen_menu_weather"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1a7

    const-string/jumbo v5, "lock_screen_menu_weather"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1a7
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->hasCoverSettingFaceWidgets(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1be

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_1be

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1be
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-eqz v5, :cond_1cb

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1cb
    return-void

    :cond_1cc
    const/4 v1, 0x0

    goto/16 :goto_43

    :cond_1cf
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1eb

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9f

    :cond_1eb
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_9f

    :cond_1f2
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_d8

    :cond_1f9
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    const v6, 0x7f1200f3

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_118

    :cond_203
    const v5, 0x7f121b7d

    goto/16 :goto_154

    :cond_208
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_157
.end method

.method private RemoveMenu()V
    .registers 3

    const-string/jumbo v0, "ShowInfomationMenu"

    const-string/jumbo v1, "onResume() 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportClockPackageSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_43
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string/jumbo v0, "lock_screen_dualclock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    :cond_53
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "lock_screen_additional_info"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    :cond_66
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    :goto_7c
    return-void

    :cond_7d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportWeatherStateSettings()Z

    move-result v0

    if-nez v0, :cond_8a

    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_7c

    :cond_8a
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->removePreference(Ljava/lang/String;)V

    goto :goto_7c
.end method

.method public static existWeatherWidgetOnLauncher(Landroid/content/Context;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_f

    const-string/jumbo v1, "ShowInfomationMenu"

    const-string/jumbo v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_f
    const-string/jumbo v6, "WIDGET_COUNT"

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_3e

    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "WIDGET_COUNT"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "WIDGET_COUNT"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :cond_3b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3e
    if-lez v8, :cond_42

    move v1, v9

    :goto_41
    return v1

    :cond_42
    move v1, v10

    goto :goto_41
.end method

.method public static getRegisteredCityCount(Landroid/content/Context;)I
    .registers 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_6

    const/4 v1, -0x1

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2d

    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "LOCATION"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    :cond_29
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2c
    :goto_2c
    return v6

    :cond_2d
    const/4 v6, -0x1

    goto :goto_2c
.end method

.method public static getWidgetCount(Landroid/content/Context;)I
    .registers 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_6

    return v6

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_30

    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "WIDGET_COUNT"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_30

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    :try_start_25
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_31

    move-result v6

    :cond_2d
    :goto_2d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_30
    return v6

    :catch_31
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public static isWeatherState(Landroid/content/Context;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-nez p0, :cond_7

    return v10

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_30

    sget-object v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "LOCKSCREEN_AND_S_VIEW_COVER"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    :try_start_25
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_34

    move-result v8

    :cond_2d
    :goto_2d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_30
    if-lez v8, :cond_39

    move v1, v9

    :goto_33
    return v1

    :catch_34
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    :cond_39
    move v1, v10

    goto :goto_33
.end method

.method private launchClockStyleSettings()V
    .registers 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.aodservice"

    const-string/jumbo v3, "com.samsung.android.app.clockpack.settings.ClockPackSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_e
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string/jumbo v2, "ShowInfomationMenu"

    const-string/jumbo v3, "Not exist ClockPackSetting Activity"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_11
.end method

.method private setClockStyleState()V
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-nez v7, :cond_7

    return-void

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v8, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "aod_mode"

    sget v9, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v11, :cond_92

    const/4 v1, 0x1

    :goto_23
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "dualclock_menu_settings"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_94

    const/4 v6, 0x1

    :goto_31
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "roaming_clock_option"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_96

    if-ne v5, v11, :cond_4e

    xor-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_96

    :cond_4e
    const/4 v7, 0x2

    if-ne v5, v7, :cond_98

    move v0, v3

    :goto_52
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isIgnoreNationalRoaming(Landroid/content/Context;)Z

    move-result v2

    const-string/jumbo v7, "ShowInfomationMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isNetworkRoaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_a3

    if-eqz v4, :cond_a3

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_a3

    if-eqz v0, :cond_a3

    if-nez v3, :cond_84

    xor-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_9a

    :cond_84
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v8, 0x7f1205d2

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_8c
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_91
    return-void

    :cond_92
    const/4 v1, 0x0

    goto :goto_23

    :cond_94
    const/4 v6, 0x0

    goto :goto_31

    :cond_96
    const/4 v0, 0x1

    goto :goto_52

    :cond_98
    const/4 v0, 0x0

    goto :goto_52

    :cond_9a
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v8, 0x7f1205d1

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_8c

    :cond_a3
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v8, 0x7f1205d0

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v11}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_91
.end method

.method public static showWeatherWidgetMessageDialog(Landroid/content/Context;)V
    .registers 6

    if-nez p0, :cond_c

    const-string/jumbo v2, "ShowInfomationMenu"

    const-string/jumbo v3, "context is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const v2, 0x7f121e7a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    const v2, 0x7f121006

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$4;

    invoke-direct {v3}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$4;-><init>()V

    const v4, 0x7f120608

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_3d
    const v2, 0x7f121e7b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e
.end method

.method private updateOwnerInfo()V
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_41

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1e

    :cond_41
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f12190e

    if-eqz v1, :cond_54

    const v2, 0x7f12190d

    :cond_54
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1e
.end method

.method private updatePreferenceRelatedAOD()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_25
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1eaa

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_d

    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->updateOwnerInfo()V

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f15008c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->addPreferencesFromResource(I)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string/jumbo v1, "coversetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    :cond_3e
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ClockAndFacewidgets"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v2, "lock_screen_dualclock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "dualclock_menu_settings"

    if-eqz v1, :cond_3a

    move v2, v3

    :goto_1f
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_3c

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_36
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->setClockStyleState()V

    return v3

    :cond_3a
    move v2, v4

    goto :goto_1f

    :cond_3c
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v5, 0x7f1208fe

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_36

    :cond_4a
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 16

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "lock_screen_dualclock"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_34
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_45
    const-string/jumbo v0, "clock_style_pref"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->launchClockStyleSettings()V

    goto :goto_2f

    :cond_52
    const-string/jumbo v0, "lock_screen_menu_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->existWeatherWidgetOnLauncher(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_ba

    const/4 v6, 0x1

    :goto_71
    if-nez v7, :cond_75

    if-eqz v6, :cond_bc

    :cond_75
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "PACKAGE"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_97
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_c4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    :cond_ba
    const/4 v6, 0x0

    goto :goto_71

    :cond_bc
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto :goto_97

    :cond_c4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    :cond_d6
    const-string/jumbo v0, "lock_screen_settings_weather"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_fb

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.android.settings.WeatherSettings"

    const v3, 0x7f121006

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_2f

    :cond_fb
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto/16 :goto_2f

    :cond_104
    const-string/jumbo v0, "lock_screen_menu_owner_infomation"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v11

    if-eqz v11, :cond_11f

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_11f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const v12, 0x7f12141d

    if-eqz v13, :cond_132

    const v12, 0x7f120646

    :cond_132
    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v10

    const/16 v0, 0xc8

    invoke-virtual {v10, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog"

    invoke-virtual {v10, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_168

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "SViewCover"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    :cond_168
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LNCS"

    const-string/jumbo v3, "LockScreen"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f
.end method

.method public onResume()V
    .registers 5

    const-string/jumbo v0, "ShowInfomationMenu"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->InitValue()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->RemoveMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->finish()V

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "ClockAndFacewidgets"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
