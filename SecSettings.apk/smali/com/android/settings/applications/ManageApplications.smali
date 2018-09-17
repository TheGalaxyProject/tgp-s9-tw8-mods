.class public Lcom/android/settings/applications/ManageApplications;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$1;,
        Lcom/android/settings/applications/ManageApplications$2;,
        Lcom/android/settings/applications/ManageApplications$3;,
        Lcom/android/settings/applications/ManageApplications$4;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/settings/applications/ManageApplications$SectionInfo;,
        Lcom/android/settings/applications/ManageApplications$SummaryProvider;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_LABELS:[I

.field public static final LIST_TYPES_WITH_INSTANT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static hide_app_list:Ljava/lang/String;

.field private static hide_app_notification_list:[Ljava/lang/String;

.field private static mBixbyLoggingStatesId:Ljava/lang/String;

.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

.field private static mHideApp:Z

.field private static mSkipApp:Z


# instance fields
.field final handler:Landroid/os/Handler;

.field public mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mFuncDesc:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

.field private mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mStorageType:I

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/applications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/applications/ManageApplications;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic -get12()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->mSkipApp:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/settings/applications/ManageApplications;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2()Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/ManageApplications;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get5()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sput-object p0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/settings/applications/ManageApplications;->mSkipApp:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/settings/applications/ManageApplications;->hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ManageApplications;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->addRelativeView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/applications/ManageApplications;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->removeRelativeView()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    const v8, 0x7f120b01

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string/jumbo v0, "ManageApplications"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120d22

    aput v1, v0, v4

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v1, v0, v4

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    aput v8, v0, v6

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v1, v0, v6

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    aput v8, v0, v7

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v7

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120b08

    aput v1, v0, v5

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v5

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120b03

    const/4 v2, 0x5

    aput v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120b0a

    const/4 v2, 0x4

    aput v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120b0c

    const/4 v2, 0x6

    aput v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120b12

    const/4 v2, 0x7

    aput v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120b13

    const/16 v2, 0x8

    aput v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const/16 v1, 0x9

    aput v8, v0, v1

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120b11

    const/16 v2, 0xa

    aput v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120b14

    const/16 v2, 0xb

    aput v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    const v1, 0x7f120b09

    const/16 v2, 0xc

    aput v1, v0, v2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v0, Landroid/util/ArraySet;

    new-array v1, v7, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    sput-boolean v4, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    sput-boolean v4, Lcom/android/settings/applications/ManageApplications;->mSkipApp:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v0, "Applications"

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/applications/ManageApplications$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ManageApplications$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/applications/ManageApplications$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ManageApplications$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const v0, 0x7f0a07f5

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/applications/ManageApplications$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$4;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addRelativeView()V
    .registers 13

    const/high16 v11, 0x10200000

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-eqz v9, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_f4

    iget v9, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v9, :cond_f4

    xor-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_f4

    new-instance v9, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-direct {p0, v9}, Lcom/android/settings/applications/ManageApplications;->isIntentEnabledInSM(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f5

    const-string/jumbo v9, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_48
    const-string/jumbo v9, "flowId"

    const/16 v10, 0x2335

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "callerMetric"

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v6, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v9, 0x7f121ab8

    iput v9, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {p0, v9}, Lcom/android/settings/applications/ManageApplications;->isIntentEnabledInSM(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_fd

    const-string/jumbo v9, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_7d
    const-string/jumbo v9, "flowId"

    const/16 v10, 0x2336

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "callerMetric"

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v9, 0x7f1214e9

    iput v9, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.settings.INFO_APP_SHORTCUTS"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "flowId"

    const/16 v10, 0x2337

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "callerMetric"

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const v7, 0x7f120de3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportClockPackageSetting(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_105

    const v7, 0x7f1205cb

    :cond_d2
    :goto_d2
    iput v7, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v9, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v9, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_ed

    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_ed
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_f4
    return-void

    :cond_f5
    const-string/jumbo v9, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_48

    :cond_fd
    const-string/jumbo v9, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7d

    :cond_105
    if-eqz v8, :cond_d2

    const v7, 0x7f120de4

    goto :goto_d2
.end method

.method private createHeader()V
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v6, 0x7f0a0634

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d0043

    invoke-virtual {v5, v6, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v6, 0x7f0a0330

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f060246

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v3, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v5, :cond_64

    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v5, v7, :cond_be

    :cond_64
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    :goto_71
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_9f

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-nez v5, :cond_97

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_9c

    :cond_97
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_9f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_be

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_be

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_be
    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v5, v7, :cond_c8

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_c8
    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_d2

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v5, v7}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_d2
    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mStorageType:I

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/settings/applications/ManageApplications;->getOverrideFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v2

    if-eqz v2, :cond_e3

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v5, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    :cond_e3
    return-void
.end method

.method private getDefaultFilter()I
    .registers 2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_16

    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/16 v0, 0x9

    return v0

    :pswitch_a
    const/4 v0, 0x0

    return v0

    :pswitch_c
    const/16 v0, 0xa

    return v0

    :pswitch_f
    const/16 v0, 0xb

    return v0

    :pswitch_12
    const/16 v0, 0xc

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_7
        :pswitch_a
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method static getOverrideFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .registers 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    invoke-direct {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1d

    const/4 v2, 0x1

    if-ne p1, v2, :cond_14

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v1

    :goto_13
    return-object v0

    :cond_14
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v0, v1

    goto :goto_13

    :cond_1d
    const/16 v2, 0x9

    if-ne p0, v2, :cond_29

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object v2

    :cond_29
    const/16 v2, 0xa

    if-ne p0, v2, :cond_35

    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object v2

    :cond_35
    const/4 v2, 0x0

    return-object v2
.end method

.method private static hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_3
    const-string/jumbo v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getAllPackagesFromBatteryOptimizationWhiteList"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v9, 0x0

    :goto_21
    const-string/jumbo v0, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v8, 0x1

    const-string/jumbo v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "white list app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4d} :catch_5a
    .catchall {:try_start_3 .. :try_end_4d} :catchall_6a

    :cond_4d
    if-eqz v6, :cond_52

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_52
    :goto_52
    return v8

    :cond_53
    :try_start_53
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_5a
    .catchall {:try_start_53 .. :try_end_56} :catchall_6a

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_21

    :catch_5a
    move-exception v7

    :try_start_5b
    const-string/jumbo v0, "ManageApplications"

    const-string/jumbo v2, "failed to get white list by MDM."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_6a

    if-eqz v6, :cond_52

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_52

    :catchall_6a
    move-exception v0

    if-eqz v6, :cond_70

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_70
    throw v0
.end method

.method private isFastScrollEnabled()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_10

    :pswitch_6
    return v0

    :pswitch_7
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v2, 0x7f0a07f5

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private isIntentEnabledInSM(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    return v2

    :cond_25
    return v3
.end method

.method private removeRelativeView()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    :cond_e
    return-void
.end method

.method private searchAndLaunchApp()V
    .registers 29

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v26

    sget-object v6, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v7, "AppName"

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AppNotifications"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string/jumbo v6, "Advancednotification"

    const-string/jumbo v7, "SelectedApp"

    :cond_28
    sget-object v4, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "exePramAction)size="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_5b

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    sget-object v4, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "exePramAction)queryAppName="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9c

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_9c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-nez v4, :cond_b7

    sget-object v4, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "exePramAction) mApplications is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void

    :cond_b7
    const-string/jumbo v19, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getBaseEntries()Ljava/util/ArrayList;

    move-result-object v18

    if-nez v18, :cond_ec

    sget-object v4, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "exePramAction)allEntries="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void

    :cond_ec
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/16 v21, 0x0

    :goto_f3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_127

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_124

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_124
    add-int/lit8 v21, v21, 0x1

    goto :goto_f3

    :cond_127
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    sget-object v4, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "exePramAction)matchedSize="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    :goto_148
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_18f

    sget-object v5, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "exePramAction)app_name="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, ", uid="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v21, v21, 0x1

    goto :goto_148

    :cond_18f
    const/4 v4, 0x1

    move/from16 v0, v24

    if-le v0, v4, :cond_29e

    sget-object v4, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "There are many matched apps for : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    :goto_1c9
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_222

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_287

    sget-object v4, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "There is exactly same app for : : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_222
    if-eqz v20, :cond_28b

    if-eqz v23, :cond_28b

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22e
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_286

    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    const-string/jumbo v4, "OptimizeBatteryUsageOn"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27b

    const-string/jumbo v4, "OptimizeBatteryUsageOff"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27b

    const-string/jumbo v4, "ApplicationsAppsThatCanAppearOnTopOn"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27b

    const-string/jumbo v4, "ApplicationsAppsThatCanAppearOnTopOff"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27b

    const-string/jumbo v4, "ApplicationsChangeSystemSettingsOn"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27b

    const-string/jumbo v4, "ApplicationsChangeSystemSettingsOff"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2ce

    :cond_27b
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchForBixby(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_286
    :goto_286
    return-void

    :cond_287
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1c9

    :cond_28b
    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v8, "Match"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_29e
    if-nez v24, :cond_22e

    sget-object v4, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "There is no matched apps for : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v8, "Match"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_2ce
    const-class v8, Lcom/android/settings/applications/InstalledAppDetails;

    const v9, 0x7f12020e

    const-string/jumbo v6, "ApplicationInfo"

    const-string/jumbo v7, "AppName"

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AppNotifications"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_334

    const-class v8, Lcom/android/settings/notification/AppNotificationSettings;

    const v9, 0x7f1201f9

    const-string/jumbo v6, "Appnotifications"

    const-string/jumbo v7, "SelectedApp"

    const-string/jumbo v16, "SelectedApp"

    move-object/from16 v17, v25

    :cond_2f8
    :goto_2f8
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getMetricsCategory()I

    move-result v14

    const/4 v13, 0x1

    invoke-static/range {v8 .. v14}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Activity;II)V

    sget-object v10, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v14, "Match"

    const-string/jumbo v15, "yes"

    move-object v12, v6

    move-object v13, v7

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_286

    :cond_334
    const-string/jumbo v4, "UsageDataAccessView"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f8

    const-class v8, Lcom/android/settings/applications/UsageAccessDetails;

    const v9, 0x7f121cf6

    move-object/from16 v6, v27

    const-string/jumbo v16, ""

    const-string/jumbo v17, ""

    goto :goto_2f8
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getMetricsCategory()I

    move-result v6

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    return-void
.end method

.method private startApplicationDetailsActivity(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_50

    :pswitch_5
    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    const v1, 0x7f12020e

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    :goto_d
    return-void

    :pswitch_e
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    const v1, 0x7f1201f9

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_d

    :pswitch_17
    const-class v0, Lcom/android/settings/applications/UsageAccessDetails;

    const v1, 0x7f121cf6

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_d

    :pswitch_20
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f121ab8

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_d

    :pswitch_29
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchHighPower(Landroid/view/View;)V

    goto :goto_d

    :pswitch_2d
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchOverlay(Landroid/view/View;)V

    goto :goto_d

    :pswitch_31
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchWriteSettings(Landroid/view/View;)V

    goto :goto_d

    :pswitch_35
    const-class v0, Lcom/android/settings/applications/ExternalSourcesDetails;

    const v1, 0x7f120dff

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_d

    :pswitch_3e
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f120c86

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_d

    :pswitch_47
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f121aaf

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_d

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_20
        :pswitch_17
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_3e
        :pswitch_47
    .end packed-switch
.end method

.method private toggleSwitchForBixby(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "OptimizeBatteryUsageOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "OptimizeBatteryUsageOff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_128

    :cond_16
    const-string/jumbo v4, "AppName"

    const-string/jumbo v7, "AppName"

    move-object/from16 v9, p2

    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/settings/applications/ManageApplications;->hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    :cond_4c
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OptimizeBatteryUsage : This app register sysWhitelist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_6b
    const-string/jumbo v4, "OptimizeBatteryUsage"

    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v12

    const-string/jumbo v1, "OptimizeBatteryUsageOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7

    if-nez v12, :cond_c0

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_a7
    if-eqz v12, :cond_c0

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_c0
    new-instance v2, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v2}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setPowerWhitelisted(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v2

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    const-string/jumbo v1, "OptimizeBatteryUsageOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_112
    :goto_112
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_118
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_112

    :cond_128
    const-string/jumbo v1, "ApplicationsAppsThatCanAppearOnTopOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13e

    const-string/jumbo v1, "ApplicationsAppsThatCanAppearOnTopOff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c2

    :cond_13e
    const-string/jumbo v4, "AppsThatCanAppearOnTop"

    const-string/jumbo v1, "ApplicationsAppsThatCanAppearOnTopOff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14f

    const-string/jumbo v4, "AppsThatCanAppearOffTop"

    :cond_14f
    const-string/jumbo v7, "AppName"

    move-object/from16 v9, p2

    const/4 v13, 0x0

    :try_start_155
    new-instance v13, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppStateOverlayBridge;

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_180} :catch_1b2

    if-eqz v13, :cond_188

    iget-boolean v1, v13, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_201

    :cond_188
    const-string/jumbo v1, "ApplicationsAppsThatCanAppearOnTopOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ef

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a4
    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "AppsThatCanAppearOnTop : overlayState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :catch_1b2
    move-exception v10

    const-string/jumbo v1, "ApplicationsAppsThatCanAppearOnTopOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1dd

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1cf
    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "AppsThatCanAppearOnTop : Exception occurs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_1dd
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1cf

    :cond_1ef
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a4

    :cond_201
    invoke-virtual {v13}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v11

    const-string/jumbo v1, "ApplicationsAppsThatCanAppearOnTopOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_229

    if-eqz v11, :cond_242

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_229
    if-nez v11, :cond_242

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_242
    new-instance v2, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-direct {v2}, Lcom/android/settings/applications/DrawOverlayDetails;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v3, v5, v1, v6}, Lcom/android/settings/applications/DrawOverlayDetails;->setCanDrawOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v2

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    const-string/jumbo v1, "ApplicationsAppsThatCanAppearOnTopOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2af

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_112

    :cond_2af
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_112

    :cond_2c2
    const-string/jumbo v1, "ApplicationsChangeSystemSettingsOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d8

    const-string/jumbo v1, "ApplicationsChangeSystemSettingsOff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_112

    :cond_2d8
    sget-object v4, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v7, "AppName"

    move-object/from16 v9, p2

    const/4 v14, 0x0

    :try_start_2e0
    new-instance v14, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_30b
    .catch Ljava/lang/Exception; {:try_start_2e0 .. :try_end_30b} :catch_33d

    if-eqz v14, :cond_313

    iget-boolean v1, v14, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_38c

    :cond_313
    const-string/jumbo v1, "ApplicationsChangeSystemSettingsOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37a

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_32f
    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ApplicationsChangeSystemSettings : Exception occurs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :catch_33d
    move-exception v10

    const-string/jumbo v1, "ApplicationsChangeSystemSettingsOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_368

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_35a
    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ApplicationsChangeSystemSettings : Exception occurs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_368
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35a

    :cond_37a
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32f

    :cond_38c
    invoke-virtual {v14}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v11

    const-string/jumbo v1, "ApplicationsChangeSystemSettingsOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b4

    if-eqz v11, :cond_3cd

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_3b4
    if-nez v11, :cond_3cd

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_3cd
    new-instance v2, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-direct {v2}, Lcom/android/settings/applications/WriteSettingsDetails;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v3, v5, v1, v6}, Lcom/android/settings/applications/WriteSettingsDetails;->setCanWriteSettings(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v2

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    const-string/jumbo v1, "ApplicationsChangeSystemSettingsOn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43a

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_112

    :cond_43a
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_112
.end method

.method private toggleSwitchHighPower(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    if-eqz v0, :cond_55

    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    :try_start_b
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/settings/applications/ManageApplications;->hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_56

    move-result v1

    if-eqz v1, :cond_2d

    :cond_2b
    monitor-exit v2

    return-void

    :cond_2d
    :try_start_2d
    new-instance v1, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setPowerWhitelisted(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V
    :try_end_54
    .catchall {:try_start_2d .. :try_end_54} :catchall_56

    :cond_54
    monitor-exit v2

    :cond_55
    return-void

    :catchall_56
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private toggleSwitchOverlay(Landroid/view/View;)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppViewHolder;

    if-eqz v1, :cond_8b

    iget-object v5, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_c
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_8c

    if-eqz v4, :cond_2e

    :try_start_10
    new-instance v3, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_47
    .catchall {:try_start_10 .. :try_end_2d} :catchall_8c

    move-object v2, v3

    :cond_2e
    if-eqz v2, :cond_45

    :try_start_30
    iget-boolean v4, v2, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_45

    const-string/jumbo v4, "com.samsung.knox.securefolder"

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_8c

    move-result v4

    if-eqz v4, :cond_53

    :cond_45
    monitor-exit v5

    return-void

    :catch_47
    move-exception v0

    :try_start_48
    const-string/jumbo v4, "ManageApplications"

    const-string/jumbo v6, "Click disabled app"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_8c

    monitor-exit v5

    return-void

    :cond_53
    :try_start_53
    new-instance v4, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-direct {v4}, Lcom/android/settings/applications/DrawOverlayDetails;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/settings/applications/DrawOverlayDetails;->setCanDrawOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v4, :cond_8a

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V
    :try_end_8a
    .catchall {:try_start_53 .. :try_end_8a} :catchall_8c

    :cond_8a
    monitor-exit v5

    :cond_8b
    return-void

    :catchall_8c
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private toggleSwitchWriteSettings(Landroid/view/View;)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppViewHolder;

    if-eqz v1, :cond_7c

    iget-object v5, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_c
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_7d

    if-eqz v4, :cond_2e

    :try_start_10
    new-instance v3, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_38
    .catchall {:try_start_10 .. :try_end_2d} :catchall_7d

    move-object v2, v3

    :cond_2e
    if-eqz v2, :cond_36

    :try_start_30
    iget-boolean v4, v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_7d

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_44

    :cond_36
    monitor-exit v5

    return-void

    :catch_38
    move-exception v0

    :try_start_39
    const-string/jumbo v4, "ManageApplications"

    const-string/jumbo v6, "Click disabled app"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_7d

    monitor-exit v5

    return-void

    :cond_44
    :try_start_44
    new-instance v4, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-direct {v4}, Lcom/android/settings/applications/WriteSettingsDetails;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/settings/applications/WriteSettingsDetails;->setCanWriteSettings(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V
    :try_end_7b
    .catchall {:try_start_44 .. :try_end_7b} :catchall_7d

    :cond_7b
    monitor-exit v5

    :cond_7c
    return-void

    :catchall_7d
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public exeCustomAction()V
    .registers 13

    const-wide/16 v4, 0x0

    const v11, 0x7f120b01

    const/4 v1, 0x0

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v2, v10}, Lcom/samsung/android/settings/applications/EmHandler;->exeOptBasicAction(Landroid/content/Context;Landroid/view/Menu;)Z

    move-result v8

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "ApplicationInfo"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "AppNotifications"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "OptimizeBatteryUsageOn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "OptimizeBatteryUsageOff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "ApplicationsAppsThatCanAppearOnTopOn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "ApplicationsAppsThatCanAppearOnTopOff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "ApplicationsChangeSystemSettingsOn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "ApplicationsChangeSystemSettingsOff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "UsageDataAccessView"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_69
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->searchAndLaunchApp()V

    :cond_6c
    return-void

    :cond_6d
    const-string/jumbo v0, "ApplicationListTypeAll"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string/jumbo v0, "ApplicationListTypeEnabled"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string/jumbo v0, "ApplicationListTypeDisabled"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    :cond_88
    invoke-virtual {p0, v11}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "ApplicationListTypeEnabled"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c3

    const v0, 0x7f120b08

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getBaseEntries()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_d4

    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exePramAction)allEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void

    :cond_c3
    const-string/jumbo v0, "ApplicationListTypeDisabled"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const v0, 0x7f120b03

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9c

    :cond_d4
    const/4 v3, 0x0

    :goto_d5
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_6c

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_102
    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    :cond_105
    const-string/jumbo v0, "OptimizeBatteryUsageAll"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_117

    const-string/jumbo v0, "OptimizeBatteryUsageNotOptimised"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_117
    invoke-virtual {p0, v11}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "OptimizeBatteryUsageNotOptimised"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12b

    const v0, 0x7f120d22

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_12b
    const/4 v3, 0x0

    :goto_12c
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_6c

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_159
    add-int/lit8 v3, v3, 0x1

    goto :goto_12c
.end method

.method public exeOptAction()V
    .registers 6

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/applications/EmHandler;->exeOptBasicAction(Landroid/content/Context;Landroid/view/Menu;)Z

    move-result v0

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1c

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3f

    :cond_1c
    :goto_1c
    const-string/jumbo v2, "ApplicationsSystemapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string/jumbo v2, "ApplicationsHideSystemApps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2e
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    :cond_30
    if-eqz v0, :cond_45

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :goto_3e
    return-void

    :cond_3f
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_30

    goto :goto_1c

    :cond_45
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    goto :goto_3e
.end method

.method public exePrefAction()V
    .registers 1

    return-void
.end method

.method public exeViewAction()V
    .registers 1

    return-void
.end method

.method public getMetricsCategory()I
    .registers 3

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_2e

    :pswitch_5
    const/4 v0, 0x0

    return v0

    :pswitch_7
    const/16 v0, 0x41

    return v0

    :pswitch_a
    const/16 v0, 0x85

    return v0

    :pswitch_d
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    const/16 v0, 0x347

    return v0

    :cond_15
    const/16 v0, 0xb6

    return v0

    :pswitch_18
    const/16 v0, 0x346

    return v0

    :pswitch_1b
    const/16 v0, 0x3a7

    return v0

    :pswitch_1e
    const/16 v0, 0x5f

    return v0

    :pswitch_21
    const/16 v0, 0xb8

    return v0

    :pswitch_24
    const/16 v0, 0xdd

    return v0

    :pswitch_27
    const/16 v0, 0xde

    return v0

    :pswitch_2a
    const/16 v0, 0x328

    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_5
        :pswitch_d
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->addRelativeView()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_19

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_30

    :cond_24
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_19

    :cond_30
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_19

    if-eqz p3, :cond_19

    const-string/jumbo v0, "chg"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "chg"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    goto :goto_19

    :cond_60
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_19
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const v7, 0x7f0a07f6

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    new-instance v3, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e4

    const-string/jumbo v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4a
    if-nez v1, :cond_54

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_54
    const-class v3, Lcom/android/settings/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    :goto_62
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    if-eqz p1, :cond_80

    const-string/jumbo v3, "sortOrder"

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const-string/jumbo v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    :cond_80
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v3, v5, :cond_bb

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    if-eqz v3, :cond_bb

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_bb

    sput-boolean v5, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_notification_list:[Ljava/lang/String;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v3, :cond_bb

    const-string/jumbo v3, "ManageApplications"

    const-string/jumbo v4, "Hide app notification list is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    :cond_bb
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f120e35

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/applications/ManageApplications$5;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/ManageApplications$5;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    new-instance v3, Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/applications/ResetAppsHelper;-><init>(Landroid/content/Context;Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_e4
    const/4 v1, 0x0

    goto/16 :goto_4a

    :cond_e7
    const-class v3, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f7

    instance-of v3, p0, Lcom/android/settings/applications/NotificationApps;

    if-eqz v3, :cond_107

    :cond_f7
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    new-instance v3, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string/jumbo v3, "Advancednotifications"

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    goto/16 :goto_62

    :cond_107
    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    if-eqz v0, :cond_137

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_137

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    const-string/jumbo v3, "storageType"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mStorageType:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    :goto_133
    iput v7, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_62

    :cond_137
    iput v6, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto :goto_133

    :cond_13a
    const-class v3, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_150

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const-string/jumbo v3, "UsageDataAccess"

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    goto/16 :goto_62

    :cond_150
    const-class v3, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_168

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    const-string/jumbo v3, "OptimizeBatteryUsage"

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    goto/16 :goto_62

    :cond_168
    const-class v3, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_189

    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const-string/jumbo v3, "ApplicationsAppsThatCanAppearOnTop"

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_62

    :cond_189
    const-class v3, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    const/4 v3, 0x7

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const-string/jumbo v3, "ApplicationsChangeSystemSettings"

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_62

    :cond_1aa
    const-class v3, Lcom/android/settings/Settings$ManageExternalSourcesActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bc

    const/16 v3, 0x8

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_62

    :cond_1bc
    const-class v3, Lcom/android/settings/Settings$GamesStorageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    const/16 v3, 0x9

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    iput v7, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_62

    :cond_1d0
    const-class v3, Lcom/android/settings/Settings$MoviesStorageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e4

    const/16 v3, 0xa

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    iput v7, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_62

    :cond_1e4
    iput v6, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const-string/jumbo v3, "Applications"

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    goto/16 :goto_62
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_22

    const v0, 0x7f120cfb

    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v0, 0x7f0e0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    return-void

    :cond_22
    const v0, 0x7f120d00

    goto :goto_b
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d018f

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f0a04c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f0a04b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v4, :cond_117

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    if-eqz v1, :cond_45

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_45
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-direct {v4, v5, p0, v6}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications;I)V

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz p3, :cond_7d

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    const-string/jumbo v5, "hasEntries"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    const-string/jumbo v5, "hasBridge"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    :cond_7d
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mStorageType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    new-instance v5, Lcom/android/settings/applications/MusicViewHolderController;

    new-instance v6, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v6, v0}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/android/settings/applications/MusicViewHolderController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setExtraViewController(Lcom/android/settings/applications/FileViewHolderController;)V

    :cond_a1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0299

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a037b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    if-eqz v4, :cond_f3

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_131

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    const v5, 0x7f120154

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_f3
    :goto_f3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_106

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    :cond_106
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-static {p2, v4, v5, v6}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->insetDividerWithAppIcon(Landroid/content/Context;Landroid/widget/ListView;)V

    :cond_117
    instance-of v4, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v4, :cond_126

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_126
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->createHeader()V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v4, p3}, Lcom/android/settings/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v4

    :cond_131
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_13f

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    const v5, 0x7f122221

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f3

    :cond_13f
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_14d

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    const v5, 0x7f120d21

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f3

    :cond_14d
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f3
.end method

.method public onDestroyOptionsMenu()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->release()V

    :cond_d
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v7, 0x41

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-nez v4, :cond_9

    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr p3, v4

    if-gez p3, :cond_13

    return-void

    :cond_13
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getApplicationCount()I

    move-result v4

    if-le v4, p3, :cond_a8

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-direct {p0, p2}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppViewHolder;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5c

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-nez v6, :cond_5a

    :goto_52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v7, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    move v2, v3

    goto :goto_52

    :cond_5c
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_82

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-nez v6, :cond_80

    :goto_78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v7, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    goto :goto_59

    :cond_80
    move v2, v3

    goto :goto_78

    :cond_82
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_59

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-nez v6, :cond_a6

    :goto_9e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v7, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    goto :goto_59

    :cond_a6
    move v2, v3

    goto :goto_9e

    :cond_a8
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/FileViewHolderController;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/settings/applications/FileViewHolderController;->onClick(Landroid/app/Fragment;)V

    goto :goto_59
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b038e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x85

    invoke-static {v0, v3, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 25

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v21

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_1b6

    const/4 v2, 0x0

    return v2

    :sswitch_d
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v3, 0x7f0a07f5

    if-ne v3, v2, :cond_62

    const/16 v20, 0x3e8

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x41

    invoke-static {v2, v6, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    :cond_5d
    :goto_5d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    const/4 v2, 0x1

    return v2

    :cond_62
    const/16 v20, 0x0

    goto :goto_1e

    :sswitch_65
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0a07b6

    if-ne v2, v3, :cond_9c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    :goto_73
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b00ca

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v2, :cond_a2

    const/16 v2, 0x3e8

    :goto_8a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0x41

    invoke-static {v3, v6, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_5d

    :cond_9c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    goto :goto_73

    :cond_a2
    const/4 v2, 0x0

    goto :goto_8a

    :sswitch_a4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/16 v4, 0x41

    invoke-static {v2, v4, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v2}, Lcom/android/settings/applications/ResetAppsHelper;->buildResetDialog()V

    const/4 v2, 0x1

    return v2

    :sswitch_c1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v3, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f121162

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :sswitch_dc
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v3, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f120f7a

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :sswitch_f7
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_112

    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.ACTION_MANAGE_PERMISSIONS_CHN"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_107
    if-eqz v19, :cond_110

    :try_start_109
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->startActivity(Landroid/content/Intent;)V
    :try_end_110
    .catch Landroid/content/ActivityNotFoundException; {:try_start_109 .. :try_end_110} :catch_11d

    :cond_110
    :goto_110
    const/4 v2, 0x1

    return v2

    :cond_112
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGE_PERMISSIONS"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_107

    :catch_11d
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_110

    :sswitch_122
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "classname"

    const-string/jumbo v3, "com.android.settings.Settings$OverlaySettingsActivity"

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v3, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :sswitch_14b
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "classname"

    const-string/jumbo v3, "com.android.settings.Settings$WriteSettingsActivity"

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v12, p0

    invoke-virtual/range {v6 .. v13}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :sswitch_174
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/android/settings/applications/SpecialAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const v14, 0x7f121a3c

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move-object/from16 v16, p0

    invoke-virtual/range {v10 .. v17}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :sswitch_190
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.deviceagent"

    const-string/jumbo v3, "com.samsung.deviceagent.MainActivity"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v22, :cond_1ae

    :try_start_1a7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->startActivity(Landroid/content/Intent;)V
    :try_end_1ae
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a7 .. :try_end_1ae} :catch_1b0

    :cond_1ae
    :goto_1ae
    const/4 v2, 0x1

    return v2

    :catch_1b0
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1ae

    nop

    :sswitch_data_1b6
    .sparse-switch
        0x7f0a03d6 -> :sswitch_65
        0x7f0a04fb -> :sswitch_dc
        0x7f0a04fc -> :sswitch_c1
        0x7f0a04fd -> :sswitch_f7
        0x7f0a0622 -> :sswitch_190
        0x7f0a06f0 -> :sswitch_a4
        0x7f0a07b6 -> :sswitch_65
        0x7f0a07f5 -> :sswitch_d
        0x7f0a07f6 -> :sswitch_d
        0x7f0a07fe -> :sswitch_174
        0x7f0a0882 -> :sswitch_122
        0x7f0a09dd -> :sswitch_14b
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    :cond_c
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateView()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-wrap1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    :cond_19
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_22

    const-string/jumbo v0, "Applications"

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    :cond_22
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mBixbyLoggingStatesId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_33
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hasEntries"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get4(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hasBridge"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get3(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/ResetAppsHelper;->stop()V

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x2710

    const-string/jumbo v0, "SpecialAccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f0a07fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v0, "ApplicationsSystemapps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "AdvancedNotificationsMoreOptionsShowSystemApps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_2d
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f0a07b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_1a

    :cond_3a
    const-string/jumbo v0, "ApplicationsOrderbySize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f0a07f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_1a

    :cond_50
    const-string/jumbo v0, "ApplicationsOrderbyName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f0a07f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_1a

    :cond_66
    const-string/jumbo v0, "DefaultApplications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f0a04fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_1a

    :cond_7c
    const-string/jumbo v0, "ApplicationInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string/jumbo v0, "OptimizeBatteryUsageOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string/jumbo v0, "OptimizeBatteryUsageOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string/jumbo v0, "ApplicationsAppsThatCanAppearOnTopOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string/jumbo v0, "ApplicationsAppsThatCanAppearOnTopOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string/jumbo v0, "ApplicationsChangeSystemSettingsOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string/jumbo v0, "ApplicationsChangeSystemSettingsOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    const-string/jumbo v0, "UsageDataAccessView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    :cond_c4
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v5, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_1a

    :cond_cb
    const-string/jumbo v0, "AppPermissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f0a04fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_1a

    :cond_e2
    const-string/jumbo v0, "ApplicationsHideSystemApps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f0a03d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_1a

    :cond_f9
    const-string/jumbo v0, "FilteredAdvancedNotificationsAllApps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Advancednotifications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_112
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1a

    :cond_11b
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithBlockedNoti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_148

    const-string/jumbo v0, "FilteredAdvancedNotificationsShownSilently"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_148

    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithPrioritizedNoti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_148

    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithNotiHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_148

    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithContentHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18c

    :cond_148
    const v0, 0x7f120b0c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    :goto_150
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_183

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Advancednotifications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_180
    add-int/lit8 v3, v3, 0x1

    goto :goto_150

    :cond_183
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1a

    :cond_18c
    const-string/jumbo v0, "AdvancedNotificationsMoreOptionsResetAppPreferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19e

    const-string/jumbo v0, "ResetAppPreferencesPopup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    :cond_19e
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f0a06f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_1a

    :cond_1ac
    const-string/jumbo v0, "AppNotifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setClientVisibility(Z)V

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v5, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_1a

    :cond_1c2
    const-string/jumbo v0, "ApplicationListTypeAll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ef

    const-string/jumbo v0, "ApplicationListTypeEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ef

    const-string/jumbo v0, "ApplicationListTypeDisabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ef

    const-string/jumbo v0, "OptimizeBatteryUsageAll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ef

    const-string/jumbo v0, "OptimizeBatteryUsageNotOptimised"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_1ef
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v5, v1, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_1a
.end method

.method public setHasDisabled(Z)V
    .registers 4

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    return-void
.end method

.method public setHasInstant(Z)V
    .registers 4

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    :cond_14
    return-void
.end method

.method public stopAction()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    sput-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    :cond_e
    return-void
.end method

.method updateOptionsMenu()V
    .registers 9

    const/4 v7, 0x3

    const v5, 0x7f0a04fc

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10b

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_10b

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_23
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_133

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_133

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_133

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a04fb

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a04fd

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_49
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_14d

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v4, "com.samsung.deviceagent"

    const-string/jumbo v5, "com.samsung.deviceagent.MainActivity"

    invoke-static {v1, v4, v5}, Lcom/android/settings/Utils;->isActivityExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14d

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_14d

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a0622

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_6f
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a0882

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a09dd

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a07fe

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_15b

    move v1, v2

    :goto_95
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a07f5

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v1, :cond_a9

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v1, v7, :cond_161

    :cond_a9
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v5, 0x7f0a07f5

    if-eq v1, v5, :cond_15e

    move v1, v2

    :goto_b1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a07f6

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v1, :cond_c5

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v1, v7, :cond_167

    :cond_c5
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v5, 0x7f0a07f6

    if-eq v1, v5, :cond_164

    move v1, v2

    :goto_cd
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a07b6

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-nez v1, :cond_16d

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v1, v6, :cond_16a

    move v1, v2

    :goto_e2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a03d6

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v1, :cond_172

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v1, v6, :cond_170

    move v1, v2

    :goto_f7
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a06f0

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v4, v6, :cond_174

    :goto_107
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_10b
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_128

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_128

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_23

    :cond_128
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_23

    :cond_133
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a04fb

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a04fd

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_49

    :cond_14d
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f0a0622

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6f

    :cond_15b
    move v1, v3

    goto/16 :goto_95

    :cond_15e
    move v1, v3

    goto/16 :goto_b1

    :cond_161
    move v1, v3

    goto/16 :goto_b1

    :cond_164
    move v1, v3

    goto/16 :goto_cd

    :cond_167
    move v1, v3

    goto/16 :goto_cd

    :cond_16a
    move v1, v3

    goto/16 :goto_e2

    :cond_16d
    move v1, v3

    goto/16 :goto_e2

    :cond_170
    move v1, v3

    goto :goto_f7

    :cond_172
    move v1, v3

    goto :goto_f7

    :cond_174
    move v2, v3

    goto :goto_107
.end method

.method public updateView()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_c
    return-void
.end method
