.class public Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
.super Ljava/lang/Object;
.source "SecSummaryLayoutCHN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$1;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$4;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$5;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$6;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$7;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;
    }
.end annotation


# static fields
.field public static mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

.field public static mIsDataCompressionEnabled:Z

.field public static mIsSupportDataCompression:Z

.field private static sCurrentTabSubId:I

.field private static sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# instance fields
.field private isKnoxmode:Z

.field private mContext:Landroid/content/Context;

.field public mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

.field private mDataStatus:I

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

.field private mDataUsedNoLimit:Landroid/widget/TextView;

.field private mDataUsedNoLimit_land:Landroid/widget/TextView;

.field private final mDataUsgaeObserver:Landroid/database/ContentObserver;

.field private mDividerView:Landroid/view/View;

.field private mDividerView_land:Landroid/view/View;

.field private mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mGraphFreeColor:I

.field private mGraphLineColor:I

.field private mGraphOccupiedColor:I

.field private mIndexNum:I

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSavingStateChangeListener:Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

.field private mPieChartInfoLayout:Landroid/view/View;

.field private mPieChartInfoLayout_land:Landroid/view/View;

.field private mRamFree:Landroid/widget/TextView;

.field private mRamFreePercent:Landroid/widget/TextView;

.field private mRamFreePercent_land:Landroid/widget/TextView;

.field private mRamFree_land:Landroid/widget/TextView;

.field private mRelativeLayoutRaminfo:Landroid/view/View;

.field private mRelativeLayoutRaminfo_land:Landroid/view/View;

.field private mResInstance:Landroid/content/res/Resources;

.field private mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

.field private mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

.field private mSavedTV:Landroid/widget/TextView;

.field private mSavedTV_land:Landroid/widget/TextView;

.field private mSavingServiceConnection:Landroid/content/ServiceConnection;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

.field private mUpdateTrafficButton:Landroid/widget/Button;

.field private mUpdateTrafficButtonListener:Landroid/view/View$OnClickListener;

.field private mUseDataTotalPercent:Landroid/widget/TextView;

.field private mUseDataTotalPercent_land:Landroid/widget/TextView;

.field private mUsedText:Landroid/widget/TextView;

.field private mUsedText_land:Landroid/widget/TextView;

.field private mViewDetailButton:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mViewDetailButton_land:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mViewDetailListener:Landroid/view/View$OnClickListener;

.field private mtvTotalRam:Landroid/widget/TextView;

.field private mtvTotalRam_land:Landroid/widget/TextView;

