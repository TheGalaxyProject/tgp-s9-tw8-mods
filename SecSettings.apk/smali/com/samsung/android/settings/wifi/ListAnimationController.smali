.class public Lcom/samsung/android/settings/wifi/ListAnimationController;
.super Ljava/lang/Object;
.source "ListAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/ListAnimationController$1;,
        Lcom/samsung/android/settings/wifi/ListAnimationController$2;,
        Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;
    }
.end annotation


# instance fields
.field private mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private final mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

.field private mAddOtherNetworkItem:Landroid/view/View;

.field private mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

.field private final mChildItemClickListner:Landroid/widget/SemExpandableListView$OnChildClickListener;

.field private mContactUsView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHeadersCount:I

.field private mInManageNetwork:Z

.field private mInPickerDialog:Z

.field private mInsetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDeletePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInsertPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mPreEmptyView:Landroid/widget/TextView;

.field private mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

.field private mSemExpListView:Landroid/widget/SemExpandableListView;

.field private mUiRestrictionLayout:Landroid/widget/LinearLayout;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/animation/SemAddDeleteListAnimator;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/android/settingslib/wifi/WifiTracker;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->addToAdapter(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->deleteFromAdapter(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$1;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mChildItemClickListner:Landroid/widget/SemExpandableListView$OnChildClickListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$2;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addToAdapter(Z)V
    .registers 9

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_61

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    sub-int v2, v4, v5

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    const-string/jumbo v5, "WifiSettings.VI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addToAdapter insertpos:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", ssid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    :goto_45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5c
    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_45

    :cond_61
    if-eqz p1, :cond_68

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    :cond_68
    return-void
.end method

.method private deleteFromAdapter(Z)V
    .registers 12

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    sub-int v4, v2, v6

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_66

    const-string/jumbo v6, "WifiSettings.VI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteFromAdapter index problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " listSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    iget v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    if-nez v6, :cond_ab

    move v6, v7

    :goto_5b
    invoke-virtual {v8, v9, v6}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->remove(Ljava/util/ArrayList;Z)V

    if-eqz p1, :cond_65

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    :cond_65
    return-void

    :cond_66
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    instance-of v6, v5, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    if-eqz v6, :cond_7

    move-object v1, v5

    check-cast v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    const-string/jumbo v8, "WifiSettings.VI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteFromAdapter index:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ", ssid:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    :goto_99
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_a6
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_99

    :cond_ab
    const/4 v6, 0x1

    goto :goto_5b
.end method

.method private getDeleteItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    if-nez v9, :cond_6

    return-object v10

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_c
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_dd

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    if-nez v3, :cond_68

    const-string/jumbo v9, "WifiSettings.VI"

    const-string/jumbo v10, "emptyview"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    if-nez v1, :cond_65

    iget v9, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    add-int v5, v0, v9

    if-eqz v3, :cond_5e

    const-string/jumbo v9, "WifiSettings.VI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ssid of deleting : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", index : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_68
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isChanged()Z

    move-result v9

    if-eqz v9, :cond_8d

    const-string/jumbo v9, "WifiSettings.VI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Accesspoint is changed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_8d
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_91
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v9

    if-nez v9, :cond_91

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const-string/jumbo v9, "WifiSettings.VI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isExist Old:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", New:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto/16 :goto_2d

    :cond_dd
    return-object v8
.end method

.method private getInsertItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    if-nez v24, :cond_b

    const/16 v24, 0x0

    return-object v24

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v3

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_31
    :goto_31
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_22c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    invoke-virtual {v14}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_58

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->isConnected()Z

    move-result v24

    if-eqz v24, :cond_a1

    :cond_58
    const/4 v11, 0x1

    :cond_59
    :goto_59
    if-nez v11, :cond_31

    const-string/jumbo v24, "WifiSettings.VI"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "not in the old list ssid of inserting : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", index : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v8, :cond_21a

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_31

    :cond_a1
    const/4 v7, 0x0

    :goto_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e1

    const-string/jumbo v24, "WifiSettings.VI"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mLastDeletePositions.contains :"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    :cond_de
    :goto_de
    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v17

    if-eqz v17, :cond_de

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v24

    if-eqz v24, :cond_108

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v24

    if-nez v24, :cond_216

    const/4 v11, 0x1

    goto/16 :goto_59

    :cond_108
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v24

    if-gez v24, :cond_216

    const-string/jumbo v24, "WifiSettings.VI"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "insert compareTo Old:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " , "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", New:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v24

    if-eqz v24, :cond_17f

    const-string/jumbo v24, "WifiSettings.VI"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "New :"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " isactive "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x3e7

    :cond_17f
    const/4 v12, 0x0

    :goto_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_59

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    move/from16 v24, v0

    add-int v23, v12, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a9

    :cond_1a6
    add-int/lit8 v12, v12, 0x1

    goto :goto_180

    :cond_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v24

    if-eqz v24, :cond_1a6

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v24

    if-nez v24, :cond_1a6

    const-string/jumbo v24, "WifiSettings.VI"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "insert isExist Old:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " , "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", New:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_59

    :cond_216
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_de

    :cond_21a
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    :cond_22c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/16 v20, 0x0

    const/4 v7, 0x0

    :goto_238
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_3ca

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v18, 0x0

    const/4 v4, 0x0

    :goto_24f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v4, v0, :cond_278

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    if-le v8, v0, :cond_278

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_24f

    :cond_278
    add-int v24, v8, v7

    sub-int v24, v24, v18

    sub-int v10, v24, v20

    if-gez v10, :cond_284

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    :cond_284
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3b3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    move/from16 v24, v0

    sub-int v6, v10, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v5

    invoke-virtual {v14}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v9

    if-eqz v5, :cond_3b3

    if-eqz v9, :cond_3b3

    const-string/jumbo v24, "WifiSettings.VI"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "contains  insertpos : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", deleteap : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", insertap : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v5}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v24

    if-eqz v24, :cond_3b3

    const/4 v12, 0x0

    :goto_2ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_3ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v24, "WifiSettings.VI"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "contains  insertpos : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", del : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", delposfromadapter : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v10, :cond_3af

    const-string/jumbo v24, "WifiSettings.VI"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "delete from mLastDeletePositions sameposition is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v24, "WifiSettings.VI"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "delete from mLastDeletePositions is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v20, v20, 0x1

    :cond_3ab
    :goto_3ab
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_238

    :cond_3af
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2ff

    :cond_3b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInsetList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3ab

    :cond_3ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v19
.end method

.method private getSortedFlatPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private setEnableRefreshLayout(Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-nez v0, :cond_e

    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "setEnableRefreshLayout - refresh layout is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-eqz p1, :cond_1d

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setEnabled(Z)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_1c
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;
    .registers 9

    const v1, 0x7f0d0213

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a08f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const v1, 0x7f0a086e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    const v1, 0x7f0a0651

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mPreEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0a01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContactUsView:Landroid/widget/TextView;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mUiRestrictionLayout:Landroid/widget/LinearLayout;

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->initController()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView;->setEmptyView(Landroid/view/View;)V

    return-object v0
.end method

.method public destroyView()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    :cond_a
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method

.method public getAvailableAPCount()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getConnectedAPCount()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getContactUsView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContactUsView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/SemExpandableListView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    return-object v0
.end method

.method public getPreEmptyView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mPreEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method public initController()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    if-eqz v1, :cond_ab

    new-instance v1, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v4}, Landroid/widget/SemExpandableListView;->getDividerHeight()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;-><init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mChildItemClickListner:Landroid/widget/SemExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    new-instance v2, Lcom/samsung/android/settings/wifi/ListAnimationController$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$3;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListView;->setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v5}, Landroid/widget/SemExpandableListView;->setItemsCanFocus(Z)V

    new-instance v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setTransitionDuration(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    if-nez v1, :cond_93

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInPickerDialog:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const v2, 0x7f0d0371

    invoke-virtual {v0, v2, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    :goto_74
    const-string/jumbo v1, "WifiSettings.VI"

    const-string/jumbo v2, "set footer divider true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v5}, Landroid/widget/SemExpandableListView;->setFooterDividersEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/wifi/ListAnimationController$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$4;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    invoke-virtual {v1, v2, v7, v5}, Landroid/widget/SemExpandableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_93
    :goto_93
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v1, :cond_9e

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mInManageNetwork:Z

    if-eqz v1, :cond_b5

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    :cond_9e
    :goto_9e
    return-void

    :cond_9f
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const v2, 0x7f0d0379

    invoke-virtual {v0, v2, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddOtherNetworkItem:Landroid/view/View;

    goto :goto_74

    :cond_ab
    const-string/jumbo v1, "WifiSettings.VI"

    const-string/jumbo v2, "TouchWiz SemExpandableListView is null, can\'t set adapter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    :cond_b5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    new-array v2, v5, [I

    const v3, 0x7f060131

    aput v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setColorSchemeResources([I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setRefreshOnce(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    new-instance v2, Lcom/samsung/android/settings/wifi/ListAnimationController$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/ListAnimationController$5;-><init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setOnRefreshListener(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;)V

    goto :goto_9e
.end method

.method public removeAll()V
    .registers 3

    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "removeAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    return-void
.end method

.method public setWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method

.method public updateEmptyView()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView(Z)V

    return-void
.end method

.method public updateEmptyView(Z)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v0, "WifiSettings.VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEmptyView - list item AvailableAPCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getAvailableAPCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ConnectedAPCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getConnectedAPCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", restriction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_54

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setVisibility(I)V

    :cond_49
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mUiRestrictionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_54
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mUiRestrictionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getAvailableAPCount()I

    move-result v0

    if-nez v0, :cond_7d

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getConnectedAPCount()I

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setVisibility(I)V

    :cond_77
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7c
    return-void

    :cond_7d
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setVisibility(I)V

    :cond_86
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7c
.end method

.method public updateWithAnimation(Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->stopToUpdateAccessPoint()V

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mRefreshLayout:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setRefreshing(Z)V

    :cond_13
    const-string/jumbo v2, "WifiSettings.VI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWithAnimation size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", updatedScanResult :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mSemExpListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListView;->getHeaderViewsCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mHeadersCount:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    if-nez v2, :cond_5f

    const-string/jumbo v2, "WifiSettings.VI"

    const-string/jumbo v3, "updateWithAnimation getAvailableAccesspointGroup is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    :cond_5e
    return-void

    :cond_5f
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getAvailableAPCount()I

    move-result v2

    if-eqz v2, :cond_69

    xor-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_9f

    :cond_69
    const-string/jumbo v2, "WifiSettings.VI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccessPointList size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->setAccessPointList(Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v2, :cond_9e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    :cond_9e
    return-void

    :cond_9f
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getAccessPointList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getDeleteItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getInsertItemPositionsFrom(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    if-eqz v2, :cond_e7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_e7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    if-eqz v2, :cond_e7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_e7

    const-string/jumbo v2, "WifiSettings.VI"

    const-string/jumbo v3, "animation is not start,"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mApListExpAdapter:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v2, :cond_e6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    :cond_e6
    return-void

    :cond_e7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    if-eqz v2, :cond_100

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    if-eqz v2, :cond_100

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastDeletePositions:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getSortedFlatPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mLastInsertPositions:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getSortedFlatPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController;->mAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_100
    return-void
.end method
