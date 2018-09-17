.class public Lcom/samsung/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$3;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$5;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$6;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field protected static isTalkbackInstalled:Z

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/SecPreference;

.field private mCallAnsweringEndingPreference:Landroid/support/v7/preference/SecPreference;

.field private mCategoriesCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirectAccessPreference:Landroid/support/v7/preference/SecPreference;

.field private mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mManageAccessibilityPreference:Landroid/support/v7/preference/SecPreference;

.field private mMoresettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

.field private mNotificationReminderPreference:Landroid/support/v7/preference/SecPreference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSingleTapModeObserver:Landroid/database/ContentObserver;

.field private mSingleTapModePreference:Landroid/support/v14/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$6;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$6;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private initializeAllPreferences()V
    .registers 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v7, "categories_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCategoriesCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "services_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "moresettings_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "accessibility_shortcut_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/SecPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v7, "direct_access"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/support/v7/preference/SecPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateDirectAccessStatus()V

    const-string/jumbo v7, "direction_lock"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_6c

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_73

    :cond_6c
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_73
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_80

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_80
    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnforced()Z

    move-result v7

    if-eqz v7, :cond_91

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_91
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9e

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_9e
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_ab

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_ab
    const-string/jumbo v7, "notification_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/support/v7/preference/SecPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const/4 v3, 0x0

    :try_start_c1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_21b

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_d2} :catch_21e

    move-result v3

    :goto_d3
    const-string/jumbo v7, "call_answering_ending"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEndingPreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_SupportVoiceRecordingDuringHoldCall"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_101

    :cond_f5
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEndingPreference:Landroid/support/v7/preference/SecPreference;

    const v8, 0x7f12018b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_101
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_115

    if-nez v3, :cond_115

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_13a

    :cond_115
    const-string/jumbo v7, "AccessibilitySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CallAnsweringEning getCurrentUser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEndingPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_13a
    const-string/jumbo v7, "toggle_easy_interaction_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v14/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_16a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_162

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_16a

    :cond_162
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/support/v14/preference/SwitchPreference;

    const v8, 0x7f120056

    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_16a
    const-string/jumbo v7, "share_acc_setting_menu"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_ACCESSIBILITY"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19c

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-eqz v7, :cond_224

    :cond_19c
    :goto_19c
    const-string/jumbo v7, "AccessibilitySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Manage accessiblity getCurrentUser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1c1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_21a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.assistantmenu"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1de

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_206

    :cond_1de
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.universalswitch"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_206

    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_206

    const-string/jumbo v7, "mobility_preference_key"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCategoriesCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_206
    const-string/jumbo v7, "audio_preference_key"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCategoriesCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v7, "moresettings_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->removePreference(Ljava/lang/String;)V

    :cond_21a
    return-void

    :cond_21b
    const/4 v3, 0x0

    goto/16 :goto_d3

    :catch_21e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d3

    :cond_224
    if-eqz v2, :cond_1c1

    goto/16 :goto_19c
.end method

.method private setLinkedDataView()V
    .registers 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_ba

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v4, :cond_ba

    new-instance v4, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.Settings$EasyModeAppActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "flowId"

    const/16 v5, 0x233c

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f120903

    iput v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.android.app.safetyassurance"

    const-string/jumbo v6, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "flowId"

    const/16 v5, 0x233d

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f1216d3

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a8

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_a8
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b5

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_b5
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_ba
    return-void
.end method

.method private updateAccessibilityShortcut(Landroid/support/v7/preference/Preference;)V
    .registers 8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/SecPreference;

    const v4, 0x7f12006b

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_30
    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_d

    :cond_33
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_shortcut_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_59

    const/4 v1, 0x1

    :goto_49
    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_53
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_30

    :cond_59
    const/4 v1, 0x0

    goto :goto_49

    :cond_5b
    const v3, 0x7f120059

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_53
.end method

.method private updateAllPreferences()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateDefaultPreferences()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method private updateDefaultPreferences()V
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateDirectAccessStatus()V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/SecPreference;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateAccessibilityShortcut(Landroid/support/v7/preference/Preference;)V

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "easy_interaction"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8d

    move v4, v5

    :goto_1a
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_ACCESSIBILITY"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    const-string/jumbo v4, "importNotification"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_40
    :goto_40
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->shouldDirectionLockBeDisabled()Z

    move-result v4

    if-eqz v4, :cond_55

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

    const v5, 0x7f121cc1

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_55
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_reminder_app_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_reminder_selectable"

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_74
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_reminder_selectable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_95

    const/4 v2, 0x1

    :goto_82
    if-eqz v2, :cond_97

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/support/v7/preference/SecPreference;

    const v5, 0x7f121b7e

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_8c
    return-void

    :cond_8d
    move v4, v6

    goto :goto_1a

    :cond_8f
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_40

    :cond_95
    const/4 v2, 0x0

    goto :goto_82

    :cond_97
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/support/v7/preference/SecPreference;

    const v5, 0x7f121b7d

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_8c
.end method