.field public savedString:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/android/settingslib/net/DataUsageController;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/android/settings/datausage/DataUsageSummary;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mOnSavingStateChangeListener:Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/widget/TabHost;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setCurrentTabSubId(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->showErrorWarningDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    sput-boolean v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIsSupportDataCompression:Z

    sput-boolean v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIsDataCompressionEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/DataUsageSummary;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->isKnoxmode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsgaeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mOnSavingStateChangeListener:Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$4;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$5;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$6;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$7;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButtonListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    new-instance v1, Lcom/android/settingslib/net/DataUsageController;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIsSupportDataCompression:Z

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIsDataCompressionEnabled:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_92

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_92
    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->isKnoxmode:Z

    return-void
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .registers 12

    const/4 v7, 0x0

    if-eqz p2, :cond_b2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    if-eqz v4, :cond_b2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {p1, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8e

    if-eqz p3, :cond_8f

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    const-string/jumbo v4, "SummaryPreferenceCHN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subInfo.getSimSlotIndex()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->toString()Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v0

    float-to-int v3, v4

    invoke-virtual {v2, v7, v7, v3, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f120754

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_8e

    :cond_b2
    const-string/jumbo v4, "SummaryPreferenceCHN"

    const-string/jumbo v5, "addMobileTab: subInfoList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method public static colorToString(I)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveSubscriptionInfoCount(Landroid/content/Context;)I
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const-string/jumbo v2, "SummaryPreferenceCHN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the ActiveSubscriptionInfoCount is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getCurrentTabSubId()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    return v0
.end method

.method private getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .registers 9

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {p1, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_16

    add-int/lit8 v2, v1, 0x1

    if-ne v1, v0, :cond_32

    return-object v3

    :cond_31
    return-object v6

    :cond_32
    move v1, v2

    goto :goto_16
.end method

.method public static getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .registers 3

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    :cond_b
    invoke-static {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    return-object v0
.end method

.method public static getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;
    .registers 16

    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "com.samsung.android.app.sreminder"

    const/16 v13, 0x80

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v11, "lifeservice.category.OP"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "result:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_32} :catch_66
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_32} :catch_46

    :goto_32
    if-eqz v2, :cond_d1

    const/4 v9, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_43

    const-string/jumbo v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    :cond_43
    if-nez p1, :cond_86

    return-object v7

    :catch_46
    move-exception v4

    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :catch_66
    move-exception v3

    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_86
    const/4 v10, 0x0

    :try_start_87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "com.samsung.android.app.sreminder"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_87 .. :try_end_91} :catch_b4

    move-result-object v10

    :goto_92
    new-array v8, v9, [Ljava/lang/String;

    if-eqz v10, :cond_d0

    const/4 v5, 0x0

    :goto_97
    if-ge v5, v9, :cond_d0

    aget-object v11, v7, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "string"

    const-string/jumbo v13, "com.samsung.android.app.sreminder"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_b1

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v5

    :cond_b1
    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    :catch_b4
    move-exception v3

    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "com.samsung.android.app.sreminder name exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    :cond_d0
    return-object v8

    :cond_d1
    const/4 v11, 0x0

    return-object v11
.end method

.method private getSimName(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public static getTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    :try_start_6
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string/jumbo v4, "SummaryPreferenceCHN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "versionCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_31} :catch_32
    .catchall {:try_start_6 .. :try_end_31} :catchall_4e

    return v3

    :catch_32
    move-exception v0

    :try_start_33
    const-string/jumbo v4, "SummaryPreferenceCHN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get code version exception happen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_4e

    return v3

    :catchall_4e
    move-exception v4

    return v3
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    const/4 v1, 0x1

    if-nez v3, :cond_82

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone1_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_80

    const/4 v1, 0x1

    :goto_1f
    const-string/jumbo v5, "SummaryPreferenceCHN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the soltId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "isReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_93

    move v2, v1

    :goto_4b
    const-string/jumbo v5, "SummaryPreferenceCHN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasReadyMobileRadio: subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " conn.isNetworkSupported(TYPE_MOBILE)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_80
    const/4 v1, 0x0

    goto :goto_1f

    :cond_82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone2_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_91

    const/4 v1, 0x1

    goto :goto_1f

    :cond_91
    const/4 v1, 0x0

    goto :goto_1f

    :cond_93
    const/4 v2, 0x0

    goto :goto_4b
.end method

.method private initDonutLandLayout(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x0

    const-string/jumbo v5, "SummaryPreferenceCHN"

    const-string/jumbo v6, "initDonutLandLayout() orientation:-start"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0a06c5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    const v5, 0x7f0a06c1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_147

    const v5, 0x7f0a0200

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    const v5, 0x7f0a020f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    const v5, 0x7f0a0202

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    :goto_43
    const v5, 0x7f0a0377

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree_land:Landroid/widget/TextView;

    const v5, 0x7f0a08da

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam_land:Landroid/widget/TextView;

    const v5, 0x7f0a0911

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    const v5, 0x7f0a092b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton_land:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton_land:Lcom/samsung/android/settings/widget/RoundButtonView;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton_land:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a090a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->isKnoxmode:Z

    if-nez v5, :cond_168

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_96
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_171

    const v5, 0x7f0a017c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    :goto_a7
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-nez v5, :cond_b7

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b7
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree_land:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f07078a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_17e

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0706bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0706bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v5, v3, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    :goto_ed
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07078d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-nez v5, :cond_11e

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v0, v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_185

    const/4 v1, 0x1

    :goto_119
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v1}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    :cond_11e
    sget-boolean v5, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIsSupportDataCompression:Z

    if-eqz v5, :cond_138

    const v5, 0x7f0a08f4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    const v5, 0x7f0a0734

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/datasaving/SavedDataCircleView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    :cond_138
    sget-object v5, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    const-string/jumbo v5, "SummaryPreferenceCHN"

    const-string/jumbo v6, "initDonutLandLayout() orientation:-end"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_147
    const v5, 0x7f0a027f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView_land:Landroid/view/View;

    const v5, 0x7f0a08ee

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    const v5, 0x7f0a06c3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    goto/16 :goto_43

    :cond_168
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_96

    :cond_171
    const v5, 0x7f0a06c7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    goto/16 :goto_a7

    :cond_17e
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v7, v7, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    goto/16 :goto_ed

    :cond_185
    const/4 v1, 0x0

    goto :goto_119
.end method

.method private initDonutLayout(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x0

    const-string/jumbo v5, "SummaryPreferenceCHN/LPF"

    const-string/jumbo v6, "initDonutLayout() orientation:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0a06c4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    const v5, 0x7f0a06c0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo:Landroid/view/View;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_139

    const v5, 0x7f0a01ff

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    const v5, 0x7f0a020e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    const v5, 0x7f0a0201

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    :goto_43
    const v5, 0x7f0a0376

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree:Landroid/widget/TextView;

    const v5, 0x7f0a08d9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam:Landroid/widget/TextView;

    const v5, 0x7f0a0910

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    const v5, 0x7f0a092a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0909

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->isKnoxmode:Z

    if-nez v5, :cond_15a

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_96
    sget-boolean v5, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIsSupportDataCompression:Z

    if-eqz v5, :cond_b0

    const v5, 0x7f0a08f3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    const v5, 0x7f0a0733

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/datasaving/SavedDataCircleView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    :cond_b0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_163

    const v5, 0x7f0a017b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    :goto_c1
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-nez v5, :cond_d1

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d1
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f07078a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_170

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0706bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0706bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v5, v3, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    :goto_107
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07078d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-nez v5, :cond_138

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v0, v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_176

    const/4 v1, 0x1

    :goto_133
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v1}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    :cond_138
    return-void

    :cond_139
    const v5, 0x7f0a027e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView:Landroid/view/View;

    const v5, 0x7f0a08ed

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    const v5, 0x7f0a06c2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    goto/16 :goto_43

    :cond_15a
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_96

    :cond_163
    const v5, 0x7f0a06c6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    goto/16 :goto_c1

    :cond_170
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v7, v7, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    goto :goto_107

    :cond_176
    const/4 v1, 0x0

    goto :goto_133
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_40

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_40
    return-object v0
.end method

.method private initTabView(Landroid/view/View;)V
    .registers 6

    const v1, 0x1020012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    const v1, 0x7f0a0890

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabsContainer:Landroid/view/ViewGroup;

    const v1, 0x1020013

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabWidget;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateTabs()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_56

    const-string/jumbo v1, "SummaryPreferenceCHN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the init current tab sub id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setCurrentTabSubId(I)V

    :cond_56
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    return-void
.end method

.method private setColorOnStatus(F)V
    .registers 5

    const/4 v2, 0x0

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_47

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0601e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_14
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    :goto_17
    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphOccupiedColor:I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f060233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphFreeColor:I

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    return-void

    :cond_3d
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f060238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_14

    :cond_47
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7d

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    sub-float v1, p1, v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0601e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_6f
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    goto :goto_17

    :cond_73
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f06023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_6f

    :cond_7d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0601e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_8c
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    goto :goto_17

    :cond_90
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f060234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_8c
.end method

.method private static setCurrentTabSubId(I)V
    .registers 1

    sput p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    return-void
.end method

.method private setDonut(F)V
    .registers 14

    const-wide/16 v10, 0x1f4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "setDonut()-start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-nez v3, :cond_86

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f070645

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    sub-float v4, v6, p1

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphOccupiedColor:I

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_65

    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphFreeColor:I

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v7, v10, v11}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v7, v10, v11}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    return-void

    :cond_86
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    sub-float v4, v6, p1

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    invoke-virtual {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    sub-float v4, v6, p1

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    invoke-virtual {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "setDonut()-end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setTrafficText(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f121c04

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f120712

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f120712

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_88
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_1c1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_195

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_f2
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_229

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    if-eqz v0, :cond_229

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f121c03

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f121c03

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15a
    :goto_15a
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const v3, 0x7f121bf9

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const v3, 0x7f121bf9

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_195
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f2

    :cond_1c1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1fd

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f2

    :cond_1fd
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f2

    :cond_229
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_2e9

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2e9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_295

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15a

    :cond_295
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15a

    :cond_2e9
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-nez v0, :cond_15a

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f121624

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f121624

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15a
.end method

.method private showErrorWarningDialog(Landroid/os/Bundle;)V
    .registers 6

    if-nez p1, :cond_41

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "titleResId"

    const v3, 0x7f121e72

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "positiveResId"

    const v3, 0x7f120608

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "negativeResId"

    const v3, 0x7f120601

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "bodyResId"

    const v3, 0x7f121dad

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "wlan"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method private updateSavedTvState()V
    .registers 12

    const v10, 0x7f1216f5

    const/16 v2, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    if-nez v1, :cond_15

    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "updateSavedTvState: mSavedTV is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_90

    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "updateSavedTvState "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_48

    :try_start_2e
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v6

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/samsung/android/datasaving/IDataSavingService;->getSavedBytesForAllUid(JJ)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/datasaving/IDataSavingService;->getUsageText(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_48} :catch_85

    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_66
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_84
    :goto_84
    return-void

    :catch_85
    move-exception v0

    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "exception happen when Called mDataSavingService bind opera saving service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_90
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_84
.end method

.method private updateTabs()V
    .registers 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->clearAllTabs()V

    iput v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getActiveSubscriptionInfoCount(Landroid/content/Context;)I

    move-result v2

    const-string/jumbo v6, "SummaryPreferenceCHN"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simCount"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->toString()Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_53

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    if-le v2, v7, :cond_51

    move v6, v7

    :goto_4d
    invoke-direct {p0, v9, v3, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    goto :goto_3c

    :cond_51
    move v6, v8

    goto :goto_4d

    :cond_53
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-nez v6, :cond_6d

    const/4 v1, 0x1

    :goto_5c
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-le v6, v7, :cond_6f

    const/4 v0, 0x1

    :goto_65
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_71

    :goto_69
    invoke-virtual {v6, v8}, Landroid/widget/TabWidget;->setVisibility(I)V

    return-void

    :cond_6d
    const/4 v1, 0x0

    goto :goto_5c

    :cond_6f
    const/4 v0, 0x0

    goto :goto_65

    :cond_71
    const/16 v8, 0x8

    goto :goto_69
.end method


# virtual methods
.method public bindDataSavingService()V
    .registers 6

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.datasaving.DataSavingService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.datasaving"

    const-string/jumbo v3, "com.samsung.android.datasaving.DataSavingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_25

    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "bindDataSavingService failed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "bindSavingService failed with exception "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public changeLayoutOrientation(I)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a
.end method

.method public getIMSIBySoltId()Ljava/lang/String;
    .registers 4

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 10

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v8

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "network_template"

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "sub_id"

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f120590

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x25

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSavedBytesByUid(I)J
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v0, :cond_29

    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v4

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/datasaving/IDataSavingService;->getSavedBytesByUid(IJJ)J
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_1c

    move-result-wide v0

    return-wide v0

    :catch_1c
    move-exception v6

    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "getSavedBytesByUid failed with exception "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_29
    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "mDataSavingService is nulll ,getSavedBytesByUid failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public getTabCount()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public getTabHost()Landroid/widget/TabHost;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public getTabViewAt(I)Landroid/view/View;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_37

    const-string/jumbo v0, "SummaryPreferenceCHN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set the tab from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_37
    return-object v1
.end method

.method public initAutoCalibrationStatus()V
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "SummaryPreferenceCHN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initAutoCalibrationStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_2e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_56

    :cond_2e
    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "register the receiver again"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsgaeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_55
    :goto_55
    return-void

    :cond_56
    if-eqz v0, :cond_5b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_68

    :cond_5b
    :goto_5b
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_55

    :cond_68
    const/4 v1, -0x1

    if-ne v0, v1, :cond_55

    goto :goto_5b
.end method

.method public initDataSavingLayout()V
    .registers 6

    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "initDataSavingLayout "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v3, :cond_30

    :try_start_d
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getIMSIBySoltId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v3, v0}, Lcom/samsung/android/datasaving/IDataSavingService;->setCurrentIMSI(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_25

    :goto_1e
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateSavedTvState()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateSavedDataCircleView()V

    :goto_24
    return-void

    :catch_25
    move-exception v2

    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "exception happen when Called mDataSavingService interface"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_30
    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "mDataSavingService is null "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public initView(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "initView-start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initTabView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDonutLayout(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDonutLandLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDataSavingLayout()V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-static {v6}, Lcom/android/settings/Utils;->setAutoVerfiyTrafficEnable(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "donnotshow_checked_flag"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_87

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/settings/Utils;->setAutoVerfiyTrafficEnable(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5a

    const/4 v3, 0x3

    if-ne v0, v3, :cond_84

    :cond_5a
    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "the auto calibration is processing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.samsung.android.sm.enhancedatausage.AutoCalibrationService"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_84

    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "the auto calibration is processing, but service is killed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_84
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->startAutoCalibrationService(I)V

    :cond_87
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initAutoCalibrationStatus()V

    :cond_8a
    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "initView-end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isMultiTab()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public requestFocusForUpdateTrafficButton()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUpdateTrafficButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_9
    return-void
.end method

.method public setInstance(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V
    .registers 2

    sput-object p1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    return-void
.end method

.method public showWarningDialog(Landroid/os/Bundle;Z)V
    .registers 9

    const-string/jumbo v3, "wlan"

    const/4 v2, 0x0

    if-nez p1, :cond_49

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "titleResId"

    const v5, 0x7f1202b3

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "positiveResId"

    const v5, 0x7f120112

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "negativeResId"

    const v5, 0x7f120877

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "bodyResId"

    const v5, 0x7f1202b2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "isneedsendsms"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_49
    return-void
.end method

.method public startAutoCalibrationService(I)V
    .registers 8

    const/4 v5, 0x2

    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "startAutoCalibrationService()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.sm_cn"

    const-string/jumbo v4, "com.samsung.android.sm.enhancedatausage.AutoCalibrationService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "sub_id"

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "service_action"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_2d
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_37

    if-ne p1, v5, :cond_60

    :cond_37
    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "register the observer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_auto_calibration_result"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_auto_calibration_result"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsgaeObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_60} :catch_61

    :cond_60
    :goto_60
    return-void

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60
.end method

.method public stopAutoCalibrationService()V
    .registers 6

    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "stopAutoCalibrationService()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.sm_cn"

    const-string/jumbo v4, "com.samsung.android.sm.enhancedatausage.AutoCalibrationService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_1c
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public unbindDataSavingService()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "unbindDataSavingService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "unbindDataSavingService failed with exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public updatePolicy()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy(IZ)V

    return-void
.end method

.method public updatePolicy(IZ)V
    .registers 20

    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set_data_limit"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_132

    move-result-object v11

    :goto_24
    const-string/jumbo v12, "off"

    :try_start_27
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "data_warning_set"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_49} :catch_138

    move-result-object v12

    :goto_4a
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "restrict_data_check_box"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-nez v13, :cond_13e

    const/4 v8, 0x0

    :goto_73
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set_package_start_date_value"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "switch_traffic_settings"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-nez v13, :cond_141

    const/4 v5, 0x0

    :goto_c2
    new-instance v6, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {v6, v13}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v10

    if-nez p2, :cond_e7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-static {v13, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v10

    :cond_e7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v7

    new-instance v4, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v4, v7}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    invoke-virtual {v4}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    if-eqz v5, :cond_15a

    const-string/jumbo v13, "max"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_14f

    if-eqz v12, :cond_143

    const-string/jumbo v13, "off"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_143

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningByte()J

    move-result-wide v14

    invoke-virtual {v4, v10, v14, v15}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_11e
    if-eqz v8, :cond_149

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getlimiValue()J

    move-result-wide v14

    invoke-virtual {v4, v10, v14, v15}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    :goto_127
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    iget-object v2, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v4, v10, v9, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    return-void

    :catch_132
    move-exception v3

    const-string/jumbo v11, "max"

    goto/16 :goto_24

    :catch_138
    move-exception v3

    const-string/jumbo v12, "off"

    goto/16 :goto_4a

    :cond_13e
    const/4 v8, 0x1

    goto/16 :goto_73

    :cond_141
    const/4 v5, 0x1

    goto :goto_c2

    :cond_143
    const-wide/16 v14, -0x1

    invoke-virtual {v4, v10, v14, v15}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_11e

    :cond_149
    const-wide/16 v14, -0x1

    invoke-virtual {v4, v10, v14, v15}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_127

    :cond_14f
    const-wide/16 v14, -0x1

    invoke-virtual {v4, v10, v14, v15}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const-wide/16 v14, -0x1

    invoke-virtual {v4, v10, v14, v15}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_127

    :cond_15a
    const-wide/16 v14, -0x1

    invoke-virtual {v4, v10, v14, v15}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const-wide/16 v14, -0x1

    invoke-virtual {v4, v10, v14, v15}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_127
.end method

.method public updateSavedDataCircleView()V
    .registers 12

    const v10, 0x7f0600bf

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    if-nez v2, :cond_19

    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "updateSavedDataCircleView: mSavedDataCircleView&mSavedDataCircleView_land is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v5, "updateSavedDataCircleView "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_135

    const-string/jumbo v5, "SummaryPreferenceCHN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDataSavingService: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v2, :cond_123

    move v2, v3

    :goto_3e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "mTrafficDataSummary: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v6, :cond_126

    :goto_4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v2, :cond_122

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v2, :cond_122

    const/4 v1, 0x0

    :try_start_61
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v6

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v8

    invoke-interface {v2, v6, v7, v8, v9}, Lcom/samsung/android/datasaving/IDataSavingService;->getSavedBytesForAllUid(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalData()J
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_79} :catch_129

    move-result-wide v6

    long-to-float v3, v6

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v2, v3

    :goto_80
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    if-eqz v2, :cond_d1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v2, v4}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f07078b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f07078c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f070688

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPaintColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f070687

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setRadius(F)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPercent(F)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->invalidate()V

    :cond_d1
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    if-eqz v2, :cond_122

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v2, v4}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f07078b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f07078c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f070688

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPaintColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f070687

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setRadius(F)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPercent(F)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->invalidate()V

    :cond_122
    :goto_122
    return-void

    :cond_123
    move v2, v4

    goto/16 :goto_3e

    :cond_126
    move v3, v4

    goto/16 :goto_4d

    :catch_129
    move-exception v0

    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "exception happen when Called mDataSavingService getSavedBytesForAllUid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    :cond_135
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v2, v6}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v2, v6}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    goto :goto_122
.end method

.method public updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .registers 4

    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "updateUI- start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setColorOnStatus(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setDonut(F)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setTrafficText(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    :cond_30
    sget-boolean v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIsSupportDataCompression:Z

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDataSavingLayout()V

    :cond_37
    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "updateUI- end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
