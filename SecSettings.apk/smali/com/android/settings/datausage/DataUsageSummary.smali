.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/datausage/DataUsageEditController;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummary$1;,
        Lcom/android/settings/datausage/DataUsageSummary$2;,
        Lcom/android/settings/datausage/DataUsageSummary$3;,
        Lcom/android/settings/datausage/DataUsageSummary$4;,
        Lcom/android/settings/datausage/DataUsageSummary$5;,
        Lcom/android/settings/datausage/DataUsageSummary$6;,
        Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mIsDynamicUnits:Z

.field private static mIsSupportDataCompression:Z

.field public static mSelectDisplayUnit:I

.field private static mSupoprtDataUsageReminderInGlobalUX:Z


# instance fields
.field private ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

.field private isKnoxmode:Z

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mCellDataPreference:Lcom/android/settings/datausage/CellDataPreference;

.field private mCheckPhoneBalance:Landroid/support/v7/preference/Preference;

.field private mConfirmAtBootPreference:Landroid/support/v14/preference/SecSwitchPreference;

.field private mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

.field private mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mDisplayUnitDialog:Landroid/app/AlertDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIsATT:Z

.field private mIsCHNSmartManager:Z

.field private mIsSIMCardInserted:Z

.field private mIsSPR:Z

.field private mIsSupportMobileDataATT:Z

.field private mIsSupportRoamingATT:Z

.field private mIsVZW:Z

.field private mLimitPreference:Landroid/support/v7/preference/Preference;

.field private mMobileDataATT:Landroid/support/v7/preference/Preference;

.field private mMobileSectionCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/datausage/TemplatePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkRestrcitionPreference:Lcom/android/settings/datausage/NetworkRestrictionsPreference;

.field private mPcoFeature:Ljava/lang/String;

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRoamingATT:Landroid/support/v7/preference/Preference;

.field private mRootView:Landroid/view/View;

.field private mSetDataPreference:Landroid/support/v7/preference/Preference;

.field private mSetOperatorPreference:Landroid/support/v7/preference/Preference;

.field private mShowUnitVZW:Landroid/view/MenuItem;

.field private mSummaryPreference:Lcom/android/settings/SummaryPreference;

.field private mTopUpDataBalance:Landroid/support/v7/preference/Preference;

.field private mTopUpPhoneBalance:Landroid/support/v7/preference/Preference;

.field private mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic -get12()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/datausage/DataUsageSummary;->mSupoprtDataUsageReminderInGlobalUX:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/DataUsageSummary;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/DataUsageSummary;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    return v0
.end method

