.class public Lcom/samsung/android/settings/DockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DockSettings$1;,
        Lcom/samsung/android/settings/DockSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAboutLedViewCover:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

.field private mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

.field private mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLedIconEditor:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSViewWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mShowNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

.field private mShowShortCuts:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSmartAccessorySettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private showWireLessChargeMenu:I


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/DockSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->sendDownloadPopupEventBoardcast()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/DockSettings;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DockSettings;->updateBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/DockSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DockSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DockSettings$1;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121b69

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121b68

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/DockSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$3;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const v2, 0x7f1211c7

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/DockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/DockSettings$4;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private initDockSettings()V
    .registers 8

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x0

    const-string/jumbo v2, "cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v2, "sview_wallpaper"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "automatic_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v2, "lock_screen_dualclock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "cover_show_shortcuts"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mShowShortCuts:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "cover_show_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "cover_show_sec_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const-string/jumbo v2, "fast_charing_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v2, "fast_wireless_charging"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v2, "led_cover_notifications_icon"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "led_icon_editor"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "about_led_view_cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mAboutLedViewCover:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "smart_accessory_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v2, :cond_b0

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f120507

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    :cond_b0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_c4

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b6

    :cond_c4
    const-string/jumbo v2, "cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "automatic_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "sview_wallpaper"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "lock_screen_dualclock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_show_shortcuts"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_show_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_show_sec_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "led_cover_caller_id"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "led_cover_notifications_icon"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "led_icon_editor"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "about_led_view_cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_10c
    :goto_10c
    const-string/jumbo v2, "automatic_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_11a

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_11a
    const-string/jumbo v2, "cover_note"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecCheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    const-string/jumbo v2, "cover_note_weather_unit"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecListPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_322

    const-string/jumbo v2, "cover_note"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_note_weather_unit"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :goto_146
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_wireless_charger_menu"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    iget v2, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_348

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v2

    if-eqz v2, :cond_348

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_32e

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f120af1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f120af3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f120af5

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_181
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_197

    const-string/jumbo v2, "smart_accessory"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "smart_accessory_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_197
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_1b5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_356

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f1208d0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f1205c9

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_1b5
    :goto_1b5
    return-void

    :cond_1b6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1fa

    const-string/jumbo v2, "sview_wallpaper"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "lock_screen_dualclock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_show_shortcuts"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_show_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_show_sec_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "led_cover_caller_id"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "led_cover_notifications_icon"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "led_icon_editor"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "about_led_view_cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_10c

    :cond_1fa
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v2, :cond_210

    if-nez v0, :cond_292

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f121b36

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    :cond_210
    :goto_210
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_220

    const-string/jumbo v2, "sview_wallpaper"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_220
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_230

    const-string/jumbo v2, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_230
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverDualClockOptionOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_240

    const-string/jumbo v2, "lock_screen_dualclock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_240
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverSettingAppShortcut(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportLockAppShortcut()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_25a

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_260

    :cond_25a
    const-string/jumbo v2, "cover_show_shortcuts"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_260
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2b8

    const-string/jumbo v2, "cover_show_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "cover_show_sec_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_276
    :goto_276
    if-eq v0, v5, :cond_2c8

    const-string/jumbo v2, "led_cover_caller_id"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "led_cover_notifications_icon"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "led_icon_editor"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "about_led_view_cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_10c

    :cond_292
    if-ne v0, v5, :cond_29e

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f121b37

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto/16 :goto_210

    :cond_29e
    if-ne v0, v6, :cond_2aa

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f121b35

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto/16 :goto_210

    :cond_2aa
    const/16 v2, 0xb

    if-ne v0, v2, :cond_210

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f121b38

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto/16 :goto_210

    :cond_2b8
    const-string/jumbo v2, "cover_show_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v2, :cond_276

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_276

    :cond_2c8
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2d8

    const-string/jumbo v2, "led_cover_caller_id"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_2d8
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2e8

    const-string/jumbo v2, "led_cover_notifications_icon"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_2e8
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2fc

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_302

    :cond_2fc
    const-string/jumbo v2, "led_icon_editor"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.ledcoverdream"

    const-string/jumbo v3, "com.samsung.android.app.ledcover.app.LCoverAboutActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_10c

    const-string/jumbo v2, "about_led_view_cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_10c

    :cond_322
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SecCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_146

    :cond_32e
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f120af0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f120af2

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f120af4

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto/16 :goto_181

    :cond_348
    const-string/jumbo v2, "fast_charing_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "fast_wireless_charging"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_181

    :cond_356
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v2

    if-eqz v2, :cond_366

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f12101f

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_1b5

    :cond_366
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v3, 0x7f12101e

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_1b5
.end method

.method private static isMateCoverAttached(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mate_setting_activation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_10

    :goto_f
    return v1

    :cond_10
    move v1, v2

    goto :goto_f
.end method

.method private sendDownloadPopupEventBoardcast()V
    .registers 8

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.android.app.applinker.action.REQUEST_DOWNLOAD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.app.ledcoverdream"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v4, v2

    add-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    array-length v4, v2

    const/4 v5, 0x2

    invoke-static {v2, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v4, "URI"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v4, "DEVICE_TYPE"

    const-string/jumbo v5, "cover"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "NAME"

    const-string/jumbo v5, "LED Cover"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v4, "DockSettings"

    const-string/jumbo v5, "show great led download popup"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setShowSecNotificationsSummary(Z)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    if-eqz p1, :cond_12

    const v2, 0x7f121b7e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_11
    return-object v1

    :cond_12
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1e

    const v2, 0x7f1205ca

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_1e
    const v2, 0x7f121020

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method private showDownloadLedCoverAppDialog()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v4, 0x7f121b6a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f1208ef

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/DockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f1208ee

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/DockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/DockSettings$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/DockSettings$5;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const v6, 0x7f1211c7

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/DockSettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/DockSettings$6;-><init>(Lcom/samsung/android/settings/DockSettings;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)V
    .registers 5

    const/4 v2, 0x1

    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120aee

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v2, 0x7f120af1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120af3

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120af5

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_19

    :cond_3e
    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v2, 0x7f120af0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120af2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120af4

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_19
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1dba

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15005a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->initDockSettings()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "automatic_unlock"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "automatic_unlock"

    if-eqz v3, :cond_1f

    move v4, v5

    :cond_1f
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_22
    :goto_22
    return v5

    :cond_23
    const-string/jumbo v6, "cover_note"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/SecCheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "cover_note"

    if-eqz v3, :cond_41

    move v4, v5

    :cond_41
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "DockSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Save KEY_COVER_NOTE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_5f
    const-string/jumbo v6, "cover_note_weather_unit"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v4, :cond_7e

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "cover_note_weather_unit"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7e
    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/SecListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_22

    :cond_93
    const-string/jumbo v6, "fast_wireless_charging"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wireless_fast_charging"

    if-eqz v3, :cond_ac

    move v4, v5

    :cond_ac
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v5

    :cond_b0
    const-string/jumbo v6, "cover_show_sec_notifications"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/DockSettings;->setShowSecNotificationsSummary(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_show_notifications"

    if-eqz v0, :cond_dc

    move v4, v5

    :cond_dc
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_22
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v2, :cond_3b

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "automatic_unlock"

    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_39

    move v2, v3

    :goto_16
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0086

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_31

    move v4, v3

    :cond_31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_39
    move v2, v4

    goto :goto_16

    :cond_3b
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mSViewWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_4b

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->startMyThemeWallpaperActivity(Landroid/content/Context;)V

    :cond_46
    :goto_46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_4b
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_6d

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LNCS"

    const-string/jumbo v5, "SViewCover"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_6d
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_95

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.ledcovergrace"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.ledcovergrace"

    const-string/jumbo v3, "com.samsung.android.app.ledcovergrace.app.LCoverNotiMainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_46

    :cond_90
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DockSettings;->showDialog(I)V

    goto :goto_46

    :cond_95
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mLedIconEditor:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_c6

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.app.ledcoverdream"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    invoke-direct {p0}, Lcom/samsung/android/settings/DockSettings;->showDownloadLedCoverAppDialog()V

    goto :goto_46

    :cond_aa
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_46

    :cond_c6
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mAboutLedViewCover:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_e7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.ledcoverdream"

    const-string/jumbo v3, "com.samsung.android.app.ledcover.app.LCoverAboutActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_46

    :cond_e7
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mSmartAccessorySettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_109

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.mateagent"

    const-string/jumbo v4, "com.samsung.android.mateagent.setting.SettingActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_46

    :cond_109
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v2, :cond_121

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_46

    :cond_121
    iget-object v2, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-ne p1, v2, :cond_46

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_46
.end method

.method public onResume()V
    .registers 15

    const/4 v13, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v7, :cond_2f

    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "automatic_unlock"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_195

    move v7, v8

    :goto_1e
    invoke-virtual {v10, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_2f

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    const v10, 0x7f1202cb

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_2f
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    if-eqz v7, :cond_42

    const-string/jumbo v7, "cover_note"

    invoke-static {v2, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_198

    const/4 v6, 0x0

    :goto_3d
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/SecCheckBoxPreference;->setChecked(Z)V

    :cond_42
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    if-eqz v7, :cond_61

    const-string/jumbo v7, "cover_note_weather_unit"

    invoke-static {v2, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v10}, Landroid/support/v7/preference/SecListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_61
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v7, :cond_cd

    const-string/jumbo v7, "oversea"

    const-string/jumbo v10, "ril.currentplmn"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19b

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v7

    if-eqz v7, :cond_19b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1208fe

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f121353

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :goto_b3
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cd

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v10, 0x7f1216ac

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    :cond_cd
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v7, :cond_de

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_de
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v7, :cond_125

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_notifications"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1b5

    const/4 v0, 0x1

    :goto_f0
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/DockSettings;->setShowSecNotificationsSummary(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v10

    const/16 v11, 0xc

    invoke-static {v7, v11, v10}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_125

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mShowSecNotifications:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_125
    iget v7, p0, Lcom/samsung/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-ne v7, v8, :cond_147

    invoke-static {}, Lcom/android/settings/Utils;->isSupportFastWirelessCharger()Z

    move-result v7

    if-eqz v7, :cond_147

    const-string/jumbo v7, "wireless_fast_charging"

    invoke-static {v2, v7, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v13, :cond_13f

    const-string/jumbo v7, "wireless_fast_charging"

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v5, 0x1

    :cond_13f
    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne v5, v8, :cond_1b8

    move v7, v8

    :goto_144
    invoke-virtual {v10, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_147
    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/settings/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v12, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10, v11}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->hasCoverLEDNotificationIcon(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_177

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v10, "com.samsung.android.app.ledcovergrace"

    invoke-static {v7, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ba

    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const v10, 0x7f121b6e

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_177
    :goto_177
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v7, :cond_194

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_18f

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1c3

    :cond_18f
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_194
    :goto_194
    return-void

    :cond_195
    move v7, v9

    goto/16 :goto_1e

    :cond_198
    const/4 v6, 0x1

    goto/16 :goto_3d

    :cond_19b
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "dualclock_menu_settings"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b3

    :cond_1b5
    const/4 v0, 0x0

    goto/16 :goto_f0

    :cond_1b8
    move v7, v9

    goto :goto_144

    :cond_1ba
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const v10, 0x7f121b6f

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_177

    :cond_1c3
    iget-object v7, p0, Lcom/samsung/android/settings/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_194
.end method
