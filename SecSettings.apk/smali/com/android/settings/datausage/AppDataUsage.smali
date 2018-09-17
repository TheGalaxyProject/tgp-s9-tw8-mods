.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsage$1;,
        Lcom/android/settings/datausage/AppDataUsage$2;,
        Lcom/android/settings/datausage/AppDataUsage$3;,
        Lcom/android/settings/datausage/AppDataUsage$4;,
        Lcom/android/settings/datausage/AppDataUsage$5;,
        Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static bSupportRoamingReduction:Z

.field private static mSelectDisplayUnit:I

.field private static sAllowBackgroundDataUsage:I

.field private static sAllowUnrestrictedDataUsage:I

.field private static sCycle:I


# instance fields
.field private final RESTRICTION_ALWAYS:I

.field private final RESTRICTION_DURING_ROAMING:I

.field private final RESTRICTION_NEVER:I

.field private bg_Restriction_resId:[I

.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroid/support/v7/preference/PreferenceCategory;

.field private mAppSettings:Landroid/support/v7/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroid/support/v7/preference/Preference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCyclePosition:I

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnd:J

.field private mForegroundUsage:Landroid/support/v7/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsVZW:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcoFeature:Ljava/lang/String;

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRestrictBackgroundPco:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

.field private mSavedUsage:Landroid/support/v7/preference/Preference;

.field private mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

.field private mStart:J

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroid/support/v7/preference/Preference;

.field private mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

.field private mUnrestrictedDataPco:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkTemplate;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get15()I
    .registers 1

    sget v0, Lcom/android/settings/datausage/AppDataUsage;->sCycle:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/net/ChartData;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/AppDataUsage;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/datausage/AppDataUsage;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/datausage/AppDataUsage;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/settings/datausage/AppDataUsage;Landroid/support/v14/preference/SecSwitchPreference;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settings/datausage/AppDataUsage;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/settings/datausage/AppDataUsage;Landroid/support/v14/preference/SecSwitchPreference;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    return-object p1
.end method

.method static synthetic -set6(I)I
    .registers 1

    sput p0, Lcom/android/settings/datausage/AppDataUsage;->sCycle:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/AppDataUsage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->bindData()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/AppDataUsage;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/datausage/AppDataUsage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    sget v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    sget v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    iput v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iput v4, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_NEVER:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_ALWAYS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_DURING_ROAMING:I

    const v0, 0x7f1202e5

    const v1, 0x7f1202e4

    const v2, 0x7f1202e6

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->bg_Restriction_resId:[I

    iput-boolean v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsVZW:Z

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$4;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$5;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addUid(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    :goto_b
    array-length v2, v1

    if-ge v0, v2, :cond_24

    const-string/jumbo v2, "com.carrieriq.iqagent"

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1c
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_24
    return-void
.end method

.method private bindData()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_bc

    :cond_10
    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    const-string/jumbo v3, "cycle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v3, "divider_1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    :goto_2c
    add-long v18, v12, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v2, v14, v15}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v2, v12, v13}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v3, :cond_7c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_7c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSavedBytesByUid(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/support/v7/preference/Preference;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mIsVZW:Z

    if-eqz v3, :cond_bb

    sget v3, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    if-eqz v3, :cond_bb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {v4, v5, v14, v15}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {v4, v5, v12, v13}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_bb
    return-void

    :cond_bc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v12, v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    goto/16 :goto_2c
.end method

.method private getAppRestrictBackground()Z
    .registers 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v3, Lcom/android/settingslib/AppItem;->key:I

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method private getUnrestrictData()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private ifKnoxUserSetKnoxIconAndLabel(Landroid/content/pm/UserInfo;)Z
    .registers 8

    const/4 v5, 0x0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(I)[B

    move-result-object v0

    if-eqz v0, :cond_40

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    array-length v4, v0

    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    return v2

    :cond_40
    return v5

    :cond_41
    return v5
.end method

.method private updatePrefs()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    return-void
.end method

.method private updatePrefs(ZZ)V
    .registers 10

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    :goto_13
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_1c
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_25
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v0}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    :cond_2e
    if-nez v0, :cond_47

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_3b
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, p2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_44
    return-void

    :cond_45
    const/4 v0, 0x0

    goto :goto_13

    :cond_47
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_52
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_62

    if-eqz p1, :cond_84

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_5d
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, p2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_62
    sget-boolean v4, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    if-eqz v4, :cond_83

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    if-eqz v4, :cond_83

    move v1, p1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v4, :cond_7a

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v5, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v4, v5}, Lcom/android/settings/datausage/DataSaverBackend;->getRoamingReduction(I)I

    move-result v2

    :cond_7a
    const/4 v3, 0x0

    if-eqz p1, :cond_8b

    const/4 v3, 0x1

    :goto_7e
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    :cond_83
    return-void

    :cond_84
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_5d

    :cond_8b
    if-nez v2, :cond_8f

    const/4 v3, 0x2

    goto :goto_7e

    :cond_8f
    const/4 v3, 0x0

    goto :goto_7e
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x157

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 31

    invoke-super/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v2, "VZW"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mIsVZW:Z

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "data_usage_display_unit"

    const/4 v5, 0x2

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3b} :catch_26f

    if-eqz v10, :cond_276

    const-string/jumbo v2, "app_item"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/AppItem;

    :goto_46
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz v10, :cond_279

    const-string/jumbo v2, "network_template"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    :goto_55
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v2, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    invoke-static {v11, v2}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    :cond_6f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-nez v2, :cond_2ab

    if-eqz v10, :cond_27c

    const-string/jumbo v2, "uid"

    const/4 v4, -0x1

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    :goto_7f
    const/4 v2, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_28e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_8b
    :goto_8b
    const v2, 0x7f150016

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "total_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    const-string/jumbo v2, "foreground_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    const-string/jumbo v2, "background_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    const-string/jumbo v2, "saved_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/support/v7/preference/Preference;

    const-string/jumbo v2, "cycle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_2ca

    new-instance v2, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;ZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    :goto_f8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    if-lez v2, :cond_500

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-eqz v2, :cond_167

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    if-eqz v10, :cond_2e2

    :try_start_110
    const-string/jumbo v4, "package"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :goto_122
    const-string/jumbo v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    :cond_138
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_167
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_110 .. :try_end_167} :catch_5dc

    :cond_167
    :goto_167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_2f3

    const-string/jumbo v2, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "spr_roaming_reduction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "divider_3"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    :goto_193
    new-instance v2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string/jumbo v2, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1d1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1d1

    const/16 v19, 0x1

    :cond_1f5
    if-nez v19, :cond_20c

    const-string/jumbo v2, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "divider_2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    :cond_20c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_405

    const-string/jumbo v2, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v22

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    move/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v15, 0x1

    :goto_243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v15, v2, :cond_40d

    :try_start_24d
    new-instance v18, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_26c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_24d .. :try_end_26c} :catch_3e8

    :goto_26c
    add-int/lit8 v15, v15, 0x1

    goto :goto_243

    :catch_26f
    move-exception v13

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_276
    const/4 v2, 0x0

    goto/16 :goto_46

    :cond_279
    const/4 v2, 0x0

    goto/16 :goto_55

    :cond_27c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "uid"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_7f

    :cond_28e
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    new-instance v2, Lcom/android/settingslib/AppItem;

    move/from16 v0, v26

    invoke-direct {v2, v0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    goto/16 :goto_8b

    :cond_2ab
    const/4 v15, 0x0

    :goto_2ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v2, v2, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v15, v2, :cond_8b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v2, v2, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2ac

    :cond_2ca
    new-instance v2, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    goto/16 :goto_f8

    :cond_2e2
    :try_start_2e2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e2 .. :try_end_2f0} :catch_5dc

    move-result-object v20

    goto/16 :goto_122

    :cond_2f3
    const-string/jumbo v2, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_352

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_352

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121ce5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121ce3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_361

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_361
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v4, "CscFeature_Setting_SupportRoamingReduction"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    sget-boolean v2, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    if-eqz v2, :cond_3de

    const-string/jumbo v2, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "spr_roaming_reduction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    const v5, 0x7f1202e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f1202e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const v5, 0x7f1202e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "0"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "1"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "2"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_193

    :cond_3de
    const-string/jumbo v2, "spr_roaming_reduction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_193

    :catch_3e8
    move-exception v14

    const-string/jumbo v2, "AppDataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RejectedExecutionException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26c

    :cond_405
    const-string/jumbo v2, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    :cond_40d
    :goto_40d
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getInstance()Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    sget-boolean v2, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIsSupportDataCompression:Z

    if-eqz v2, :cond_429

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v2, :cond_439

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    sget-boolean v2, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIsDataCompressionEnabled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_439

    :cond_429
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/support/v7/preference/Preference;

    :cond_439
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v4, "CscFeature_Common_ConfigPco"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPcoFeature:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v4, "COMMON"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4cd

    const-string/jumbo v2, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v2, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "background_data_by_pco"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "background_data_by_pco"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5d8

    const/16 v24, 0x1

    :goto_49f
    if-eqz v24, :cond_4cd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_4b7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    :cond_4b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_4cd

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    :cond_4cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v2, :cond_4e4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_4e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_4f6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_4f6
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    const/4 v4, -0x4

    if-ne v2, v4, :cond_552

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f12075b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    :cond_518
    :goto_518
    const-string/jumbo v2, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "spr_roaming_reduction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "divider_2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v2, "divider_3"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_40d

    :cond_552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    const/4 v4, -0x5

    if-ne v2, v4, :cond_56b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f121bcf

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto :goto_518

    :cond_56b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    const/16 v4, -0x64

    if-ne v2, v4, :cond_585

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f121dd6

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto :goto_518

    :cond_585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Lcom/android/settingslib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v28}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v17

    if-eqz v17, :cond_5c7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->ifKnoxUserSetKnoxIconAndLabel(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-nez v2, :cond_518

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto/16 :goto_518

    :cond_5c7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f12075b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto/16 :goto_518

    :cond_5d8
    const/16 v24, 0x0

    goto/16 :goto_49f

    :catch_5dc
    move-exception v12

    goto/16 :goto_167
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_32

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;IIII)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x65
        :pswitch_a
    .end packed-switch