.method private updateDirectAccessStatus()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_accessibility"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_talkback"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_negative"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_samsung_screen_reader"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_color_adjustment"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_access_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c0

    const/4 v0, 0x1

    :goto_50
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.app.talkback"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    if-eqz v0, :cond_c4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_s_talkback"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c4

    const/4 v0, 0x1

    :cond_6b
    :goto_6b
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v1

    if-eqz v1, :cond_81

    if-eqz v0, :cond_c6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_universal_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c6

    const/4 v0, 0x1

    :cond_81
    :goto_81
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    if-eqz v0, :cond_c8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_access_magnifier"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c8

    const/4 v0, 0x1

    :cond_a0
    :goto_a0
    if-eqz v0, :cond_ac

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_access"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_ac
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_bf
    return-void

    :cond_c0
    const/4 v0, 0x0

    goto :goto_50

    :cond_c2
    const/4 v0, 0x0

    goto :goto_50

    :cond_c4
    const/4 v0, 0x0

    goto :goto_6b

    :cond_c6
    const/4 v0, 0x0

    goto :goto_81

    :cond_c8
    const/4 v0, 0x0

    goto :goto_a0

    :cond_ca
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/support/v7/preference/SecPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_bf
.end method

.method private updateServicesPreferences()V
    .registers 28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    if-nez v24, :cond_7

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "accessibility_enabled"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_bf

    const/4 v3, 0x1

    :goto_48
    const/4 v11, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    :goto_4d
    if-ge v11, v7, :cond_57

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez v12, :cond_c1

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v24

    if-nez v24, :cond_be

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v24, v0

    if-nez v24, :cond_af

    new-instance v24, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f12006b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_be
    return-void

    :cond_bf
    const/4 v3, 0x0

    goto :goto_48

    :cond_c1
    new-instance v16, Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_135

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    :goto_115
    if-eqz v18, :cond_138

    const v24, 0x7f121b7e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    :goto_122
    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v24, "com.samsung.android.app.talkback"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_144

    :cond_131
    :goto_131
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4d

    :cond_135
    const/16 v18, 0x0

    goto :goto_115

    :cond_138
    const v24, 0x7f121b7d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_122

    :cond_144
    const-string/jumbo v24, "com.samsung.android.universalswitch"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_131

    const-string/jumbo v24, "com.samsung.android.app.screenreader"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_131

    const-string/jumbo v24, "com.sec.android.app.camera"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_131

    const-string/jumbo v24, "com.sec.android.app.camera.plb"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_131

    const-string/jumbo v24, "com.samsung.android.bixby.agent"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_131

    const-string/jumbo v24, "com.samsung.android.bixby.bridge"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_131

    if-eqz v15, :cond_29d

    invoke-interface {v15, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    :goto_18c
    if-nez v17, :cond_2ac

    xor-int/lit8 v24, v18, 0x1

    if-eqz v24, :cond_2ac

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    invoke-static/range {v24 .. v26}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    if-eqz v5, :cond_2a1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_1ab
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1b4
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v17, :cond_2c0

    move/from16 v24, v18

    :goto_1bf
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    if-eqz v17, :cond_2c4

    move-object/from16 v22, v19

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1d3
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/SecRestrictedPreference;->setOrder(I)V

    const-class v24, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setFragment(Ljava/lang/String;)V

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setPersistent(Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/preference/SecRestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v24, "preference_key"

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/preference/SecRestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v24, "checked"

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v24, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_236

    const v24, 0x7f120085

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_236
    const-string/jumbo v24, "summary"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_286

    const-string/jumbo v24, "settings_title"

    const v25, 0x7f120069

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v24, "settings_component_name"

    new-instance v25, Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_286
    const-string/jumbo v24, "component_name"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_131

    :cond_29d
    const/16 v17, 0x1

    goto/16 :goto_18c

    :cond_2a1
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_1ab

    :cond_2ac
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_1b4

    :cond_2c0
    const/16 v24, 0x1

    goto/16 :goto_1bf

    :cond_2c4
    const v24, 0x7f120058

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_1d3
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .registers 3

    const/16 v0, 0x23e

    return v0
.end method

.method protected getHelpResource()I
    .registers 2

    const v0, 0x7f120cfa

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_1b

    move-result v1

    :goto_c
    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$9;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_11

    :goto_d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_11
    move-exception v0

    const-string/jumbo v1, "AccessibilitySettings"

    const-string/jumbo v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500cb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->setHasOptionsMenu(Z)V

    :cond_38
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_34

    return-object v3

    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120087

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$8;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    const v2, 0x7f120086

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    const/high16 v0, 0x7f0e0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_54

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_d
    :try_start_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    packed-switch v3, :pswitch_data_5c

    :goto_20
    :pswitch_20
    return v6

    :pswitch_21
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_35} :catch_36

    goto :goto_20

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_20

    :pswitch_3b
    :try_start_3b
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "helphub:appid"

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_4f} :catch_36

    goto :goto_20

    :pswitch_50
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    return v6

    :pswitch_data_54
    .packed-switch 0x7f0a0012
        :pswitch_50
        :pswitch_d
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_20
        :pswitch_21
        :pswitch_3b
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Accessibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getMetricsCategory()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b007b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_42

    const/16 v1, 0x3e8

    :goto_2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "easy_interaction"

    if-eqz v0, :cond_3d

    const/4 v2, 0x1

    :cond_3d
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1

    :cond_42
    move v1, v2

    goto :goto_2c

    :cond_44
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 9

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEndingPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/SecPreference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.callsettings.AnsweringCall"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "FROM_ACCESSIBILITY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_29} :catch_3e

    :goto_29
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return v6

    :catch_3e
    move-exception v0

    const-string/jumbo v2, "AccessibilitySettings"

    const-string/jumbo v3, "Unable to start callsettings.AnsweringCall"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_49
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/SecPreference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/support/v7/preference/SecPreference;

    const-class v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setFragment(Ljava/lang/String;)V

    :cond_5c
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const v0, 0x7f0a0013

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_e
    const v0, 0x7f0a0012

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "easy_interaction"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->setLinkedDataView()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "Accessibility"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