.method static synthetic -get6()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportDataCompression:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/DataUsageSummary;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/DataUsageSummary;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->showDisplayUnitDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/DataUsageSummary;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateStateForDynamicUnits()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/DataUsageSummary;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    sput-boolean v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    sput-boolean v0, Lcom/android/settings/datausage/DataUsageSummary;->mSupoprtDataUsageReminderInGlobalUX:Z

    sput-boolean v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportDataCompression:Z

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$4;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$4;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$5;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$5;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/support/v7/preference/Preference;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    iput-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$1;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$2;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$3;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$6;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f15003f

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_16
    if-ltz v0, :cond_27

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    sub-int v4, v0, v2

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_27
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    if-eqz v4, :cond_45

    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    const-string/jumbo v4, "mobile_data_att"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/support/v7/preference/Preference;

    :goto_37
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportRoamingATT:Z

    if-eqz v4, :cond_4c

    const-string/jumbo v4, "roaming_att"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/support/v7/preference/Preference;

    :goto_44
    return-void

    :cond_45
    const-string/jumbo v4, "mobile_data_att"

    invoke-virtual {p1, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto :goto_37

    :cond_4c
    const-string/jumbo v4, "roaming_att"

    invoke-virtual {p1, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto :goto_44
.end method

.method private addEthernetSection()V
    .registers 5

    const v1, 0x7f150044

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "DataUsageSummary"

    const-string/jumbo v6, "addMobileSection-start"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f150040

    invoke-direct {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v5, p1, v6}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    if-nez v5, :cond_30

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportRoamingATT:Z

    if-eqz v5, :cond_35

    :cond_30
    if-eqz p2, :cond_35

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    :cond_35
    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-nez v5, :cond_3d

    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    if-eqz v5, :cond_192

    :cond_3d
    const-string/jumbo v5, "alert_at_warning"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->setTargetFragment(Lcom/android/settings/datausage/DataUsageSummary;)V

    :goto_49
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19a

    const-string/jumbo v5, "XEC"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_19a

    const-string/jumbo v5, "confirm_at_boot"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v5, :cond_79

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_79
    :goto_79
    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v5, :cond_1c4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data_usage_enable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/CellDataPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCellDataPreference:Lcom/android/settings/datausage/CellDataPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataUsageSecondPage()Z

    move-result v5

    if-eqz v5, :cond_a5

    const-string/jumbo v5, "operator_set"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_a5
    const-string/jumbo v5, "cellular_data_usage"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "billing_preference"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "set_used_data"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetDataPreference:Landroid/support/v7/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v5

    if-eqz v5, :cond_cf

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v5

    if-eqz v5, :cond_cf

    const-string/jumbo v5, "operator_set"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    :cond_cf
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataUsageSecondPage()Z

    move-result v5

    if-nez v5, :cond_1a2

    if-eqz v3, :cond_1a2

    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/support/v7/preference/Preference;

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_ef
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v5

    if-nez v5, :cond_f7

    if-nez v3, :cond_1aa

    :cond_f7
    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :goto_fd
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.app.sreminder"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v3, :cond_1bc

    const v5, 0x5091d

    if-le v4, v5, :cond_1bc

    const-string/jumbo v5, "top_up_data_balance"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpDataBalance:Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpDataBalance:Landroid/support/v7/preference/Preference;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_120
    sget-boolean v5, Lcom/android/settings/datausage/DataUsageSummary;->mSupoprtDataUsageReminderInGlobalUX:Z

    if-eqz v5, :cond_12d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_12d

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->initDataUsageReminder(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    :cond_12d
    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v5, :cond_139

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_13f

    :cond_139
    const-string/jumbo v5, "operator_set"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_13f
    iget-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v5, :cond_1ea

    const-string/jumbo v5, "billing_preference"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "data_usage_enable"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "billing_preference_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "set_used_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_data_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "operator_set"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "restrict_app_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "alert_at_warning"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_17f
    :goto_17f
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isRoamingArea()Z

    move-result v5

    if-eqz v5, :cond_188

    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    :cond_188
    const-string/jumbo v5, "DataUsageSummary"

    const-string/jumbo v6, "addMobileSection-end"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_192
    const-string/jumbo v5, "alert_at_warning"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_49

    :cond_19a
    const-string/jumbo v5, "confirm_at_boot"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_79

    :cond_1a2
    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_ef

    :cond_1aa
    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/support/v7/preference/Preference;

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_fd

    :cond_1bc
    const-string/jumbo v5, "top_up_data_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_120

    :cond_1c4
    const-string/jumbo v5, "billing_preference_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "restrict_app_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "set_used_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_data_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_120

    :cond_1ea
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_220

    const-string/jumbo v5, "billing_preference_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "set_used_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_data_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "operator_set"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "restrict_app_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_17f

    :cond_220
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_17f

    const-string/jumbo v5, "billing_preference_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "set_used_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "top_up_data_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "check_phone_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "operator_set"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "restrict_app_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_17f
.end method

.method private addWifiSection()V
    .registers 5

    const/4 v3, 0x0

    const v1, 0x7f150048

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    const-string/jumbo v1, "network_restrictions"

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/NetworkRestrictionsPreference;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mNetworkRestrcitionPreference:Lcom/android/settings/datausage/NetworkRestrictionsPreference;

    sget-boolean v1, Lcom/android/settings/datausage/DataUsageSummary;->mSupoprtDataUsageReminderInGlobalUX:Z

    if-eqz v1, :cond_2b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_2b

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->initDataUsageReminder(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    :cond_2b
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v1, :cond_35

    const-string/jumbo v1, "network_restrictions"

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_35
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    return-void
.end method

.method private static formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .registers 14

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/text/SpannableString;

    const v4, 0x1040356

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%1$s"

    const-string/jumbo v6, "^1"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%2$s"

    const-string/jumbo v6, "^2"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2, p3, v8}, Lcom/android/settings/datausage/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/android/settings/datausage/Formatter$BytesResult;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/android/settings/datausage/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v3, Lcom/android/settings/datausage/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    const-string/jumbo v4, "%1$s"

    const-string/jumbo v5, "^1"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "^1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/settings/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    new-array v4, v8, [Ljava/lang/CharSequence;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSubscriptionId(Landroid/content/Context;)I
    .registers 7

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    if-nez v1, :cond_9

    return v4

    :cond_9
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_20

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1a

    return v4

    :cond_1a
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    :cond_20
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    return v3
.end method

.method public static getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .registers 6

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eq p1, v3, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_25

    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3a

    if-eq p1, v3, :cond_3a

    :cond_25
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_3a
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eq p1, v3, :cond_4b

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_4b
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    :cond_56
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2
.end method

.method private getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .registers 4

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method private getSimName(I)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-string/jumbo v4, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "gsm.sim.state"

    const-string/jumbo v5, "UNKNOWN"

    invoke-static {v4, v6, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "gsm.sim.state"

    const-string/jumbo v5, "UNKNOWN"

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_54

    const-string/jumbo v4, "READY"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1219a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_47
    return-object v0

    :cond_48
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_54
    const-string/jumbo v4, "READY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1219a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_69
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_75
    if-nez p1, :cond_83

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_83
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47
.end method

.method public static hasEnableSimCard(Landroid/content/Context;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the ActiveSubscriptionInfoCount is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    return v2
.end method

.method public static hasMobileData(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static hasReadyEnt1Radio(Landroid/content/Context;)Z
    .registers 2

    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z
    .registers 7

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_22

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v3

    :goto_21
    return v3

    :cond_22
    const/4 v3, 0x0

    goto :goto_21
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private inflatePreferences(I)Landroid/support/v7/preference/Preference;
    .registers 8

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-object v0
.end method

.method private initDataUsageReminder(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "data_usage_reminder"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_2b

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f150047

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v2

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2b
    const-string/jumbo v6, "data_usage_reminder"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f120746

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "data_usage_reminder"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_60

    :goto_59
    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_60
    move v4, v5

    goto :goto_59
.end method

.method private isRoamingArea()Z
    .registers 3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "oversea"

    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private showDisplayUnitDialog()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "data_usage_display_unit"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12074c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    new-instance v2, Lcom/android/settings/datausage/DataUsageSummary$7;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageSummary$7;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    const v3, 0x7f030061

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateState()V
    .registers 21

    const-string/jumbo v14, "DataUsageSummary"

    const-string/jumbo v15, "updateState-start"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-nez v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v14, v15}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v5

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v5, :cond_29

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-nez v14, :cond_29

    return-void

    :cond_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v14, :cond_46

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v15, v15, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v15

    invoke-virtual {v14, v5, v15}, Lcom/android/settings/datausage/DataUsageInfoController;->updateDataLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;Landroid/net/NetworkPolicy;)V

    :cond_46
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    if-eqz v14, :cond_22d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v2, v15, v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v14, :cond_193

    sget v14, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    if-eqz v14, :cond_193

    const/4 v14, 0x1

    :goto_72
    sput-boolean v14, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    sget-boolean v14, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    if-eqz v14, :cond_b9

    new-instance v3, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v16

    sget v17, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v3, v14, v15}, Lcom/android/settings/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-virtual {v14, v3}, Lcom/android/settings/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-virtual {v14, v5}, Lcom/android/settings/datausage/DataUsageInfoController;->getSummaryLimit(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    iget-object v15, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/settings/SummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-gtz v14, :cond_196

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/settings/SummaryPreference;->setChartEnabled(Z)V

    :cond_d8
    :goto_d8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_26e

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_ee

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_26e

    :cond_ee
    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v2, v14, v15}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v2, v14, v15}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_241

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-gtz v14, :cond_23c

    const v14, 0x7f12058d

    :goto_113
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12e
    :goto_12e
    if-eqz v5, :cond_15d

    const-string/jumbo v14, "DataUsageSummary"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateState warning : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "  limit : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mNetworkRestrcitionPreference:Lcom/android/settings/datausage/NetworkRestrictionsPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/datausage/DataUsageSummary;->updateNetworkRestrictionSummary(Lcom/android/settings/datausage/NetworkRestrictionsPreference;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v14, :cond_27e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v14

    if-eqz v14, :cond_27e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v14, :cond_27e

    const/4 v4, 0x0

    :goto_17d
    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    if-ge v4, v14, :cond_295

    invoke-virtual {v12, v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17d

    :cond_193
    const/4 v14, 0x0

    goto/16 :goto_72

    :cond_196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/SummaryPreference;->setChartEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v8, v9}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/settings/SummaryPreference;->setLabels(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_204

    const/4 v6, 0x1

    :goto_1c5
    if-eqz v6, :cond_206

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    move-wide/from16 v0, v16

    long-to-float v15, v0

    long-to-float v0, v8

    move/from16 v16, v0

    div-float v15, v15, v16

    const/16 v16, 0x0

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    long-to-float v0, v8

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-virtual/range {v14 .. v17}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    const v14, 0x7f06024b

    invoke-virtual {v2, v14}, Landroid/content/Context;->getColor(I)I

    move-result v11

    const v14, 0x7f06024a

    invoke-virtual {v2, v14}, Landroid/content/Context;->getColor(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15, v11}, Lcom/android/settings/SummaryPreference;->setColors(III)V

    goto/16 :goto_d8

    :cond_204
    const/4 v6, 0x0

    goto :goto_1c5

    :cond_206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v15, v0

    long-to-float v0, v8

    move/from16 v16, v0

    div-float v15, v15, v16

    const/16 v16, 0x0

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v18, v0

    sub-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    long-to-float v0, v8

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-virtual/range {v14 .. v17}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    goto/16 :goto_d8

    :cond_22d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v14, :cond_d8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v14, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    goto/16 :goto_d8

    :cond_23c
    const v14, 0x7f12058c

    goto/16 :goto_113

    :cond_241
    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_264

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const v16, 0x7f12058b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_12e

    :cond_264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_12e

    :cond_26e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_12e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_12e

    :cond_27e
    const/4 v4, 0x1

    :goto_27f
    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    if-ge v4, v14, :cond_295

    invoke-virtual {v12, v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_27f

    :cond_295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v14, :cond_2be

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v16, "mobile_data_question"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_313

    const/4 v14, 0x1

    :goto_2bb
    invoke-virtual {v15, v14}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2be
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_2d4

    if-eqz v2, :cond_2d4

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_315

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_2d4
    :goto_2d4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v14, :cond_2fe

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v14, :cond_31e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v14}, Landroid/app/enterprise/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v14

    if-eqz v14, :cond_2f6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v14}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_31e

    :cond_2f6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/DataSaverPreference;->setEnabled(Z)V

    :cond_2fe
    :goto_2fe
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v14, :cond_312

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v14, :cond_312

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/DataSaverPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_312
    return-void

    :cond_313
    const/4 v14, 0x0

    goto :goto_2bb

    :cond_315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2d4

    :cond_31e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/datausage/DataSaverPreference;->setEnabled(Z)V

    goto :goto_2fe
.end method

.method private updateStateForDynamicUnits()V
    .registers 6

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const-string/jumbo v4, "wifi_data_usage"

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/DataUsagePreference;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsagePreference;->updateSummary()V

    :cond_17
    const-string/jumbo v3, "mobile_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v0, :cond_30

    const-string/jumbo v3, "cellular_data_usage"

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsagePreference;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataUsagePreference;->updateSummary()V

    :cond_30
    return-void
.end method

.method private static verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .registers 11

    const/16 v7, 0x12

    const/4 v6, 0x0

    const v5, 0x3f111111

    const v1, 0x3f111111

    const/16 v0, 0x12

    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    if-lez v3, :cond_31

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_31

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v3, v4

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-ge v2, v4, :cond_1e

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1e
.end method


# virtual methods
.method public addEnt1Section(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-nez v1, :cond_1d

    if-eqz v0, :cond_1d

    :cond_12
    const v1, 0x7f150043

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :cond_1d
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    :cond_46
    return-void
.end method

.method public customOnKeyDown(ILandroid/view/KeyEvent;)V
    .registers 6

    const-string/jumbo v0, "DataUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "customOnKeyDown():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCellDataPreference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCellDataPreference:Lcom/android/settings/datausage/CellDataPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13

    if-ne p1, v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCellDataPreference:Lcom/android/settings/datausage/CellDataPreference;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCellDataPreference:Lcom/android/settings/datausage/CellDataPreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/CellDataPreference;->getView()Landroid/support/v7/preference/PreferenceViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->requestFocusForUpdateTrafficButton()V

    :cond_4a
    return-void
.end method

.method protected getHelpResource()I
    .registers 2

    const v0, 0x7f120d0b

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .registers 15

    const/4 v12, 0x0

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    const/16 v1, 0x9

    invoke-virtual {v6, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    :try_start_b
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v10

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2b} :catch_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_2b} :catch_38

    :goto_2b
    if-eqz v9, :cond_41

    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-lez v1, :cond_41

    const/4 v1, 0x1

    :goto_34
    return v1

    :cond_35
    const-wide/16 v10, 0x0

    goto :goto_2b

    :catch_38
    move-exception v8

    return v12

    :catch_3a
    move-exception v7

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_41
    move v1, v12

    goto :goto_34
.end method

.method isMetered(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_6

    return v4

    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    :goto_e
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    if-nez v1, :cond_1e

    return v4

    :cond_1b
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_e

    :cond_1e
    iget-wide v2, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    return v2

    :cond_28
    iget-boolean v2, v1, Landroid/net/NetworkPolicy;->metered:Z

    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    :cond_22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 25

    const-string/jumbo v19, "DataUsageSummary"

    const-string/jumbo v20, "onCreate - start"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v19

    sput-boolean v19, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportDataCompression:Z

    if-eqz p1, :cond_24

    const-string/jumbo v19, "dialogShown"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->showDisplayUnitDialog()V

    :cond_24
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v19, "ATT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2fd

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    :cond_3b
    :goto_3b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v19, "+enhanced4glte2"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    const-string/jumbo v19, "+internationalenhanced4glte"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportRoamingATT:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const-string/jumbo v19, "wifi"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v19, Lcom/android/settingslib/NetworkPolicyEditor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v19

    if-eqz v19, :cond_a2

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    :cond_a2
    sget-boolean v19, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v19, :cond_322

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    :goto_ae
    sput-boolean v19, Lcom/android/settings/datausage/DataUsageSummary;->mSupoprtDataUsageReminderInGlobalUX:Z

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v6

    new-instance v19, Lcom/android/settingslib/net/DataUsageController;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v19, Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-direct/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageInfoController;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    const-string/jumbo v19, "DataUsageSummary"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "hasMobileData:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "mIsSIMCardInserted:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v19, v0

    if-eqz v19, :cond_326

    if-eqz v7, :cond_326

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_326

    const v19, 0x7f150042

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    :goto_123
    const-string/jumbo v19, "usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/PreferenceCategory;

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v5

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_13c

    const/4 v7, 0x0

    const/4 v6, 0x0

    :cond_13c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v19, v0

    if-eqz v19, :cond_152

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_152

    const/4 v7, 0x0

    const/4 v6, 0x0

    :cond_152
    invoke-static {v4, v5}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v19, "status_header"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Lcom/android/settings/SummaryPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/SummaryPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v19

    if-eqz v19, :cond_332

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    :goto_183
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_Common_ConfigPco"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "COMMON"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1f9

    const-string/jumbo v19, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Lcom/android/settings/datausage/DataSaverPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "background_data_by_pco"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "background_data_by_pco"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_336

    const/4 v14, 0x1

    :cond_1f9
    :goto_1f9
    if-eqz v7, :cond_20f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v19

    if-nez v19, :cond_339

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v19

    :goto_209
    xor-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_20f

    if-eqz v14, :cond_33d

    :cond_20f
    if-eqz v18, :cond_21f

    const-string/jumbo v19, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_21f
    :goto_21f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_23a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/datausage/DataSaverPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_23a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    if-eqz v7, :cond_356

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_356

    const-string/jumbo v19, "limit_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_278

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_28d

    :cond_278
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v13

    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v16

    const/4 v9, 0x0

    :goto_296
    if-eqz v17, :cond_356

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_356

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v19

    if-nez v19, :cond_2bc

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_352

    :cond_2bc
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2cc

    move/from16 v0, v16

    if-ne v9, v0, :cond_352

    :cond_2cc
    const/16 v19, 0x1

    :goto_2ce
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v11

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2ef

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->getSimName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_296

    :cond_2fd
    const-string/jumbo v19, "VZW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_312

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    goto/16 :goto_3b

    :cond_312
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v19

    if-eqz v19, :cond_3b

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    goto/16 :goto_3b

    :cond_322
    const/16 v19, 0x0

    goto/16 :goto_ae

    :cond_326
    const v19, 0x7f15003e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    goto/16 :goto_123

    :cond_332
    const/16 v19, 0x0

    goto/16 :goto_183

    :cond_336
    const/4 v14, 0x0

    goto/16 :goto_1f9

    :cond_339
    const/16 v19, 0x1

    goto/16 :goto_209

    :cond_33d
    const-string/jumbo v19, "restrict_background"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    check-cast v19, Lcom/android/settings/datausage/DataSaverPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    goto/16 :goto_21f

    :cond_352
    const/16 v19, 0x0

    goto/16 :goto_2ce

    :cond_356
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v19, v0

    if-eqz v19, :cond_373

    if-eqz v7, :cond_373

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_373

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :cond_373
    if-nez v7, :cond_385

    if-eqz v18, :cond_385

    const-string/jumbo v19, "limit_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_385
    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_38e

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    :cond_38e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_399

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->addEthernetSection()V

    :cond_399
    if-eqz v6, :cond_3e3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_3e3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_3bd

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_3c2

    :cond_3bd
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    :cond_3c2
    const/4 v9, 0x0

    :goto_3c3
    if-eqz v17, :cond_3e3

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3e3

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3c3

    :cond_3e3
    if-eqz v7, :cond_484

    const v19, 0x7f12058a

    :goto_3e8
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->setHasOptionsMenu(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    move/from16 v19, v0

    if-eqz v19, :cond_412

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "data_usage_display_unit"

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    :cond_412
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    move/from16 v19, v0

    if-eqz v19, :cond_43c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "airplane_mode_on"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_43c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_457

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "enterprise_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_46f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    :cond_46f
    new-instance v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v19 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v19, "DataUsageSummary"

    const-string/jumbo v20, "onCreate - end"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_484
    if-eqz v8, :cond_48b

    const v19, 0x7f122015

    goto/16 :goto_3e8

    :cond_48b
    const v19, 0x7f1209c4

    goto/16 :goto_3e8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f0e0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_14
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/datausage/DataUsageBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v2, :cond_31

    iget-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    const v3, 0x7f0a01bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0d0212

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    const v3, 0x7f0a01bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_31
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .registers 8

    const/4 v6, 0x3

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v4, "COMMON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDestroy, currentStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_54

    if-ne v0, v6, :cond_79

    :cond_54
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_62
    :goto_62
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v1, 0x0

    :goto_67
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_8c

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_79
    if-eqz v0, :cond_7e

    const/4 v3, 0x1

    if-ne v0, v3, :cond_88

    :cond_7e
    :goto_7e
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->stopAutoCalibrationService()V

    goto :goto_62

    :cond_88
    const/4 v3, -0x1

    if-ne v0, v3, :cond_62

    goto :goto_7e

    :cond_8c
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v3, :cond_9b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v3

    if-eqz v3, :cond_9b

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->unbindDataSavingService()V

    :cond_9b
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 14

    const/4 v11, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_98

    return v4

    :pswitch_a
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.networkui"

    const-string/jumbo v3, "com.samsung.networkui.MobileNetworkSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    return v11

    :pswitch_24
    const-string/jumbo v2, "com.android.settings.datausage.DataUsageHelp"

    const v3, 0x7f120cf5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummary;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v11

    :pswitch_31
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->showDisplayUnitDialog()V

    :cond_3a
    return v11

    :pswitch_3b
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10, v8}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "sub_id"

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/datausage/DataUsageSummarySecondPage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120741

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x25

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    return v11

    nop

    :pswitch_data_98
    .packed-switch 0x7f0a0204
        :pswitch_31
        :pswitch_a
        :pswitch_24
        :pswitch_3b
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_39

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    const-string/jumbo v1, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    invoke-static {}, Lcom/android/settings/Utils;->isTmoModel()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_39
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4a
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DataUsage"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/Utils;->removeImsManager()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v1, :cond_1c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data_question"

    if-eqz v0, :cond_1d

    move v1, v2

    :goto_19
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1c
    return v2

    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 16

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetDataPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_77

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13, v11}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSetDataPreference click, currentStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v9, v1, :cond_59

    const/4 v1, 0x3

    if-ne v9, v1, :cond_72

    :cond_59
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12118b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    return v1

    :cond_72
    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->show(Lcom/android/settings/datausage/DataUsageSummary;)V

    const/4 v1, 0x1

    return v1

    :cond_77
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_d5

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13, v11}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    invoke-static {}, Lcom/android/settings/Utils;->isUserSetAutoCalibrationEnable()Z

    move-result v1

    if-nez v1, :cond_b5

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->showWarningDialog(Landroid/os/Bundle;Z)V

    :cond_b3
    :goto_b3
    const/4 v1, 0x1

    return v1

    :cond_b5
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_b3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f121409

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_b3

    :cond_d5
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_128

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v13, v11}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_118
    const-string/jumbo v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mTopUpPhoneBalance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_128
    .catch Landroid/content/ActivityNotFoundException; {:try_start_118 .. :try_end_128} :catch_1d3

    :cond_128
    :goto_128
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_156

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_146
    const-string/jumbo v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mCheckPhoneBalance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_156
    .catch Landroid/content/ActivityNotFoundException; {:try_start_146 .. :try_end_156} :catch_1f0

    :cond_156
    :goto_156
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpDataBalance:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_184

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "phone_data_recharge"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "from"

    const-string/jumbo v2, "SM"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_174
    const-string/jumbo v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mTopUpDataBalance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_184
    .catch Landroid/content/ActivityNotFoundException; {:try_start_174 .. :try_end_184} :catch_20d

    :cond_184
    :goto_184
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1a9

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.networkui"

    const-string/jumbo v2, "com.samsung.networkui.usa.Enhanced4GLTE"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_247

    :try_start_1a0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v12, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1a9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a0 .. :try_end_1a9} :catch_22a

    :cond_1a9
    :goto_1a9
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1ce

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.networkui"

    const-string/jumbo v2, "com.samsung.networkui.usa.InternationalEnhanced4GLTE"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_26d

    :try_start_1c5
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v12, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1ce
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c5 .. :try_end_1ce} :catch_250

    :cond_1ce
    :goto_1ce
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :catch_1d3
    move-exception v10

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTopUpPhoneBalance tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_128

    :catch_1f0
    move-exception v10

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCheckPhoneBalance tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_156

    :catch_20d
    move-exception v10

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTopUpPhoneBalance tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_184

    :catch_22a
    move-exception v10

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMobileDataATT tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a9

    :cond_247
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1a9

    :catch_250
    move-exception v10

    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRoamingATT tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ce

    :cond_26d
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1ce
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v3, 0x7f0a0205

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_e
    const v3, 0x7f0a0206

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_20
    :goto_20
    const v3, 0x7f0a0204

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    if-eqz v3, :cond_7a

    iget-boolean v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v3

    if-nez v3, :cond_55

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DisplayUnits"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    :cond_55
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-nez v3, :cond_97

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->showDisplayUnitDialog()V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "DisplayUnits"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_73
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_7a
    :goto_7a
    const v3, 0x7f0a0207

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_92

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataUsageSecondPage()Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-boolean v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_bb

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_92
    :goto_92
    return-void

    :cond_93
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_20

    :cond_97
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "DisplayUnits"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "DisplayUnits"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_7a

    :cond_b5
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mShowUnitVZW:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7a

    :cond_bb
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_92
.end method

