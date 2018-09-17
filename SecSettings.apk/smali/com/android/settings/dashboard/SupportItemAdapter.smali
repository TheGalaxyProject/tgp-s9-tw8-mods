.class public final Lcom/android/settings/dashboard/SupportItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SupportItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;,
        Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;,
        Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;,
        Lcom/android/settings/dashboard/SupportItemAdapter$OfflineSpinnerItemSelectListener;,
        Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;,
        Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;,
        Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field private final mActivity:Landroid/app/Activity;

.field private final mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

.field private mHasInternet:Z

.field private final mItemClickListener:Landroid/view/View$OnClickListener;

.field private final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private final mOfflineSpinnerItemSelectListener:Lcom/android/settings/dashboard/SupportItemAdapter$OfflineSpinnerItemSelectListener;

.field private final mOnlineSpinnerItemSelectListener:Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;

.field private mSelectedAccountIndex:I

.field private mSelectedCountry:Ljava/lang/String;

.field private final mSupportData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SupportItemAdapter;)[Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/SupportItemAdapter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/dashboard/SupportItemAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/dashboard/SupportItemAdapter;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/SupportItemAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/dashboard/SupportItemAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/SupportItemAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->refreshEscalationCards()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/SupportItemAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter;->tryStartDisclaimerAndSupport(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/android/settings/overlay/SupportFeatureProvider;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Landroid/view/View$OnClickListener;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iput-object p4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iput-object p5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineSpinnerItemSelectListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineSpinnerItemSelectListener;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter;Lcom/android/settings/dashboard/SupportItemAdapter$OfflineSpinnerItemSelectListener;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mOfflineSpinnerItemSelectListener:Lcom/android/settings/dashboard/SupportItemAdapter$OfflineSpinnerItemSelectListener;

    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter;Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mOnlineSpinnerItemSelectListener:Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    if-eqz p2, :cond_4d

    const-string/jumbo v0, "STATE_SELECTED_COUNTRY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    const-string/jumbo v0, "ACCOUNT_SELECTED_INDEX"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    :goto_3f
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportEligibleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->refreshData()V

    return-void

    :cond_4d
    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/settings/overlay/SupportFeatureProvider;->getCurrentCountryCodeIfHasConfig(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    goto :goto_3f
.end method

.method private addEscalationCards()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addSignInPromo()V

    :goto_8
    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addOnlineEscalationCards()V

    goto :goto_8

    :cond_11
    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addOfflineEscalationCards()V

    goto :goto_8
.end method

.method private addMoreHelpItems()V
    .registers 9

    const v7, 0x7f0d02fc

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v3, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0d02fd

    invoke-direct {v3, v4, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/android/settings/overlay/SupportFeatureProvider;->getHelpIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v3, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v7}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f08021d

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setIcon(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    const v4, 0x7f121b26

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    const/16 v4, 0x1df

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setMetricsEvent(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v3}, Lcom/android/settings/overlay/SupportFeatureProvider;->getTipsAndTricksIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v3, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v7}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f080227

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setIcon(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    const v4, 0x7f121b31

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    const/16 v4, 0x1de

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setMetricsEvent(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_89
    return-void
.end method

.method private addOfflineEscalationCards()V
    .registers 10

    const v3, 0x7f121b23

    const/4 v6, 0x2

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    invoke-interface {v2, v6, v4}, Lcom/android/settings/overlay/SupportFeatureProvider;->isAlwaysOperating(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f121b1c

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_18
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v5}, Lcom/android/settings/overlay/SupportFeatureProvider;->getPhoneSupportCountries()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->setCountries(Ljava/util/List;)Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v6, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->setTollFreePhone(Lcom/android/settings/support/SupportPhone;)Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v6, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    invoke-interface {v5, v6, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->setTolledPhone(Lcom/android/settings/support/SupportPhone;)Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;

    move-result-object v5

    if-eqz v0, :cond_6d

    const v2, 0x7f121b1d

    :goto_49
    invoke-virtual {v5, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v2

    if-eqz v0, :cond_52

    const v3, 0x7f121b1b

    :cond_52
    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileTitleDescription(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(Ljava/lang/CharSequence;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v2

    invoke-interface {v4, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_62
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    invoke-interface {v2, v4, v6, v5, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->getOperationHours(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_18

    :cond_6d
    move v2, v3

    goto :goto_49
.end method

.method private addOnlineEscalationCards()V
    .registers 11

    const/4 v9, 0x0

    const v5, 0x7f121b23

    const/4 v8, 0x3

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v3, v4, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->isSupportTypeEnabled(Landroid/content/Context;I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v3, v4, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->isSupportTypeEnabled(Landroid/content/Context;I)Z

    move-result v1

    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;-><init>(Landroid/content/Context;)V

    if-nez v2, :cond_74

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_74

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    const v4, 0x7f121b24

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    :goto_2d
    if-eqz v2, :cond_4b

    const v3, 0x7f121b1f

    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setText1(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v4, v5, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->getEstimatedWaitTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setSummary1(Ljava/lang/String;)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v4, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->isOperatingNow(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setEnabled1(Z)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    :cond_4b
    if-eqz v1, :cond_69

    const v3, 0x7f121b1e

    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setText2(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v4, v5, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->getEstimatedWaitTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setSummary2(Ljava/lang/String;)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v4, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->isOperatingNow(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setEnabled2(Z)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    :cond_69
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_74
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v3, v7, v9}, Lcom/android/settings/overlay/SupportFeatureProvider;->isAlwaysOperating(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_84

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v3, v8, v9}, Lcom/android/settings/overlay/SupportFeatureProvider;->isAlwaysOperating(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9f

    :cond_84
    const v3, 0x7f121b1d

    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    const v4, 0x7f121b1b

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileTitleDescription(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f121b1c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(Ljava/lang/CharSequence;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    goto :goto_2d

    :cond_9f
    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v3, v7}, Lcom/android/settings/overlay/SupportFeatureProvider;->isOperatingNow(I)Z

    move-result v3

    if-nez v3, :cond_af

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v3, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->isOperatingNow(I)Z

    move-result v3

    if-eqz v3, :cond_bb

    :cond_af
    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    const v4, 0x7f121b22

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    goto/16 :goto_2d

    :cond_bb
    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x1

    invoke-interface {v4, v5, v7, v9, v6}, Lcom/android/settings/overlay/SupportFeatureProvider;->getOperationHours(Landroid/content/Context;ILjava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(Ljava/lang/CharSequence;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    goto/16 :goto_2d
.end method

.method private addSignInPromo()V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d02fa

    invoke-direct {v1, v2, v3}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f121b2b

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setText1(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v1

    const v2, 0x7f121b2c

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setText2(I)Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;

    move-result-object v1

    const v2, 0x7f121b2e

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData$Builder;->setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v1

    const v2, 0x7f121b2d

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->setTileSummary(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private bindEscalationOptions(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V
    .registers 7

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileTitle:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileTitleDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text1:I

    if-nez v0, :cond_6f

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_21
    iget-object v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text2:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2e
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary1View:Landroid/widget/TextView;

    if-eqz v0, :cond_4d

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary1View:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary1View:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    if-eqz v0, :cond_b1

    iget-object v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary1:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b1

    move v0, v1

    :goto_4a
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4d
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary2View:Landroid/widget/TextView;

    if-eqz v0, :cond_6b

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary2View:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->summary2View:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    if-eqz v3, :cond_b3

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->summary2:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b3

    :goto_68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6b
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter;->bindAccountPicker(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;)V

    return-void

    :cond_6f
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text1:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-boolean v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->enabled1:Z

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    :goto_85
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21

    :cond_8e
    move v0, v1

    goto :goto_85

    :cond_90
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-boolean v0, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->enabled2:Z

    if-eqz v0, :cond_af

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    :goto_a6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e

    :cond_af
    move v0, v1

    goto :goto_a6

    :cond_b1
    move v0, v2

    goto :goto_4a

    :cond_b3
    move v1, v2

    goto :goto_68
.end method

.method private bindOfflineEscalationOptions(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;)V
    .registers 12

    const/4 v8, 0x0

    const/16 v7, 0x8

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tileTitle:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tileTitleDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tileSummary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a0800

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget-object v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->countries:Ljava/util/List;

    const v6, 0x1090009

    invoke-direct {v0, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v4}, Lcom/android/settings/overlay/SupportFeatureProvider;->getPhoneSupportCountryCodes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_50

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_50
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mOfflineSpinnerItemSelectListener:Lcom/android/settings/dashboard/SupportItemAdapter$OfflineSpinnerItemSelectListener;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tollFreePhone:Lcom/android/settings/support/SupportPhone;

    if-eqz v4, :cond_af

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tollFreePhone:Lcom/android/settings/support/SupportPhone;

    iget-object v5, v5, Lcom/android/settings/support/SupportPhone;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6e
    iget-object v4, p2, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;->tolledPhone:Lcom/android/settings/support/SupportPhone;

    if-eqz v4, :cond_b5

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v6, 0x7f121b29

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8c
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-eqz v4, :cond_ab

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a083e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_ab
    return-void

    :cond_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_af
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6e

    :cond_b5
    iget-object v4, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8c
.end method

.method private bindSignInPromoTile(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V
    .registers 5

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileTitleDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->tileSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;->text2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text1View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->text2View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mEscalationClickListener:Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindSupportTile(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;)V
    .registers 5

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->tileTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileTitleView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->tileTitleDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1d
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->tileSummaryView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->tileSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    iget-object v0, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private extractAccountNames([Landroid/accounts/Account;)[Ljava/lang/String;
    .registers 7

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_12

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    array-length v2, p1

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f121b15

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    return-object v0
.end method

.method private refreshEscalationCards()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_20

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/SupportItemAdapter;->getItemViewType(I)I

    move-result v0

    const v1, 0x7f0d02fa

    if-eq v0, v1, :cond_15

    const v1, 0x7f0d02f6

    if-ne v0, v1, :cond_21

    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addEscalationCards()V

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/SupportItemAdapter;->notifyItemChanged(I)V

    :cond_20
    return-void

    :cond_21
    const v1, 0x7f0d02f8

    if-ne v0, v1, :cond_20

    goto :goto_15
.end method

.method private tryStartDisclaimerAndSupport(I)V
    .registers 7

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/android/settings/overlay/SupportFeatureProvider;->shouldShowDisclaimerDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    iget v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lcom/android/settings/support/SupportDisclaimerDialogFragment;->newInstance(Landroid/accounts/Account;I)Lcom/android/settings/support/SupportDisclaimerDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "SupportDisclaimerDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_21
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    iget v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3, p1}, Lcom/android/settings/overlay/SupportFeatureProvider;->startSupport(Landroid/app/Activity;Landroid/accounts/Account;I)V

    return-void
.end method


# virtual methods
.method public bindAccountPicker(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;)V
    .registers 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v2, p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    invoke-direct {p0, v3}, Lcom/android/settings/dashboard/SupportItemAdapter;->extractAccountNames([Landroid/accounts/Account;)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d02f4

    invoke-direct {v0, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mOnlineSpinnerItemSelectListener:Lcom/android/settings/dashboard/SupportItemAdapter$OnlineSpinnerItemSelectListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    iget v0, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->type:I

    return v0
.end method

.method getSupportData()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/SupportItemAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;I)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;->getItemViewType()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    :pswitch_f
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->bindSupportTile(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;)V

    :goto_12
    :pswitch_12
    return-void

    :pswitch_13
    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->bindSignInPromoTile(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V

    goto :goto_12

    :pswitch_19
    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->bindEscalationOptions(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationData;)V

    goto :goto_12

    :pswitch_1f
    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/SupportItemAdapter;->bindOfflineEscalationOptions(Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;Lcom/android/settings/dashboard/SupportItemAdapter$OfflineEscalationData;)V

    goto :goto_12

    nop

    :pswitch_data_26
    .packed-switch 0x7f0d02f6
        :pswitch_19
        :pswitch_f
        :pswitch_1f
        :pswitch_f
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/SupportItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;
    .registers 6

    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onItemClicked(I)V
    .registers 8

    const/4 v5, 0x0

    if-ltz p1, :cond_3b

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3b

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    iget-object v1, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget v1, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->metricsEvent:I

    if-ltz v1, :cond_34

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget v3, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->metricsEvent:I

    new-array v4, v5, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_34
    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mActivity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "STATE_SELECTED_COUNTRY"

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedCountry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ACCOUNT_SELECTED_INDEX"

    iget v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method refreshData()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addEscalationCards()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->addMoreHelpItems()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAccounts([Landroid/accounts/Account;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    array-length v2, v2

    if-nez v2, :cond_1b

    iput v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    :goto_10
    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSupportFeatureProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/overlay/SupportFeatureProvider;->refreshOperationRules()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->refreshEscalationCards()V

    :cond_1a
    return-void

    :cond_1b
    iget-object v2, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    aget-object v2, v2, v3

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2b

    :goto_28
    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mSelectedAccountIndex:I

    goto :goto_10

    :cond_2b
    move v0, v1

    goto :goto_28
.end method

.method public setHasInternet(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter;->mHasInternet:Z

    invoke-direct {p0}, Lcom/android/settings/dashboard/SupportItemAdapter;->refreshEscalationCards()V

    :cond_9
    return-void
.end method
