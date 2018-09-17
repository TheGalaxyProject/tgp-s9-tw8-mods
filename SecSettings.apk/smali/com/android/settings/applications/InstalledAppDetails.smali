.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Lcom/android/settings/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$1;,
        Lcom/android/settings/applications/InstalledAppDetails$2;,
        Lcom/android/settings/applications/InstalledAppDetails$3;,
        Lcom/android/settings/applications/InstalledAppDetails$4;,
        Lcom/android/settings/applications/InstalledAppDetails$5;,
        Lcom/android/settings/applications/InstalledAppDetails$6;,
        Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;,
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;,
        Lcom/android/settings/applications/InstalledAppDetails$PackageUtil;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/AppInfoBase;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/support/v7/preference/Preference$OnPreferenceClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
        ">;",
        "Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;"
    }
.end annotation


# static fields
.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

.field private static mIsKNOX3rdpartyApp:Z


# instance fields
.field private getApplicationUninstallationEnabled:I

.field private isStopSystemAppAllowed:I

.field private mActionButtons:Lcom/android/settings/applications/LayoutPreference;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsSettingsPreference:Landroid/support/v7/preference/Preference;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mBatteryPercent:Ljava/lang/String;

.field mBatteryPreference:Lcom/android/settings/AppProgressPreference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mBatteryUpdater:Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

.field private mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPreference:Lcom/android/settings/AppProgressPreference;

.field private mDefaultBrowserPreference:Landroid/support/v7/preference/SecPreference;

.field private mDefaultEmergencyPreference:Landroid/support/v7/preference/SecPreference;

.field private mDefaultHomePreference:Landroid/support/v7/preference/SecPreference;

.field private mDefaultPhonePreference:Landroid/support/v7/preference/SecPreference;

.field private mDefaultSmsPreference:Landroid/support/v7/preference/SecPreference;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private mDisableAfterUninstall:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHeader:Lcom/android/settings/applications/LayoutPreference;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInstantAppButtonsController:Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

.field private mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

.field private mIsEmerMode:Z

.field private mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

.field private mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

.field private mLaunchPreference:Landroid/support/v7/preference/SecPreference;

.field private mMemoryPreference:Lcom/android/settings/AppProgressPreference;

.field private mMemoryUpdater:Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

.field private mNotificationPreference:Landroid/support/v7/preference/SecPreference;

.field private final mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionsPreference:Landroid/support/v7/preference/SecPreference;

