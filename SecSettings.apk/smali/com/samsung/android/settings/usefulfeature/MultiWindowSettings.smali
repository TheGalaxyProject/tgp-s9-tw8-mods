.class public Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MultiWindowSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;,
        Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;,
        Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;,
        Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

.field private static mHasSoftKey:Z

.field private static mSummary_off:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInteractionControlObserver:Landroid/database/ContentObserver;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updatePopupGestureState(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateRecentsKeyState(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateSplitScreenState(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mHasSoftKey:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mInteractionControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private updatePopupGestureState(Z)V
    .registers 7

    const v1, 0x7f121b7d

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_1a

    if-eqz p1, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "db_popup_view_shortcut"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v0, 0x1

    :goto_29
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_3a

    const v1, 0x7f121b7e

    :cond_3a
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_1a

    :cond_3e
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private updateRecentsKeyState(Z)V
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v3, :cond_1d

    if-eqz p1, :cond_1e

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    sget-object v4, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_split_screen_view_shortcut"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_62

    const/4 v1, 0x1

    :goto_2c
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_snap_window_shortcut"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_64

    const/4 v0, 0x1

    :goto_3a
    const v3, 0x7f121223

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4a

    const v3, 0x7f12121e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4a
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_66

    :goto_5e
    invoke-virtual {v3, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_62
    const/4 v1, 0x0

    goto :goto_2c

    :cond_64
    const/4 v0, 0x0

    goto :goto_3a

    :cond_66
    sget-object v2, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    goto :goto_5e
.end method

.method private updateSplitScreenState(Z)V
    .registers 7

    const v1, 0x7f121b7d

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_19

    if-eqz p1, :cond_1a

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "db_split_screen_view_shortcut"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v0, 0x1

    :goto_28
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_3a

    const v1, 0x7f121b7e

    :cond_3a
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_19

    :cond_3e
    const/4 v0, 0x0

    goto :goto_28
.end method


# virtual methods
.method public changeColor(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080105

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1de2

    sput v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

    sget v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 14

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f0d012c

    invoke-virtual {v3, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0a0610

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v7, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v6, 0x7f0a063f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getCount()I

    move-result v5

    const/4 v2, 0x0

    :goto_5e
    if-ge v2, v5, :cond_99

    move v0, v2

    const v6, 0x7f0d0076

    invoke-virtual {v3, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v6, 0x7f121423

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$6;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$6;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_99
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_af

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f080106

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_af
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ne v6, v10, :cond_be

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_be
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_cd

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_cd
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->setHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    const-string/jumbo v1, "MultiWindowSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged() : position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_40

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f150092

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "recents_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    const-string/jumbo v0, "pop_up_gesture"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v0, "split_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mHasSoftKey:Z

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mHasSoftKey:Z

    if-eqz v0, :cond_93

    const v0, 0x7f121225

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    const v1, 0x7f12121b

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setTitle(I)V

    :goto_72
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.multiwindow.snap_view"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string/jumbo v0, "split_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->removePreference(Ljava/lang/String;)V

    :goto_87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_93
    const v0, 0x7f121224

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    const v1, 0x7f12121c

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setTitle(I)V

    goto :goto_72

    :cond_a5
    const-string/jumbo v0, "recents_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_87
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    const v2, 0x7f120cf8

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_17
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "multi_window"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_18
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_1b} :catch_20

    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1b
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MultiWindows"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 16

    const v8, 0x7f121b7e

    const v9, 0x7f121b7d

    const/16 v10, 0x3e8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v5, "MultiWindowSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onPreferenceChange :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v5, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_47

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_47
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "db_popup_view_shortcut"

    if-eqz v4, :cond_89

    move v5, v6

    :goto_59
    invoke-static {v11, v12, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_8b

    move v5, v8

    :goto_66
    invoke-virtual {v11, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b03ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_81

    move v7, v10

    :cond_81
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v8, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_88
    :goto_88
    return v6

    :cond_89
    move v5, v7

    goto :goto_59

    :cond_8b
    move v5, v9

    goto :goto_66

    :cond_8d
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "db_split_screen_view_shortcut"

    if-eqz v4, :cond_9f

    move v7, v6

    :cond_9f
    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_af

    :goto_ab
    invoke-virtual {v5, v8}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_88

    :cond_af
    move v8, v9

    goto :goto_ab

    :cond_b1
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "db_snap_window_shortcut"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_115

    const/4 v2, 0x1

    :goto_c7
    const v5, 0x7f121223

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_d7

    const v5, 0x7f12121e

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_d7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "db_split_screen_view_shortcut"

    if-eqz v4, :cond_117

    move v5, v6

    :goto_e1
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mRecentsKey:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v4, :cond_119

    :goto_f2
    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b04cf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_11c

    :goto_10c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v8, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_88

    :cond_115
    const/4 v2, 0x0

    goto :goto_c7

    :cond_117
    move v5, v7

    goto :goto_e1

    :cond_119
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSummary_off:Ljava/lang/String;

    goto :goto_f2

    :cond_11c
    move v10, v7

    goto :goto_10c
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_11
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .registers 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.software.freeform_window_management"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_32
    const-string/jumbo v1, "pop_up_gesture"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->removePreference(Ljava/lang/String;)V

    :cond_38
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_90

    :cond_4a
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updatePopupGestureState(Z)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateRecentsKeyState(Z)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateSplitScreenState(Z)V

    :goto_53
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "MultiWindows"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_90
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updatePopupGestureState(Z)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateRecentsKeyState(Z)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->updateSplitScreenState(Z)V

    goto :goto_53
.end method
