.class public Lcom/android/settings/dashboard/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$IconCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;",
        "Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;"
    }
.end annotation


# static fields
.field private static SUGGESTION_MODE_COLLAPSED:I

.field private static SUGGESTION_MODE_DEFAULT:I

.field private static SUGGESTION_MODE_EXPANDED:I


# instance fields
.field private final mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

.field private final mContext:Landroid/content/Context;

.field mDashboardData:Lcom/android/settings/dashboard/DashboardData;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private mSelectedTilePosition:I

.field private final mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

.field private final mSuggestionsShownLogged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/dashboard/DashboardAdapter;)Lcom/android/settingslib/SuggestionParser;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/DashboardAdapter;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->isSearchVisibleInSubSettings(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->showGoogleSettingsDialog(Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_DEFAULT:I

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    const/4 v0, 0x2

    sput v0, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x3

    new-array v2, v4, [I

    sget v4, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_EXPANDED:I

    aput v4, v2, v5

    sget v4, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    aput v4, v2, v6

    sget v4, Lcom/android/settings/dashboard/DashboardAdapter;->SUGGESTION_MODE_COLLAPSED:I

    aput v4, v2, v7

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v1, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {v1, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    new-instance v4, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    invoke-direct {v4, p1}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    invoke-virtual {p0, v6}, Lcom/android/settings/dashboard/DashboardAdapter;->setHasStableIds(Z)V

    if-eqz p2, :cond_87

    const-string/jumbo v4, "category_list"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v4, "suggestion_mode"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v5

    const-string/jumbo v4, "suggestion_mode1"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v6

    const-string/jumbo v4, "suggestion_mode2"

    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v7

    const-string/jumbo v4, "suggestions_shown_logged"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    :goto_69
    new-instance v4, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v4}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/android/settings/dashboard/DashboardData$Builder;->setSuggestions(Ljava/util/ArrayList;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/dashboard/DashboardData$Builder;->setCategories(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/settings/dashboard/DashboardData$Builder;->setSuggestionMode([I)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/settings/dashboard/DashboardData$Builder;->setContext(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    return-void

    :cond_87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    goto :goto_69
.end method

.method private isSearchVisibleInSubSettings(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "com.android.settings.applications.ManageApplications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "com.samsung.android.settings.notification.BlockNotificationList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "com.samsung.android.settings.easymode.EasyModeApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const/4 v0, 0x0

    return v0

    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method private needShowGoogleSettingsDialog(Landroid/content/Context;)Z
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v2, "dashboard_adapter"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "google_settings_show_dialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    return v3

    :cond_12
    invoke-static {p1}, Lcom/android/settings/Utils;->isCHNSimInserted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    return v2

    :cond_1a
    return v3
.end method

.method private onBindCategory(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .registers 5

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V
    .registers 14

    :try_start_0
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    if-eq v8, v9, :cond_17

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    iget-object v10, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v9, v10}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_cb

    :cond_17
    :goto_17
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v9, "com.android.settings.tileid"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "font_size"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v8, 0x6

    if-le v2, v8, :cond_54

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0125

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v4, v8

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    mul-float v9, v4, v3

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_54
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v8

    if-nez v8, :cond_62

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e5

    :cond_62
    iget-object v8, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d1

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_d1

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    if-eqz v8, :cond_85

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_85
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    if-eqz v8, :cond_8f

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_8f
    :goto_8f
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    if-eqz v8, :cond_ca

    const-string/jumbo v8, "maintenance_settings"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_132

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->getSmartManagerBadgeCount(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    int-to-long v8, v0

    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    if-lez v0, :cond_12a

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_12a

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ca
    :goto_ca
    return-void

    :catch_cb
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_17

    :cond_d1
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8f

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    if-eqz v8, :cond_8f

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8f

    :cond_e5
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8f

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    if-eqz v8, :cond_10d

    iget-object v8, p2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    if-eqz v8, :cond_122

    iget-object v8, p2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    const-string/jumbo v9, "SEC_SETTINGS_ONLY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_122

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10d
    :goto_10d
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_8f

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    if-eqz v8, :cond_8f

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8f

    :cond_122
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10d

    :cond_12a
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ca

    :cond_132
    const-string/jumbo v8, "system_update"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_174

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    int-to-long v8, v0

    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    if-lez v0, :cond_16b

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_16b

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ca

    :cond_16b
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ca

    :cond_174
    const-string/jumbo v8, "about_settings"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1cd

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isSupportRootBadge(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1cd

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "rootbadge_display"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    if-gtz v0, :cond_1a9

    invoke-static {}, Lcom/android/settings/Utils;->checkRootingCondition()Z

    move-result v8

    if-eqz v8, :cond_1c4

    :cond_1a9
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1c4

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ca

    :cond_1c4
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ca

    :cond_1cd
    const-string/jumbo v8, "general_device_settings"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_215

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isAvailableNewTimeZone(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_20a

    const/4 v0, 0x1

    :goto_1df
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    if-lez v0, :cond_20c

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_20c

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ca

    :cond_20a
    const/4 v0, 0x0

    goto :goto_1df

    :cond_20c
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ca

    :cond_215
    iget-object v8, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ca
.end method

.method private showGoogleSettingsDialog(Lcom/android/settingslib/drawer/Tile;)V
    .registers 9

    move-object v2, p1

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->needShowGoogleSettingsDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0366

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a06e1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v4, 0x7f0a051a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120caa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dashboard/DashboardAdapter$8;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$8;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Landroid/widget/CheckBox;Lcom/android/settingslib/drawer/Tile;)V

    const v6, 0x7f120608

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dashboard/DashboardAdapter$9;

    invoke-direct {v5, p0}, Lcom/android/settings/dashboard/DashboardAdapter$9;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    const v6, 0x7f120601

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dashboard/DashboardAdapter$10;

    invoke-direct {v5, p0}, Lcom/android/settings/dashboard/DashboardAdapter$10;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_5e
    return-void

    :cond_5f
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-interface {v5, v4, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_5e
.end method


# virtual methods
.method public getItem(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityById(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardData;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardData;->getItemIdByPosition(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardData;->getItemTypeByPosition(I)I

    move-result v0

    return v0
.end method

.method public getSelectedTilePosition()I
    .registers 2

    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    return v0
.end method

.method public notifySummaryChanged(Lcom/android/settingslib/drawer/Tile;)V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/DashboardData;->getPositionByTile(Lcom/android/settingslib/drawer/Tile;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardData;->getItemTypeByPosition(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_16
    return-void
.end method

.method onBindSuggestionHeader(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Ljava/util/List;I)V
    .registers 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;I)V"
        }
    .end annotation

    const v4, 0x7f0a0831

    const/4 v3, 0x0

    if-nez p3, :cond_3e

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    if-eqz v1, :cond_2c

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f121b03

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f121b02

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dashboard/DashboardAdapter$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/dashboard/DashboardAdapter$3;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2c
    :goto_2c
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0830

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dashboard/DashboardAdapter$6;

    invoke-direct {v3, p0, p3}, Lcom/android/settings/dashboard/DashboardAdapter$6;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3e
    const/4 v2, 0x1

    if-ne p3, v2, :cond_68

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    if-eqz v1, :cond_2c

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f121a13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f120c59

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dashboard/DashboardAdapter$4;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/dashboard/DashboardAdapter$4;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2c

    :cond_68
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    if-eqz v1, :cond_2c

    iget-object v2, v1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.require_badge_db"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "badge_for_dm_battery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f121b00

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f121aff

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_92
    :goto_92
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dashboard/DashboardAdapter$5;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/dashboard/DashboardAdapter$5;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2c

    :cond_a1
    const-string/jumbo v2, "badge_for_dm_security"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f12018d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f121afe

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_92

    :cond_bb
    const-string/jumbo v2, "badge_for_dm_scoreboard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f120807

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_db

    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f121b05

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_92

    :cond_db
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f121b04

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_92
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .registers 10

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v4, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemTypeByPosition(I)I

    move-result v3

    const-string/jumbo v4, "DashboardAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBindViewHolder type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v3, :sswitch_data_b4

    :cond_23
    :goto_23
    return-void

    :sswitch_24
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v4, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {p0, p1, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindCategory(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V

    goto :goto_23

    :sswitch_30
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v4, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, p1, v2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/android/settings/dashboard/DashboardAdapter$1;

    invoke-direct {v5, p0, v2, p2}, Lcom/android/settings/dashboard/DashboardAdapter$1;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_23

    iget v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    if-ne p2, v4, :cond_5f

    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v5, 0x7f08012c

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_23

    :cond_5f
    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0805fc

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_23

    :sswitch_68
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v4, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemIdByPosition(I)I

    move-result v0

    const-string/jumbo v4, "DashboardAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "header id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v4, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    add-int/lit16 v5, v0, -0x578

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindSuggestionHeader(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Ljava/util/List;I)V

    goto :goto_23

    :sswitch_96
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v4, p2}, Lcom/android/settings/dashboard/DashboardData;->getItemEntityByPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dashboard/DashboardAdapter$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/dashboard/DashboardAdapter$2;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_23

    :sswitch_data_b4
    .sparse-switch
        0x7f0d00a9 -> :sswitch_24
        0x7f0d00af -> :sswitch_30
        0x7f0d02f1 -> :sswitch_68
        0x7f0d02f3 -> :sswitch_96
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .registers 6

    new-instance v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData;->getCategories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string/jumbo v1, "category_list"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_13
    const-string/jumbo v1, "suggestion_mode"

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/DashboardData;->getSuggestionMode(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "suggestion_mode1"

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/DashboardData;->getSuggestionMode(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "suggestion_mode2"

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/DashboardData;->getSuggestionMode(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "suggestions_shown_logged"

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setCategoriesAndSuggestions(Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;)V"
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    new-instance v7, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v7}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>()V

    invoke-virtual {v7, p2}, Lcom/android/settings/dashboard/DashboardData$Builder;->setSuggestions(Ljava/util/ArrayList;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setCategories(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/settings/dashboard/DashboardData$Builder;->setContext(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    :goto_20
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_74

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {v7, v0}, Lcom/android/settings/dashboard/DashboardData;->getSuggestionMode(I)I

    move-result v7

    packed-switch v7, :pswitch_data_76

    :goto_36
    :pswitch_36
    if-eqz v3, :cond_71

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v7, v8, v4}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-array v9, v11, [Landroid/util/Pair;

    const/16 v10, 0x180

    invoke-virtual {v7, v8, v10, v1, v9}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionsShownLogged:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :pswitch_61
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v6, v11, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_36

    :pswitch_6f
    move-object v3, v6

    goto :goto_36

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_61
        :pswitch_36
        :pswitch_6f
    .end packed-switch
.end method

.method public setCategory(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Builder;

    invoke-direct {v1}, Lcom/android/settings/dashboard/DashboardData$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->setCategories(Ljava/util/List;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardData$Builder;->setContext(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardData$Builder;->build()Lcom/android/settings/dashboard/DashboardData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardData:Lcom/android/settings/dashboard/DashboardData;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedTilePosition(I)V
    .registers 3

    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyItemChanged(I)V

    iput p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setSuggestionParser(Lcom/android/settingslib/SuggestionParser;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    return-void
.end method

.method public showOnlineHelpDialog(Lcom/android/settingslib/drawer/Tile;)V
    .registers 14

    const/4 v11, 0x0

    move-object v4, p1

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d0366

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0a06e1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v7, 0x7f0a051a

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121289

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f121da4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "dashboard_adapter"

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v7, "onlinehelp_show_dialog"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9f

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1206e0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/dashboard/DashboardAdapter$11;

    invoke-direct {v8, p0, v0, v3, p1}, Lcom/android/settings/dashboard/DashboardAdapter$11;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Lcom/android/settingslib/drawer/Tile;)V

    const v9, 0x7f120608

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/dashboard/DashboardAdapter$12;

    invoke-direct {v8, p0}, Lcom/android/settings/dashboard/DashboardAdapter$12;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    const v9, 0x7f12055d

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/dashboard/DashboardAdapter$13;

    invoke-direct {v8, p0}, Lcom/android/settings/dashboard/DashboardAdapter$13;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_9e
    return-void

    :cond_9f
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-interface {v8, v7, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_9e
.end method