.field private final mShouldNotDisabledPackages:[Ljava/lang/String;

.field private mShowUninstalled:Z

.field mSipper:Lcom/android/internal/os/BatterySipper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field protected mStatsManager:Lcom/android/settings/applications/ProcStatsData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStoragePreference:Lcom/android/settings/AppProgressPreference;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mVersionPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultHomePreference:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/android/settings/AppProgressPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/android/settings/AppProgressPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sput-object p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/applications/InstalledAppDetails;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateDataUsage()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/applications/InstalledAppDetails;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateStorage()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.statementservice"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mShouldNotDisabledPackages:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$5;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addAppInstallerInfoPref(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/applications/AppStoreUtil;->getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_23

    return-void

    :cond_23
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_76

    const v1, 0x7f120e05

    :goto_30
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v6, 0x7f1201cc

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v6, 0x7f1201ce

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const-string/jumbo v6, "app_info_store"

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-virtual {p0, v1, v6}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v6, v3, v7}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_7a

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_72
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_76
    const v1, 0x7f1201cd

    goto :goto_30

    :cond_7a
    invoke-virtual {v5, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_72
.end method

.method private addDynamicPrefs()V
    .registers 16

    const/4 v14, 0x1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_23

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->removeDefaultAppPref()V

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1c0

    const-string/jumbo v10, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19c

    const-string/jumbo v10, "home_dcm"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreference;

    iput-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultHomePreference:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v10, "default_home"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_62

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "default_home"

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_62
    :goto_62
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1f0

    const-string/jumbo v10, "default_browser"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreference;

    iput-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Landroid/support/v7/preference/SecPreference;

    :cond_75
    :goto_75
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->hasPhonePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_209

    const-string/jumbo v10, "default_phone_app"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreference;

    iput-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Landroid/support/v7/preference/SecPreference;

    :cond_88
    :goto_88
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;->hasEmergencyPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_222

    const-string/jumbo v10, "default_emergency_app"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreference;

    iput-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultEmergencyPreference:Landroid/support/v7/preference/SecPreference;

    :cond_9b
    :goto_9b
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->hasSmsPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_23b

    const-string/jumbo v10, "default_sms_app"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreference;

    iput-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Landroid/support/v7/preference/SecPreference;

    :cond_ae
    :goto_ae
    const/4 v7, 0x0

    :try_start_af
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_af .. :try_end_bb} :catch_254

    move-result-object v7

    :goto_bc
    const-string/jumbo v10, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-direct {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v10, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v7, :cond_272

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v10, v11}, Lcom/android/settings/applications/PictureInPictureSettings;->checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    :goto_d4
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isPotentialAppSource()Z

    move-result v6

    if-nez v3, :cond_e0

    if-nez v5, :cond_e0

    if-nez v4, :cond_e0

    if-eqz v6, :cond_195

    :cond_e0
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v10, 0x7f120105

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    if-eqz v3, :cond_125

    const-string/jumbo v10, "com.samsung.knox.securefolder"

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_125

    new-instance v8, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    invoke-virtual {v8, v14}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v10, "system_alert_window"

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setKey(Ljava/lang/String;)V

    new-instance v10, Lcom/android/settings/applications/InstalledAppDetails$11;

    invoke-direct {v10, p0}, Lcom/android/settings/applications/InstalledAppDetails$11;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_125
    if-eqz v5, :cond_14b

    new-instance v8, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    invoke-virtual {v8, v14}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v10, "write_settings_apps"

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setKey(Ljava/lang/String;)V

    new-instance v10, Lcom/android/settings/applications/InstalledAppDetails$12;

    invoke-direct {v10, p0}, Lcom/android/settings/applications/InstalledAppDetails$12;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_14b
    if-eqz v4, :cond_170

    new-instance v8, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const v10, 0x7f1214a0

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    const-string/jumbo v10, "picture_in_picture"

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    new-instance v10, Lcom/android/settings/applications/InstalledAppDetails$13;

    invoke-direct {v10, p0}, Lcom/android/settings/applications/InstalledAppDetails$13;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_170
    if-eqz v6, :cond_195

    new-instance v8, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const v10, 0x7f120dff

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    const-string/jumbo v10, "install_other_apps"

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    new-instance v10, Lcom/android/settings/applications/InstalledAppDetails$14;

    invoke-direct {v10, p0}, Lcom/android/settings/applications/InstalledAppDetails$14;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_195
    invoke-direct {p0, v9}, Lcom/android/settings/applications/InstalledAppDetails;->addAppInstallerInfoPref(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->maybeAddInstantAppButtons()V

    return-void

    :cond_19c
    const-string/jumbo v10, "default_home"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreference;

    iput-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultHomePreference:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v10, "home_dcm"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_62

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "home_dcm"

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_62

    :cond_1c0
    const-string/jumbo v10, "default_home"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_1d7

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "default_home"

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1d7
    const-string/jumbo v10, "home_dcm"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_62

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "home_dcm"

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_62

    :cond_1f0
    const-string/jumbo v10, "default_browser"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_75

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "default_browser"

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_75

    :cond_209
    const-string/jumbo v10, "default_phone_app"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_88

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "default_phone_app"

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_88

    :cond_222
    const-string/jumbo v10, "default_emergency_app"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_9b

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "default_emergency_app"

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_9b

    :cond_23b
    const-string/jumbo v10, "default_sms_app"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_ae

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "default_sms_app"

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_ae

    :catch_254
    move-exception v2

    sget-object v10, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception while retrieving the package info of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_bc

    :cond_272
    const/4 v4, 0x0

    goto/16 :goto_d4
.end method

.method private checkContainerRestrictionOnButtons()V
    .registers 13

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_5e

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "sec_container_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v4

    const/4 v8, 0x1

    :try_start_34
    invoke-virtual {v4, v8}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v8

    if-eqz v8, :cond_62

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ContainerApplicationPolicy;->getPackages()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    array-length v10, v1

    move v8, v9

    :goto_4c
    if-ge v8, v10, :cond_57

    aget-object v6, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_53} :catch_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_53} :catch_86

    move-result v11

    if-eqz v11, :cond_5f

    const/4 v5, 0x1

    :cond_57
    :goto_57
    if-eqz v5, :cond_5e

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5e
    return-void

    :cond_5f
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    :cond_62
    :try_start_62
    sget-object v8, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "checkContainerRestrictionOnButtons: containerMgr is null"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/SecurityException; {:try_start_62 .. :try_end_6a} :catch_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_62 .. :try_end_6a} :catch_86

    goto :goto_57

    :catch_6b
    move-exception v3

    sget-object v8, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SecurityException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :catch_86
    move-exception v2

    sget-object v8, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IllegalStateException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .registers 9

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/util/Pair;

    const/16 v6, 0x327

    invoke-virtual {v3, v4, v6, p1, v5}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_26

    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "forceStopPackage : ActivityManager is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const-string/jumbo v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stopping package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_5c

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_5c
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    return-void
.end method

.method public static getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v1, :cond_18

    const v1, 0x7f1213bf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_18
    const v1, 0x7f1213c0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13
.end method