.end method

.method public onDataSaverChanged(Z)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v1, "COMMON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_18
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_c
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MobileData"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 14

    const v10, 0x7f0b012f

    const/4 v9, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v3, :cond_a9

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v7, v3, Lcom/android/settingslib/AppItem;->key:I

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b035a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/settings/datausage/AppDataUsage;->sAllowBackgroundDataUsage:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b012e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_64

    move v3, v4

    :goto_5d
    invoke-static {v6, v2, v0, v3}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    :goto_60
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefsTiming()V

    return v4

    :cond_64
    move v3, v5

    goto :goto_5d

    :cond_66
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    if-ne v3, v9, :cond_92

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04f3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8a

    move v5, v4

    :cond_8a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_60

    :cond_92
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/android/settings/datausage/AppDataUsage;->sAllowBackgroundDataUsage:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a1

    move v5, v4

    :cond_a1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_60

    :cond_a9
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v3, :cond_145

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v7, v3, Lcom/android/settingslib/AppItem;->key:I

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b035b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/settings/datausage/AppDataUsage;->sAllowUnrestrictedDataUsage:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_102

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0b0130

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_fe

    move v5, v4

    :cond_fe
    invoke-static {v3, v2, v0, v5}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    :goto_101
    return v4

    :cond_102
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    if-ne v3, v9, :cond_12e

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04f4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_126

    move v5, v4

    :cond_126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_101

    :cond_12e
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/android/settings/datausage/AppDataUsage;->sAllowUnrestrictedDataUsage:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_13d

    move v5, v4

    :cond_13d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_101

    :cond_145
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    if-ne p1, v3, :cond_15e

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v5, Lcom/android/settingslib/AppItem;->key:I

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v1}, Lcom/android/settings/datausage/DataSaverBackend;->changeRoamingPolicyIfNeeded(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefsTiming()V

    return v4

    :cond_15e
    return v5
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 8

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_47

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    :cond_2f
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v5, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v2, 0x1

    return v2

    :cond_47
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_c
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-static {v1, v2}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    :cond_49
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "MobileData"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    if-eqz v5, :cond_5e

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-eqz v5, :cond_5e

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_19
    const/4 v4, 0x0

    if-eqz v2, :cond_60

    :try_start_1c
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_24} :catch_62

    move-result v4

    :goto_25
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v5

    invoke-interface {v5, p0, v8}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/AppHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/AppHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/applications/AppHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/settings/applications/AppHeaderController;->setUid(I)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/applications/AppHeaderController;->setButtonActions(II)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_5e
    const/4 v2, 0x0

    goto :goto_19

    :cond_60
    const/4 v4, 0x0

    goto :goto_25

    :catch_62
    move-exception v1

    goto :goto_25
.end method

.method public onWhitelistStatusChanged(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_12
    return-void
.end method

.method updatePrefsTiming()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/datausage/AppDataUsage$6;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/AppDataUsage$6;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