.method public onResume()V
    .registers 9

    const-string/jumbo v4, "DataUsageSummary"

    const-string/jumbo v5, "onresume- start"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getImsManager(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-nez v4, :cond_4d

    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSupportMobileDataATT:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4d

    const-string/jumbo v4, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4d

    invoke-static {}, Lcom/android/settings/Utils;->isTmoModel()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4d

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x800

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_4d
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->isMultiTab()Z

    move-result v4

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    if-eqz v2, :cond_89

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_89
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "DataUsage"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0160

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    :cond_b3
    const-string/jumbo v4, "DataUsageSummary"

    const-string/jumbo v5, "onresume- end"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDisplayUnitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "dialogShown"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "DataUsageSummary"

    const-string/jumbo v1, "onViewCreated - start"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_4b

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInstance(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->bindDataSavingService()V

    :cond_4b
    const-string/jumbo v0, "DataUsageSummary"

    const-string/jumbo v1, "onViewCreated - end"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateDataUsage()V
    .registers 3

    const-string/jumbo v0, "DataUsageSummary"

    const-string/jumbo v1, "updateDataUsage "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method

.method updateNetworkRestrictionSummary(Lcom/android/settings/datausage/NetworkRestrictionsPreference;)V
    .registers 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->isMetered(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_28
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f100026

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/datausage/NetworkRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