.method public static getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .registers 2

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageList;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .registers 7

    const v4, 0x7f12086b

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisablingBtnUnblocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_30

    :cond_2c
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    :goto_2f
    return v0

    :cond_30
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_4d

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4d

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisablingBtnBlocked()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v0, 0x0

    goto :goto_2f

    :cond_4b
    const/4 v0, 0x1

    goto :goto_2f

    :cond_4d
    const v1, 0x7f120941

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    goto :goto_2f
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_c

    :cond_b
    return v2

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    return v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_25
    return v2
.end method

.method private initUninstallButtons()V
    .registers 16

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_127

    const/4 v7, 0x1

    :goto_b
    const/4 v5, 0x1

    if-eqz v7, :cond_12a

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v5

    :goto_14
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "disablAppList : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    array-length v11, v1

    :goto_52
    if-ge v10, v11, :cond_6d

    aget-object v0, v1, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_130

    iget-object v12, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v12, v12, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v12, :cond_130

    const/4 v5, 0x0

    :cond_6d
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mShouldNotDisabledPackages:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_71
    if-ge v10, v12, :cond_8c

    aget-object v0, v11, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_134

    iget-object v13, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v13, v13, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v13, :cond_134

    const/4 v5, 0x0

    :cond_8c
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string/jumbo v12, "getApplicationUninstallationEnabled"

    invoke-static {v10, v11, v12, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    iget v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b1

    iget v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_b1

    const/4 v5, 0x0

    :cond_b1
    iget-boolean v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    if-eqz v10, :cond_b6

    const/4 v5, 0x0

    :cond_b6
    if-eqz v7, :cond_c5

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c5

    const/4 v5, 0x0

    :cond_c5
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d0

    const/4 v5, 0x0

    :cond_d0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e1

    const/4 v5, 0x0

    :cond_e1
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ec

    const/4 v5, 0x0

    :cond_ec
    if-eqz v5, :cond_fd

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    if-eqz v7, :cond_138

    const/4 v5, 0x0

    :cond_fd
    :goto_fd
    iget-boolean v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v10, :cond_102

    const/4 v5, 0x0

    :cond_102
    :try_start_102
    const-string/jumbo v10, "webviewupdate"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_116} :catch_161

    move-result v10

    if-eqz v10, :cond_11a

    const/4 v5, 0x0

    :cond_11a
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v5, :cond_126

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_126
    return-void

    :cond_127
    const/4 v7, 0x0

    goto/16 :goto_b

    :cond_12a
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUnintsallButtonForUserApp()Z

    move-result v5

    goto/16 :goto_14

    :cond_130
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_52

    :cond_134
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_71

    :cond_138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_152

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_150

    const/4 v5, 0x1

    goto :goto_fd

    :cond_150
    const/4 v5, 0x0

    goto :goto_fd

    :cond_152
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v5, v10, 0x1

    goto :goto_fd

    :catch_161
    move-exception v4

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method private isDisabledUntilUsed()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isDisablingBtnBlocked()Z
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_43

    const-string/jumbo v4, "com.sec.android.app.blockdisabling"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_43

    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Blocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_42} :catch_6c

    const/4 v3, 0x1

    :cond_43
    :goto_43
    const-string/jumbo v4, "com.evernote"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    const-string/jumbo v4, "com.samsung.android.app.pinboard"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    const-string/jumbo v4, "com.osp.app.signin"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    :cond_6a
    const/4 v3, 0x1

    :cond_6b
    return v3

    :catch_6c
    move-exception v2

    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not found package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private isDisablingBtnUnblocked()Z
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_43

    const-string/jumbo v4, "com.sec.android.app.unblockdisabling"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_43

    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unblocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_42} :catch_9c

    const/4 v3, 0x1

    :cond_43
    :goto_43
    const-string/jumbo v4, "com.samsung.android.app.watchmanager"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9a

    const-string/jumbo v4, "com.sec.android.sidesync30"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9a

    const-string/jumbo v4, "com.sec.android.sidesync.source"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9a

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSemAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9b

    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x138e4

    if-le v4, v5, :cond_9b

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSecureFolderExist(Landroid/os/UserManager;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9b

    const-string/jumbo v4, "com.samsung.knox.securefolder"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    :cond_9a
    const/4 v3, 0x1

    :cond_9b
    return v3

    :catch_9c
    move-exception v2

    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not found package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private isKioskHomeBlocked()Z
    .registers 8

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v5, "isKioskModeEnabled"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v5, "getKioskHomePackage"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    return v0
.end method

.method private isPotentialAppSource()Z
    .registers 5

    const/4 v3, 0x0

    new-instance v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v1

    return v1
.end method

.method private isProfileOrDeviceOwner(Ljava/lang/String;)Z
    .registers 10

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return v7

    :cond_1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    return v7

    :cond_3e
    const/4 v5, 0x0

    return v5
.end method

.method private isSingleUser()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    if-eq v0, v1, :cond_15

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x2

    if-ne v0, v3, :cond_16

    :cond_15
    :goto_15
    return v1

    :cond_16
    move v1, v2

    goto :goto_15
.end method

.method private prepareUninstallAndStop()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0708

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v1, 0x7f120c53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0493

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private removeDefaultAppPref()V
    .registers 3

    const-string/jumbo v0, "default_home"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_17
    const-string/jumbo v0, "home_dcm"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "home_dcm"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2e
    const-string/jumbo v0, "default_browser"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_45
    const-string/jumbo v0, "default_phone_app"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5c
    const-string/jumbo v0, "default_emergency_app"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_emergency_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_73
    const-string/jumbo v0, "default_sms_app"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_8a
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .registers 10

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const v5, 0x7f0a00a0

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_57

    const/4 v3, 0x0

    :goto_20
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v4

    invoke-interface {v4, p0, v1}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/AppHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/AppHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/AppHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/settings/applications/AppHeaderController;->setIsInstantApp(Z)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mVersionPreference:Landroid/support/v7/preference/Preference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v5, v7

    const v6, 0x7f121dc9

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_57
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/settings/Utils;->getInstallationStatus(Landroid/content/pm/ApplicationInfo;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_20
.end method

.method public static setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v3, 0x1020018

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v5, 0x7f0d0378

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x7f0a008e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0a0091

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a096b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f121dc9

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5c
    return-void

    :cond_5d
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5c
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v3, 0x0

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    :try_start_5
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_f

    move-result v1

    if-ltz v1, :cond_10

    const/4 v2, 0x1

    return v2

    :catch_f
    move-exception v0

    :cond_10
    return v3
.end method

.method private startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {p1, p2, p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "package"

    iget-object v2, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    iget-object v2, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "hideInfoButton"

    invoke-virtual {v3, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    move-object v1, p2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private startManagePermissionsActivity()V
    .registers 6

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "hideInfoButton"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1b
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    const-string/jumbo v2, "InstalledAppDetails"

    const-string/jumbo v3, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->stopListeningToPackageRemove()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isKNOX3rdApp"

    sget-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v6, [Landroid/util/Pair;

    const/16 v5, 0x368

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0, v1, v6}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    return-void
.end method

.method private updateBattery()V
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1, v11}, Lcom/android/settings/AppProgressPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v1, v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v6

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPercent:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const v3, 0x7f120374

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AppProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/AppProgressPreference;->setProgress(I)V

    :goto_56
    return-void

    :cond_57
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1, v10}, Lcom/android/settings/AppProgressPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    const v2, 0x7f12132c

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AppProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1, v10}, Lcom/android/settings/AppProgressPreference;->setProgress(I)V

    goto :goto_56
.end method

.method private updateDataUsage()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    if-eqz v3, :cond_62

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v3, :cond_f1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    if-eqz v11, :cond_63

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v20, v0

    add-long v16, v18, v20

    :goto_3b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-wide/16 v18, 0x0

    cmp-long v3, v12, v18

    if-nez v3, :cond_66

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    const v10, 0x7f121330

    invoke-virtual {v3, v10}, Lcom/android/settings/AppProgressPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/settings/AppProgressPreference;->setProgress(I)V

    :cond_62
    :goto_62
    return-void

    :cond_63
    const-wide/16 v16, 0x0

    goto :goto_3b

    :cond_66
    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-eqz v3, :cond_75

    const-wide/16 v18, 0x64

    mul-long v18, v18, v12

    div-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-int v14, v0

    :cond_75
    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "appUsageBytes : "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v18, ", totalBytes : "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v18, ", ratio : "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    const/16 v18, 0x0

    aput-object v10, v3, v18

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    const/16 v18, 0x1

    aput-object v10, v3, v18

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v10, v10, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v18

    const v10, 0x10010

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    const/16 v18, 0x2

    aput-object v10, v3, v18

    const v10, 0x7f1206ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v3, v15}, Lcom/android/settings/AppProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v3, v14}, Lcom/android/settings/AppProgressPreference;->setProgress(I)V

    goto/16 :goto_62

    :cond_f1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    const v10, 0x7f12060c

    invoke-virtual {v3, v10}, Lcom/android/settings/AppProgressPreference;->setSummary(I)V

    goto/16 :goto_62
.end method

.method private updateDynamicPrefs()V
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultHomePreference:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultHomePreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultHomePreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->returnSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultHomePreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_20
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->returnSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3b
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->returnSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_56
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Landroid/support/v7/preference/SecPreference;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->returnSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_71
    const-string/jumbo v2, "system_alert_window"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_91

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_91
    const-string/jumbo v2, "picture_in_picture"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_ad

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/settings/applications/PictureInPictureDetails;->getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_ad
    const-string/jumbo v2, "write_settings_apps"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_cd

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v3, v4}, Lcom/android/settings/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_cd
    const-string/jumbo v2, "install_other_apps"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_e3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v2, v3}, Lcom/android/settings/applications/ExternalSourcesDetails;->getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_e3
    return-void
.end method

.method private updateForceStopButton(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a
.end method

.method private updateForceStopButtonsForException()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "com.wssyncmldm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string/jumbo v0, "com.ws.dm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string/jumbo v0, "com.sec.downloadablekeystore"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string/jumbo v0, "com.sec.android.fotaclient"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_3d
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_42
    :goto_42
    return-void

    :cond_43
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string/jumbo v0, "com.sec.sprextension"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "com.sec.sprextension.phoneinfo"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_6a
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_42

    :cond_6e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const-string/jumbo v0, "com.itsoninc.android.itsonclient"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-string/jumbo v0, "com.itsoninc.android.itsonservice"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-string/jumbo v0, "com.itsoninc.android.uid"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    :cond_a2
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_42

    :cond_a6
    const-string/jumbo v0, "com.samsung.android.bbc.bbcagent"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_42

    :cond_b7
    const-string/jumbo v0, "com.samsung.android.themecenter"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto/16 :goto_42

    :cond_c9
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isKioskHomeBlocked()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto/16 :goto_42

    :cond_d4
    const-string/jumbo v0, "com.samsung.android.da.daagent"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto/16 :goto_42
.end method

.method private updateStorage()V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    const/4 v0, 0x1

    :goto_c
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/android/settings/AppProgressPreference;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-static {v2, v3, v0}, Lcom/android/settings/applications/AppStorageSettings;->getStorageSummary(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AppProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/android/settings/AppProgressPreference;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v2}, Lcom/android/settings/applications/AppStorageSettings;->getRatio(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AppProgressPreference;->setProgress(I)V

    :cond_2a
    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public checkAdminRestrictionOnButtons()V
    .registers 6

    :try_start_0
    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3d

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3d

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_3d

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to get package info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method

.method checkForceStop()V
    .registers 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "InstalledAppDetails"

    const-string/jumbo v2, "User can\'t force stop device admin"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    :goto_1b
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButtonsForException()V

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1b

    :cond_34
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_4c

    const-string/jumbo v0, "InstalledAppDetails"

    const-string/jumbo v2, "App is not explicitly stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_1b

    :cond_4c
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string/jumbo v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending broadcast to query restart status for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1b
.end method

.method public checkKnox(I)V
    .registers 6

    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkKnox() start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd

    if-ne p1, v2, :cond_26

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.knox.containeragent.password_verify_from_UninstallApp"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_26

    const/high16 v2, 0x20000

    :try_start_18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkKnox(KNOX_VERIFY_UNINSTALL)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_26
.end method

.method protected createDialog(II)Landroid/app/AlertDialog;
    .registers 9

    const v5, 0x7f12086b

    const v2, 0x7f1201c2

    const v4, 0x7f12089f

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_94

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppButtonsController:Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppButtonsController:Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$8;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$8;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_3f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$9;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$9;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120c54

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$10;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$10;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    const v2, 0x7f120c55

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_93
    return-object v3

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_66
        :pswitch_18
        :pswitch_3f
    .end packed-switch
.end method

.method ensurePackageInfoAvailable(Landroid/app/Activity;)Z
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_15

    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    const-string/jumbo v0, "InstalledAppDetails"

    const-string/jumbo v1, "Package info not available. Is this package already uninstalled?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    const/4 v0, 0x0

    return v0

    :cond_15
    return v1
.end method

.method public exeCustomAction()V
    .registers 1

    return-void
.end method

.method public exeOptAction()V
    .registers 1

    return-void
.end method

.method public exePrefAction()V
    .registers 14

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v12

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, ""

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :cond_1b
    if-eqz v12, :cond_d1

    const-string/jumbo v0, "ApplicationInfoBattery"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "BatteryUsageInfo"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "Yes"

    const-string/jumbo v6, "AppName"

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :cond_45
    :goto_45
    return-void

    :cond_46
    const-string/jumbo v0, "ApplicationInfoStorage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    goto :goto_40

    :cond_57
    const-string/jumbo v0, "Memory"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v3, "Memory"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_71
    const-string/jumbo v0, "MobileData"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v3, "MobileData"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_8b
    const-string/jumbo v0, "Storage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v3, "Storage"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_a5
    const-string/jumbo v0, "ApplicationInfoSetAsDefault"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v3, "SetAsDefault"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_bf
    const-string/jumbo v0, "ApplicationInfoPermissions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_d1
    const-string/jumbo v0, "ApplicationInfoBattery"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_114

    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "ApplicationInfo"

    const-string/jumbo v6, "BatteryUsageInfo"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "No"

    const-string/jumbo v9, "AppName"

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryUpdater:Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryUpdater:Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryUpdater:Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_10d

    :cond_106
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    goto/16 :goto_45

    :cond_10d
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_45

    :cond_114
    const-string/jumbo v0, "ApplicationInfoStorage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137

    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "ApplicationInfo"

    const-string/jumbo v6, "DataUsage"

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "no"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_45

    :cond_137
    const-string/jumbo v0, "Memory"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_173

    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "ApplicationInfo"

    const-string/jumbo v6, "Memory"

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "no"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryUpdater:Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryUpdater:Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryUpdater:Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_16c

    :cond_165
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    goto/16 :goto_45

    :cond_16c
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_45

    :cond_173
    const-string/jumbo v0, "MobileData"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_196

    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "ApplicationInfo"

    const-string/jumbo v6, "MobileData"

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "no"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_45

    :cond_196
    const-string/jumbo v0, "Storage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "ApplicationInfo"

    const-string/jumbo v6, "Storage"

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "no"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_45

    :cond_1b9
    const-string/jumbo v0, "ApplicationInfoSetAsDefault"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, "ApplicationInfo"

    const-string/jumbo v6, "SetAsDefault"

    const-string/jumbo v7, "Valid"

    const-string/jumbo v8, "no"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_45
.end method

.method public exeViewAction()V
    .registers 12

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v8, ""

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :cond_11
    const-string/jumbo v0, "ApplicationInfoDisable"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->exeViewBasicAction(Z)Z

    move-result v9

    :goto_21
    if-eqz v9, :cond_af

    const-string/jumbo v0, "ApplicationInfoUninstall"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Uninstall"

    const-string/jumbo v4, "possible"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :goto_44
    return-void

    :cond_45
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->exeViewBasicAction(Z)Z

    move-result v9

    goto :goto_21

    :cond_4d
    const-string/jumbo v0, "ApplicationInfoDisable"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Disable"

    const-string/jumbo v4, "alreadyapplied"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_77
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Disable"

    const-string/jumbo v4, "alreadyapplied"

    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "AppName"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_92
    const-string/jumbo v0, "ApplicationInfoForceStop"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "ForceStop"

    const-string/jumbo v4, "Active"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_af
    const-string/jumbo v0, "ApplicationInfoUninstall"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Uninstall"

    const-string/jumbo v4, "possible"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_cb
    :goto_cb
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_44

    :cond_d2
    const-string/jumbo v0, "ApplicationInfoDisable"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Disable"

    const-string/jumbo v4, "possible"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb

    :cond_ef
    const-string/jumbo v0, "ApplicationInfoForceStop"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "ForceStop"

    const-string/jumbo v4, "Active"

    const-string/jumbo v5, "no"

    const-string/jumbo v6, "AppName"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method initUnintsallButtonForUserApp()Z
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_23

    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v2, 0x7f121c86

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    return v0

    :cond_23
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1a
.end method

.method synthetic lambda$-com_android_settings_applications_InstalledAppDetails_91422(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    return-void
.end method

.method maybeAddInstantAppButtons()V
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "instant_app_buttons"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v2

    const v3, 0x7f0a042f

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/-$Lambda$uQiCU3kEAQBwhjE41Xw9XFOmQyY;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/-$Lambda$uQiCU3kEAQBwhjE41Xw9XFOmQyY;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newInstantAppButtonsController(Landroid/app/Fragment;Landroid/view/View;Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;)Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->show()Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppButtonsController:Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    :cond_3b
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "header_view"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const-string/jumbo v1, "action_buttons"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a00a0

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/AppHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Lcom/android/settings/applications/AppHeaderController;->setButtonActions(II)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/AppHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/AppHeaderController;->bindAppHeaderButtons()Lcom/android/settings/applications/AppHeaderController;

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->prepareUninstallAndStop()V

    const-string/jumbo v1, "apps_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsSettingsPreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "apps_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "notification_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v1, "storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppProgressPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/android/settings/AppProgressPreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/AppProgressPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v1, "permission_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v1, "data_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppProgressPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/AppProgressPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    const v2, 0x7f12074e

    invoke-virtual {v1, v2}, Lcom/android/settings/AppProgressPreference;->setTitle(I)V

    :cond_bd
    const-string/jumbo v1, "battery"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppProgressPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/AppProgressPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/AppProgressPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v1, "memory"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppProgressPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/android/settings/AppProgressPreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/AppProgressPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/android/settings/AppProgressPreference;

    const v2, 0x7f121341

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AppProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "app_version"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mVersionPreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "instant_app_launch_supported_domain_urls"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppDomainsPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

    const-string/jumbo v1, "preferred_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_154

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_154

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_131

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_13e

    :cond_131
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_136
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    return-void

    :cond_13e
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-interface {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v1

    if-nez v1, :cond_14e

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_136

    :cond_14e
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_136

    :cond_154
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_136
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_50

    :goto_8
    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "ALDS"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_41
    :pswitch_41
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p0, v4, v4}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    goto :goto_8

    :cond_4b
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->startListeningToPackageRemove()V

    goto :goto_8

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_9
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 16

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v8, :cond_c

    invoke-virtual {p0, v13, v13}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void

    :cond_c
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v8, :cond_15a

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b00ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->stopListeningToPackageRemove()V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    new-array v8, v12, [Landroid/util/Pair;

    const/16 v9, 0x369

    invoke-virtual {v7, v0, v9, v8}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {v0, v6, v13}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_57
    const-string/jumbo v8, "sec_container_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_66

    const/16 v7, 0xd

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/InstalledAppDetails;->checkKnox(I)V

    return-void

    :cond_66
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v4

    if-eqz v4, :cond_c7

    invoke-virtual {v4}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v8

    if-eqz v8, :cond_c7

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c7

    iget v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v8}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-nez v8, :cond_88

    iget v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    if-nez v8, :cond_c7

    :cond_88
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_a4

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_c7

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_c7

    :cond_a4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->stopListeningToPackageRemove()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.android.da.daagent"

    const-string/jumbo v8, "com.samsung.android.da.daagent.RemoveDualIM"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "packageName"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "userId"

    iget v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v11}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_c7
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v8, v3, v9}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iget-boolean v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-nez v8, :cond_ed

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v8, v3, v9}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    :goto_df
    if-eqz v1, :cond_ef

    xor-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_ef

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_ec
    :goto_ec
    return-void

    :cond_ed
    const/4 v5, 0x1

    goto :goto_df

    :cond_ef
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_147

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_11c

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_11c

    iget-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v7, :cond_118

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isSingleUser()Z

    move-result v7

    if-eqz v7, :cond_118

    const/4 v7, 0x3

    invoke-virtual {p0, v7, v12}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_ec

    :cond_118
    invoke-virtual {p0, v11, v12}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_ec

    :cond_11c
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_144

    const/16 v8, 0x36a

    :goto_12c
    new-array v11, v12, [Landroid/util/Pair;

    invoke-virtual {v9, v10, v8, v11}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, p0, v9, v12}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v9, v13, [Ljava/lang/Object;

    check-cast v7, Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-virtual {v8, v9}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_ec

    :cond_144
    const/16 v8, 0x36b

    goto :goto_12c

    :cond_147
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-nez v7, :cond_156

    invoke-direct {p0, v3, v13, v12}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_ec

    :cond_156
    invoke-direct {p0, v3, v12, v12}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_ec

    :cond_15a
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_ec

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00ac

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v7, :cond_185

    iget-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_185

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v7, v8}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_ec

    :cond_185
    invoke-virtual {p0, v13, v12}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_ec
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->ensurePackageInfoAvailable(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0, v7}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    const v4, 0x7f1500d0

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->addDynamicPrefs()V

    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v4

    if-eqz v4, :cond_89

    const-string/jumbo v4, "netstats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    :try_start_2c
    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_82

    :goto_32
    new-instance v4, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v6, "isStopSystemAppAllowed"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_63

    iput-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    :cond_63
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string/jumbo v4, "usb"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :catch_82
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_89
    const-string/jumbo v4, "data_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto :goto_32
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;

    new-instance v2, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v2, v0}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f1201c8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f121c84

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onDestroy()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    return v3

    :pswitch_a
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    :cond_1d
    return v4

    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    :cond_43
    return v4

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1e
    .end packed-switch
.end method

.method protected onPackageRemoved()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onPackageRemoved()V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "InstalledAppDetails"

    const-string/jumbo v1, "Package change irrelevant, skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/android/settings/AppProgressPreference;

    if-ne p1, v0, :cond_12

    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v1}, Lcom/android/settings/AppProgressPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    :goto_10
    const/4 v0, 0x1

    return v0

    :cond_12
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_23

    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    const v1, 0x7f1201f9

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_23
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_2b

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    goto :goto_10

    :cond_2b
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_3b

    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_3b
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/android/settings/AppProgressPreference;

    if-ne p1, v0, :cond_89

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportCiq"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_56
    if-ltz v7, :cond_77

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    const-string/jumbo v0, "diagandroid.iqd"

    iget-object v1, v6, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_74
    add-int/lit8 v7, v7, -0x1

    goto :goto_56

    :cond_77
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;Z)V

    goto :goto_10

    :cond_89
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    if-ne p1, v0, :cond_9b

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    const v1, 0x7f1201bf

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_9b
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    if-ne p1, v0, :cond_da

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportCiq"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca

    const-string/jumbo v0, "diagandroid.iqd"

    iget-object v1, v4, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    const-string/jumbo v0, "system"

    iput-object v0, v4, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    :cond_ca
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPercent:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_da
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_f2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_10

    :cond_f2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_10a

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0351

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_10

    :cond_10a
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_122

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_10

    :cond_122
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultEmergencyPreference:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v0, :cond_13a

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_10

    :cond_13a
    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v3, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v3, :cond_81

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_81

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7f

    :goto_28
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    :goto_2a
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_84

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_37
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v0, v3}, Lcom/android/settingslib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_6a

    const-string/jumbo v1, "com.skt.prod.phone"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string/jumbo v1, "com.skt.prod.dialer"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    :cond_67
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6a
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_7e

    const-string/jumbo v1, "com.samsung.knox.securefolder"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7e
    return-void

    :cond_7f
    move v1, v2

    goto :goto_28

    :cond_81
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    goto :goto_2a

    :cond_84
    move v1, v2

    goto :goto_37
.end method

.method public onResume()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v2, :cond_a

    return-void

    :cond_a
    new-instance v0, Lcom/android/settingslib/AppItem;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v2}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/AppItem;->addUid(I)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v2, :cond_3e

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_3e
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryUpdater:Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryUpdater:Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryUpdater:Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryUpdater:Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateDynamicPrefs()V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "ApplicationInfo"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_6f
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v2, :cond_80

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_80
    return-void
.end method

.method prepareInstantAppPrefs()V
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

    array-length v4, v1

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppDomainsPreference;->setValues([I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_36
    return-void

    :cond_37
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_36
.end method

.method protected refreshUi()Z
    .registers 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v13, :cond_13

    :cond_11
    const/4 v13, 0x0

    return v13

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v13, :cond_1b

    const/4 v13, 0x0

    return v13

    :cond_1b
    :try_start_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_2c} :catch_32

    move-result v7

    const/4 v13, 0x2

    if-ne v7, v13, :cond_38

    const/4 v13, 0x0

    return v13

    :catch_32
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v13, 0x0

    return v13

    :cond_38
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v13

    if-eqz v13, :cond_66

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_66

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_66

    const/4 v13, 0x0

    return v13

    :cond_66
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v8}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    const/4 v9, 0x0

    :goto_7a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_b0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v13, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_ad

    const-string/jumbo v13, "android.app.home.alternate"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ad

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_ad
    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    :cond_b0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->prepareInstantAppPrefs()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v13, v14, v15}, Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v13, :cond_19b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_19b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x800000

    and-int/2addr v13, v14

    if-eqz v13, :cond_fc

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v13, v13, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_17b

    :cond_fc
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v0, v1, v4}, Lcom/android/settingslib/applications/AppUtils;->getLaunchByDefaultSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/InstalledAppDetails;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-static {v14, v4, v15}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkAdminRestrictionOnButtons()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkContainerRestrictionOnButtons()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateStorage()V

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/android/settings/applications/InstalledAppDetails$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/applications/InstalledAppDetails$7;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateDataUsage()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateBattery()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v13, :cond_1a7

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x800000

    and-int/2addr v13, v14

    if-nez v13, :cond_1a5

    const/4 v13, 0x1

    :goto_175
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    :cond_179
    const/4 v13, 0x1

    return v13

    :cond_17b
    sget-object v13, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-interface {v13, v14}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v13

    if-nez v13, :cond_191

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_104

    :cond_191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_104

    :cond_19b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_104

    :cond_1a5
    const/4 v13, 0x0

    goto :goto_175

    :cond_1a7
    :try_start_1a7
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v15, 0x400200

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v13, :cond_179

    iget v13, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1c2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a7 .. :try_end_1c2} :catch_1cb

    const/high16 v14, 0x800000

    and-int/2addr v13, v14

    if-eqz v13, :cond_1c9

    const/4 v13, 0x1

    :goto_1c8
    return v13

    :cond_1c9
    const/4 v13, 0x0

    goto :goto_1c8

    :catch_1cb
    move-exception v5

    const/4 v13, 0x0

    return v13
.end method

.method public setActionType(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v2, 0x7d0

    const-string/jumbo v0, "ApplicationInfoBattery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    const-string/jumbo v0, "ApplicationInfoStorage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "Storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_27
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_14

    :cond_2f
    const-string/jumbo v0, "MobileData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_14

    :cond_40
    const-string/jumbo v0, "Memory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/android/settings/AppProgressPreference;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_14

    :cond_51
    const-string/jumbo v0, "ApplicationInfoUninstall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string/jumbo v0, "ApplicationInfoDisable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    :cond_63
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_14

    :cond_6b
    const-string/jumbo v0, "ApplicationInfoForceStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_14

    :cond_7c
    const-string/jumbo v0, "ApplicationInfoSetAsDefault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_14

    :cond_8d
    const-string/jumbo v0, "ApplicationInfoPermissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_14
.end method

.method shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .registers 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v4, 0x2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    const/4 v0, 0x0

    goto :goto_7

    :cond_16
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_7

    :cond_28
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_30

    const/4 v0, 0x0

    goto :goto_7

    :cond_30
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_3e

    const/4 v0, 0x0

    goto :goto_7

    :cond_3e
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails$PackageUtil;->countPackageInUsers(Landroid/content/pm/PackageManager;Landroid/os/UserManager;Ljava/lang/String;)I

    move-result v1

    if-ge v1, v4, :cond_55

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_55

    const/4 v0, 0x0

    goto :goto_7

    :cond_55
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public stopAction()V
    .registers 3

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-void
.end method
