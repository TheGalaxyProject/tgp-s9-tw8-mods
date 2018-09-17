.class public Lcom/android/settings/SettingsActivity;
.super Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Lcom/samsung/android/settings/wifi/ButtonImageBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$1;,
        Lcom/android/settings/SettingsActivity$2;,
        Lcom/android/settings/SettingsActivity$AssistantReceiver;,
        Lcom/android/settings/SettingsActivity$AvatarLoaderListener;,
        Lcom/android/settings/SettingsActivity$ProfileImageLoader;,
        Lcom/android/settings/SettingsActivity$SearchInputFilter;,
        Lcom/android/settings/SettingsActivity$onEditButtonClicked;,
        Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;
    }
.end annotation


# static fields
.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field static final SAVE_KEY_SHOW_HOME_AS_UP:Ljava/lang/String; = ":settings:show_home_as_up"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SAVE_KEY_SHOW_SEARCH:Ljava/lang/String; = ":settings:show_search"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static SEARCH_VIEW_TOUCH_AREA:I

.field private static mContext:Landroid/content/Context;

.field private static mFpContext:Landroid/content/Context;

.field private static mSplitBarMovedLeftWeight:F

.field private static mUserUpdateSplit:Z


# instance fields
.field private bEasymode:Z

.field private bFromRelativeLink:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionBar:Landroid/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mCurrentSuggestion:Landroid/content/ComponentName;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field mDisplayHomeAsUpEnabled:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mDisplaySearch:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsSearchViewLongClicked:Z

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mKnoxCustomIsProKioskMode:Z

.field private mKnoxCustomProKioskSettingsItems:I

.field private mKnoxCustomSettingsState:I

.field private mLeftPane:Landroid/widget/LinearLayout;

.field private mLeftPaneToolbar:Landroid/widget/Toolbar;

.field private mMainScreenSeachInfo:Landroid/app/SearchableInfo;

.field private mMainScreenSearchLayout:Landroid/view/View;

.field private mMainScreenSearchView:Landroid/widget/SearchView;

.field private mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNextButtonArea:Landroid/widget/LinearLayout;

.field private mNextButtonArrow:Landroid/widget/ImageView;

.field private mNextButtonText:Landroid/widget/TextView;

.field private mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

.field private mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

.field private mPreSettingUi:I

.field private mProfileContentObserver:Landroid/database/ContentObserver;

.field private mProfileImage:Landroid/widget/QuickContactBadge;

.field private mProfileImageLoader:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultIntentData:Landroid/content/Intent;

.field private mRightPane:Landroid/widget/LinearLayout;

.field private mRightPaneToolbar:Landroid/widget/Toolbar;

.field private mSearchFragmentInfo:Landroid/app/SearchableInfo;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSettingsUIObserver:Landroid/database/ContentObserver;

.field private mSinglePane:Z

.field private mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

.field private mSplitBarView:Landroid/view/View;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTopLevelTileId:Ljava/lang/String;

.field private mUpdateLayoutBySplitChange:Z


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/android/settings/SettingsActivity;->SEARCH_VIEW_TOUCH_AREA:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/SettingsActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/SettingsActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mUpdateLayoutBySplitChange:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/SettingsActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsSearchViewLongClicked:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/SettingsActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/SettingsActivity;)Landroid/widget/SearchView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/SettingsActivity;)Lcom/android/settings/SettingsActivity$ProfileImageLoader;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileImageLoader:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/SettingsActivity;)Landroid/widget/SearchView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic -get9()F
    .registers 1

    sget v0, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/SettingsActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/SettingsActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mIsSearchViewLongClicked:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/SettingsActivity;Landroid/app/SearchableInfo;)Landroid/app/SearchableInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSeachInfo:Landroid/app/SearchableInfo;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settings/SettingsActivity;Landroid/app/SearchableInfo;)Landroid/app/SearchableInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentInfo:Landroid/app/SearchableInfo;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settings/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(F)F
    .registers 1

    sput p0, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    return p0
.end method

.method static synthetic -set6(Lcom/android/settings/SettingsActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mUpdateLayoutBySplitChange:Z

    return p1
.end method

.method static synthetic -set7(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/settings/SettingsActivity;->mUserUpdateSplit:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->clearMainSearchViewFocus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/SettingsActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->initMainScreenSearchView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->initProfileImage()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->loadProfileImage()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/SettingsActivity;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->setProfileImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/SettingsActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    sput-object v0, Lcom/android/settings/SettingsActivity;->mFpContext:Landroid/content/Context;

    sput-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    sput-boolean v2, Lcom/android/settings/SettingsActivity;->mUserUpdateSplit:Z

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    const/16 v0, 0x69

    sput v0, Lcom/android/settings/SettingsActivity;->SEARCH_VIEW_TOUCH_AREA:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    iput v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    iput v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mUpdateLayoutBySplitChange:Z

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsActivity;->mPreSettingUi:I

    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    return-void
.end method

.method private clearMainSearchViewFocus()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_11
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_22
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    :cond_3f
    return-void
.end method

.method private doUpdateTilesList()V
    .registers 57

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v52, "android.hardware.wifi"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v45

    const/16 v22, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_41

    const/16 v52, 0x1

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v52

    if-nez v52, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v52, v0

    if-eqz v52, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v52, v0

    and-int/lit8 v52, v52, 0x1

    if-nez v52, :cond_41

    :cond_3d
    const/16 v45, 0x0

    const/16 v22, 0x1

    :cond_41
    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v22, :cond_73c

    const/16 v52, 0x1

    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v45

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    const-string/jumbo v52, "android.hardware.bluetooth"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v33

    const/16 v19, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_92

    const/16 v52, 0x2

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v52

    if-nez v52, :cond_8e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v52, v0

    if-eqz v52, :cond_92

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v52, v0

    and-int/lit8 v52, v52, 0x2

    if-nez v52, :cond_92

    :cond_8e
    const/16 v33, 0x0

    const/16 v19, 0x1

    :cond_92
    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_740

    const/16 v52, 0x1

    :goto_a7
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v33

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v53

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v53

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    move/from16 v53, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v52

    if-eqz v52, :cond_744

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v52

    xor-int/lit8 v44, v52, 0x1

    :goto_120
    const/16 v21, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_134

    const/16 v52, 0x80

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v52

    if-eqz v52, :cond_134

    const/16 v44, 0x0

    const/16 v21, 0x1

    :cond_134
    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v21, :cond_748

    const/16 v52, 0x1

    :goto_149
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v44

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$NetworkDashboardActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    const/16 v39, 0x1

    const-string/jumbo v52, "android.hardware.nfc"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_1d3

    invoke-static {}, Lcom/android/settings/Utils;->isFactoryBinary()Z

    move-result v52

    xor-int/lit8 v52, v52, 0x1

    if-eqz v52, :cond_1d3

    const/16 v39, 0x0

    :cond_1d3
    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$NfcSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v39, :cond_74c

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v52

    xor-int/lit8 v52, v52, 0x1

    :goto_1ec
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v52

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$NfcOsaifukeitaiSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v39, :cond_750

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v52

    :goto_20e
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v52

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v52, "android.hardware.nfc"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_758

    const-string/jumbo v52, "android.hardware.nfc.hce"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_758

    if-eqz v4, :cond_758

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v52

    if-nez v52, :cond_754

    const/16 v52, 0x1

    :goto_252
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v52

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v53, "android.software.print"

    move-object/from16 v0, v32

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    const/16 v52, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v14

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$HelpActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v14, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    move/from16 v53, v0

    xor-int/lit8 v53, v53, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    const-string/jumbo v52, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/ConnectivityManager;

    invoke-virtual/range {v26 .. v26}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v26}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v26 .. v26}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v52, v0

    if-eqz v52, :cond_75c

    const/16 v49, 0x1

    :goto_2d2
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v52, v0

    if-eqz v52, :cond_760

    const/16 v51, 0x1

    :goto_2db
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v52, v0

    if-eqz v52, :cond_764

    const/4 v6, 0x1

    :goto_2e3
    const-string/jumbo v52, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/UserManager;

    const-string/jumbo v52, "no_config_tethering"

    move-object/from16 v0, v27

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v24

    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v49, :cond_767

    if-nez v51, :cond_767

    if-nez v6, :cond_767

    move/from16 v52, v24

    :goto_314
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v52

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$DockSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v53

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->updateEasyModeTitle()V

    const/16 v36, 0x1

    const-string/jumbo v52, "com.sec.feature.fingerprint_manager_service"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_363

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_363

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v52

    if-nez v52, :cond_363

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isUCMKeyguardEnabled()Z

    move-result v52

    if-eqz v52, :cond_365

    :cond_363
    const/16 v36, 0x0

    :cond_365
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/fingerprint/FingerprintEntry;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v36

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$TRoamingSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_76b

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v52

    :goto_39c
    xor-int/lit8 v52, v52, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v52

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    const/16 v34, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v52

    if-eqz v52, :cond_3bd

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_3bd

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v52

    if-eqz v52, :cond_3bf

    :cond_3bd
    const/16 v34, 0x0

    :cond_3bf
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v34

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    const/16 v37, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v52

    if-eqz v52, :cond_3ef

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_3ef

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v52

    if-eqz v52, :cond_3f1

    :cond_3ef
    const/16 v37, 0x0

    :cond_3f1
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v37

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    const/16 v42, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v52

    if-eqz v52, :cond_421

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_421

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v52

    if-eqz v52, :cond_423

    :cond_421
    const/16 v42, 0x0

    :cond_423
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/samsung/android/settings/smartscan/SmartScanEntry;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v42

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v53, 0x10

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v53, 0x200

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_563

    const/16 v38, 0x1

    const/16 v52, 0x400

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v52

    if-nez v52, :cond_4ad

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    move/from16 v52, v0

    if-eqz v52, :cond_4af

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    move/from16 v52, v0

    and-int/lit8 v52, v52, 0x4

    if-nez v52, :cond_4af

    :cond_4ad
    const/16 v38, 0x0

    :cond_4af
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v53, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v38

    move/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_76f

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$AirplaneModeSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v53, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    :goto_4f1
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$LanguageAndInputSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v53, 0x20

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$LocalePickerActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v53, 0x20

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$ApplicationsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v53, 0x200

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    :cond_563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v52, v0

    const-string/jumbo v53, "show"

    sget-object v54, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v55, "eng"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    invoke-interface/range {v52 .. v54}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    if-eqz v52, :cond_797

    const-string/jumbo v52, "no_debugging_features"

    move-object/from16 v0, v48

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v52

    xor-int/lit8 v35, v52, 0x1

    :goto_588
    const/16 v20, 0x0

    const/16 v52, 0x100

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v52

    if-eqz v52, :cond_596

    const/16 v35, 0x0

    const/16 v20, 0x1

    :cond_596
    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$DevelopmentSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_79b

    const/16 v52, 0x1

    :goto_5ab
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v35

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    const/16 v41, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v52

    if-eqz v52, :cond_5c8

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_5c8

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v52

    :cond_5c8
    const/16 v41, 0x0

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$PersonalPageSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v41

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/backup/BackupSettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v17, :cond_79f

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isCarrierDemoUser(Landroid/content/Context;)Z

    move-result v52

    :goto_5fd
    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v52

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAvailable(Landroid/content/Context;)Z

    move-result v53

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isUsingVZWFota(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_7a3

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isUsingATTFota(Landroid/content/Context;)Z

    move-result v23

    :goto_634
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$SoftwareUpdateSettingActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 v53, v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v52

    const-string/jumbo v53, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v52 .. v53}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_6d8

    const/16 v43, 0x1

    const-string/jumbo v52, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    move-result v46

    const-string/jumbo v52, "Settings"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, " tetherSummary : "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v52, -0x1

    move/from16 v0, v46

    move/from16 v1, v52

    if-ne v0, v1, :cond_6ba

    const/16 v43, 0x0

    const-string/jumbo v52, "Settings"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "sprint chameleon tethering showTile : "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6ba
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$SprTetherSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v43, :cond_7a7

    :goto_6cd
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v24

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    :cond_6d8
    xor-int/lit8 v52, v17, 0x1

    if-eqz v52, :cond_7ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-object/from16 v52, v0

    invoke-interface/range {v52 .. v52}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    :try_start_6e7
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6eb
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_7ab

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v8}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v47

    const/4 v15, 0x0

    :goto_6fc
    move/from16 v0, v47

    if-ge v15, v0, :cond_6eb

    invoke-virtual {v8, v15}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v52

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    sget-object v52, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_739

    xor-int/lit8 v52, v18, 0x1

    if-eqz v52, :cond_739

    const/16 v52, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v17

    invoke-direct {v0, v11, v1, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V
    :try_end_739
    .catchall {:try_start_6e7 .. :try_end_739} :catchall_8b7

    :cond_739
    add-int/lit8 v15, v15, 0x1

    goto :goto_6fc

    :cond_73c
    move/from16 v52, v17

    goto/16 :goto_56

    :cond_740
    move/from16 v52, v17

    goto/16 :goto_a7

    :cond_744
    const/16 v44, 0x0

    goto/16 :goto_120

    :cond_748
    move/from16 v52, v17

    goto/16 :goto_149

    :cond_74c
    const/16 v52, 0x0

    goto/16 :goto_1ec

    :cond_750
    const/16 v52, 0x0

    goto/16 :goto_20e

    :cond_754
    const/16 v52, 0x0

    goto/16 :goto_252

    :cond_758
    const/16 v52, 0x0

    goto/16 :goto_252

    :cond_75c
    const/16 v49, 0x0

    goto/16 :goto_2d2

    :cond_760
    const/16 v51, 0x0

    goto/16 :goto_2db

    :cond_764
    const/4 v6, 0x0

    goto/16 :goto_2e3

    :cond_767
    const/16 v52, 0x1

    goto/16 :goto_314

    :cond_76b
    const/16 v52, 0x1

    goto/16 :goto_39c

    :cond_76f
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$AirplaneModeSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v53, 0x4

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    const/16 v54, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    goto/16 :goto_4f1

    :cond_797
    const/16 v35, 0x0

    goto/16 :goto_588

    :cond_79b
    move/from16 v52, v17

    goto/16 :goto_5ab

    :cond_79f
    const/16 v52, 0x1

    goto/16 :goto_5fd

    :cond_7a3
    const/16 v23, 0x1

    goto/16 :goto_634

    :cond_7a7
    const/16 v24, 0x1

    goto/16 :goto_6cd

    :cond_7ab
    monitor-exit v7

    :cond_7ac
    const/16 v40, 0x1

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_7c4

    const/16 v52, 0x40

    invoke-static/range {v52 .. v52}, Lcom/android/settings/Utils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v52

    if-nez v52, :cond_7c2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v52

    if-eqz v52, :cond_7c4

    :cond_7c2
    const/16 v40, 0x0

    :cond_7c4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f120620

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v50

    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$PrivacySettingsActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v40, :cond_8ba

    move/from16 v52, v50

    :goto_7e8
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v52

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    const/4 v13, 0x0

    if-nez v50, :cond_814

    const/16 v52, 0x0

    :try_start_7f8
    move/from16 v0, v52

    invoke-static {v5, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v52

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->isEmpty()Z
    :try_end_811
    .catch Ljava/net/URISyntaxException; {:try_start_7f8 .. :try_end_811} :catch_8be

    move-result v52

    xor-int/lit8 v13, v52, 0x1

    :cond_814
    :goto_814
    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/backup/BackupSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v17

    invoke-direct {v0, v1, v13, v2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v53, Landroid/content/ComponentName;

    const-class v52, Lcom/android/settings/Settings$PenSettingsMenuActivity;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v52

    if-nez v52, :cond_8ce

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v52

    :goto_849
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v52

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$CloudAccountSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v53, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v54

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v52

    if-eqz v52, :cond_8b3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v52

    xor-int/lit8 v52, v52, 0x1

    if-eqz v52, :cond_8b3

    new-instance v52, Landroid/content/ComponentName;

    const-class v53, Lcom/android/settings/Settings$WirelessSettingsActivity;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isContainerOnlyModeFromOwner(Landroid/content/Context;)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    :cond_8b3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->updateCategories()V

    return-void

    :catchall_8b7
    move-exception v52

    monitor-exit v7

    throw v52

    :cond_8ba
    const/16 v52, 0x0

    goto/16 :goto_7e8

    :catch_8be
    move-exception v12

    const-string/jumbo v52, "Settings"

    const-string/jumbo v53, "Invalid backup intent URI!"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    invoke-static {v0, v1, v12}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_814

    :cond_8ce
    const/16 v52, 0x1

    goto/16 :goto_849
.end method

.method private getMetaData()V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_15

    :cond_14
    return-void

    :cond_15
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID_VZW"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    :cond_44
    :goto_44
    invoke-static {p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.tileid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    :cond_55
    :goto_55
    return-void

    :cond_56
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_44

    :catch_62
    move-exception v1

    const-string/jumbo v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55
.end method

.method private getMetricsTag()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_26
    const-string/jumbo v1, "com.android.settings."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string/jumbo v1, "com.android.settings."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_39
    return-object v0
.end method

.method private getProfileContentObserver()Landroid/database/ContentObserver;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/settings/SettingsActivity$21;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsActivity$21;-><init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileContentObserver:Landroid/database/ContentObserver;

    :cond_10
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private getResIdForFactoryResetProtectionWarningMessage(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;)I
    .registers 5

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    const v2, 0x7f121751

    :goto_f
    return v2

    :cond_10
    if-eqz v0, :cond_16

    const v2, 0x7f121750

    goto :goto_f

    :cond_16
    const v2, 0x7f121752

    goto :goto_f
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .registers 4

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const v1, 0x7f121caa

    :goto_11
    return v1

    :cond_12
    const v1, 0x7f121ca9

    goto :goto_11
.end method

.method private getSavedSplitbarLeftWeight(F)F
    .registers 6

    const-string/jumbo v2, "com.android.settings_preferences"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "split_bar_left_wegigh"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getSettingsActivityContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/settings/SettingsActivity;->mFpContext:Landroid/content/Context;

    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v1

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return-object v2

    :cond_1f
    const-string/jumbo v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string/jumbo v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string/jumbo v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_3a
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_40
    return-object v0
.end method

.method private inflateMainScreenSearchView()V
    .registers 5

    const-string/jumbo v1, "inner inflateMainScreenSearchView"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string/jumbo v1, "Settings"

    const-string/jumbo v2, "UPSM enabled main screen Search View disable"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void

    :cond_19
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void

    :cond_21
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_4e

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-direct {v0, p0}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/SettingsActivity$19;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$19;-><init>(Lcom/android/settings/SettingsActivity;)V

    const v2, 0x7f0d02c0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    :cond_4e
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void
.end method

.method private initMainScreenSearchView(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    const v3, 0x7f0a0796

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12181d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    const-string/jumbo v2, "clearMainSearchViewFocus"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->clearMainSearchViewFocus()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v2, "setVoiceSearch"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/settings/SettingsActivity;->setVoiceSearch(Z)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    const-string/jumbo v3, "disableEmoticonInput=true"

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/SettingsActivity$23;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$23;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/SettingsActivity$24;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$24;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/settings/SettingsActivity$25;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$25;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method private initProfileImage()V
    .registers 5

    const/4 v2, 0x0

    const v1, 0x7f0a067c

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileImage:Landroid/widget/QuickContactBadge;

    new-instance v0, Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/SettingsActivity$ProfileImageLoader;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsActivity$ProfileImageLoader;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileImageLoader:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileImage:Landroid/widget/QuickContactBadge;

    new-instance v1, Lcom/android/settings/SettingsActivity$20;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$20;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_3f

    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "mProfileContentObserver register"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getProfileContentObserver()Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3f
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->loadProfileImage()V

    return-void
.end method

.method private initSearchableInfo()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/SettingsActivity$26;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$26;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initializeLayoutBySplitBar()V
    .registers 8

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v5, :cond_3b

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v4, v0, v2

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->getSavedSplitbarLeftWeight(F)F

    move-result v5

    sput v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    sget v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3b

    sget v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sget v5, Lcom/android/settings/SettingsActivity;->mSplitBarMovedLeftWeight:F

    sub-float v5, v4, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3b
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    if-nez v5, :cond_46

    new-instance v5, Lcom/android/settings/SettingsActivity$17;

    invoke-direct {v5, p0}, Lcom/android/settings/SettingsActivity$17;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    :cond_46
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    new-instance v6, Lcom/android/settings/SettingsActivity$18;

    invoke-direct {v6, p0}, Lcom/android/settings/SettingsActivity$18;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5b
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    const/4 v1, 0x0

    :goto_9
    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    return v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    return v3
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isUCMKeyguardEnabled()Z
    .registers 7

    const/4 v1, 0x0

    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v3

    if-nez v3, :cond_18

    const-string/jumbo v4, "Settings"

    const-string/jumbo v5, "Failed to get UCM Service"

    invoke-static {v4, v5}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_18
    :try_start_18
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string/jumbo v4, "none"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_34
    return v1

    :cond_35
    const-string/jumbo v4, "Settings"

    const-string/jumbo v5, "UCM Keyguard is enabled"

    invoke-static {v4, v5}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3e} :catch_40

    const/4 v1, 0x1

    :goto_3f
    return v1

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3f
.end method

.method private loadProfileImage()V
    .registers 3

    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "loadProfileImage"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileImageLoader:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileImageLoader:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    new-instance v1, Lcom/android/settings/SettingsActivity$22;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$22;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0, v1}, Lcom/android/settings/SettingsActivity$ProfileImageLoader;->-wrap0(Lcom/android/settings/SettingsActivity$ProfileImageLoader;Lcom/android/settings/SettingsActivity$AvatarLoaderListener;)V

    :cond_17
    return-void
.end method

.method private revertToInitialFragment()V
    .registers 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_2b

    :try_start_d
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_14} :catch_21

    :goto_14
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->collapseActionView()Z

    :cond_1d
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->mainViewVisible(Z)V

    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_14

    :catch_26
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_14

    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, ":settings:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_36} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_36} :catch_3c

    goto :goto_14

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_14

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_14
.end method

.method private setProfileImage(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p1, :cond_11

    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "setProfileImage"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileImage:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_10
    return-void

    :cond_11
    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "setProfileImage is default"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileImage:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080599

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10
.end method

.method public static setSettingsActivityContext(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setTileEnabled(Landroid/content/ComponentName;ZZ)V
    .registers 6

    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    const/4 p2, 0x0

    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method private setTitleFromBackStack()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_1c

    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_16

    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    :goto_15
    return-void

    :cond_16
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_1c
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_4b

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    if-ne v1, v3, :cond_59

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_37
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    if-eqz v2, :cond_4b

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    :cond_4b
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    return-void

    :cond_59
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_37
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .registers 4

    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_f
    return-void

    :cond_10
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string/jumbo v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_5d

    iput-object v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    iput v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string/jumbo v5, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    :try_start_18
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception v1

    const-string/jumbo v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    return-void

    :cond_57
    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_56

    :cond_5d
    iput v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string/jumbo v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_70

    :goto_68
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_56

    :cond_70
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_68
.end method

.method private setVoiceSearch(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSeachInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    goto :goto_9
.end method

.method private showAndHandleBiometricDialog(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->getResIdForFactoryResetProtectionWarningMessage(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;)I

    move-result v1

    const-string/jumbo v3, "unlock_set_none"

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;Z)Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "frp_warning_dialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .registers 13

    const v3, 0x7f0a04f6

    if-eqz p3, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    const-string/jumbo v2, "Fragment instantiate"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v2, "get FragmentTransaction"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v2, "transaction replace"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_8f

    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_52
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    if-eqz p7, :cond_5c

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    :cond_5c
    if-eqz p4, :cond_64

    const-string/jumbo v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_64
    const-string/jumbo v2, "transaction setBreadCrumbTitle"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    if-lez p5, :cond_b9

    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    :cond_6f
    :goto_6f
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v2, "transaction commitAllowingStateLoss"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v2, "executePendingTransactions"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-object v0

    :cond_8f
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const v2, 0x7f0a01f6

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_52

    :cond_a2
    const-class v2, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_52

    :cond_b2
    const v2, 0x7f0a0654

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_52

    :cond_b9
    if-eqz p6, :cond_6f

    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_6f
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)Landroid/app/Fragment;
    .registers 15

    const v3, 0x7f0a04f6

    if-eqz p3, :cond_27

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    if-eqz p8, :cond_38

    invoke-virtual {v0, p8, p9}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    :cond_38
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_62

    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_3f
    if-eqz p7, :cond_46

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    :cond_46
    if-eqz p4, :cond_4e

    const-string/jumbo v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_4e
    if-lez p5, :cond_8c

    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    :cond_53
    :goto_53
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_61

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_61
    return-object v0

    :cond_62
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const v2, 0x7f0a01f6

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_3f

    :cond_75
    const-class v2, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_3f

    :cond_85
    const v2, 0x7f0a0654

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_3f

    :cond_8c
    if-eqz p6, :cond_53

    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_53
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a04f6

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    if-eqz v8, :cond_2c

    instance-of v0, v8, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-eqz v0, :cond_2c

    check-cast v8, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    :goto_1d
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->setSearchView(Landroid/widget/SearchView;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->mainViewVisible(Z)V

    return-void

    :cond_2c
    const-class v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_45

    move v7, v4

    :goto_37
    const v5, 0x7f1218c8

    move-object v0, p0

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    goto :goto_1d

    :cond_45
    move v7, v3

    goto :goto_37
.end method

.method private updateEasyModeTitle()V
    .registers 6

    invoke-static {p0}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings$EasyModeMainActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZ)V

    return-void
.end method


# virtual methods
.method public fingerprintEditBtnClicked(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0339

    if-eq v0, v1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a08ba

    if-ne v0, v1, :cond_1b

    :cond_16
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    invoke-interface {v0, p1}, Lcom/android/settings/SettingsActivity$onEditButtonClicked;->editKeyPressed(Landroid/view/View;)V

    :cond_1b
    return-void
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .registers 4

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method

.method protected getAssistantBundle(Z)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "ActivityName"

    const-string/jumbo v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_33

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_3a

    :cond_2a
    const-string/jumbo v1, "IconName"

    const-string/jumbo v2, "Search"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_33
    const-string/jumbo v1, "register"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_3a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v1

    if-nez v1, :cond_2a

    sget-object v1, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string/jumbo v1, "IconName"

    const-string/jumbo v2, "Search;Edit quick settings;"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method getBitmapFromXmlResource(I)Landroid/graphics/Bitmap;
    .registers 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getDashboardCategories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 9

    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v6, ":settings:show_fragment"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_36

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v1

    :goto_21
    const-string/jumbo v6, "intent"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v6, "needSearchMenuInSub"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v6, ":settings:show_fragment_args"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v2

    :cond_36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_21

    :cond_3c
    return-object v5
.end method

.method public getNextButton()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_28
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasNextButtonImage()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public irisRemoveBtnClicked(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const v1, 0x7f120e61

    if-ne v1, v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    invoke-interface {v0, p1}, Lcom/android/settings/SettingsActivity$onEditButtonClicked;->editKeyPressed(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_5

    return v5

    :cond_5
    const/4 v0, 0x0

    :goto_6
    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v4

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->SAMSUNG_ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    return v4

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2d
    const-string/jumbo v2, "com.samsung.android.settings"

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_38
    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    return v4

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_4b
    return v5
.end method

.method launchSettingFragment(Ljava/lang/String;ZLandroid/content/Intent;)V
    .registers 32
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_60

    if-eqz p1, :cond_60

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_52

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string/jumbo v2, ":settings:show_fragment_args"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3f

    const-string/jumbo v2, "needSearchMenuInSub"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    :cond_3f
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    :goto_51
    return-void

    :cond_52
    if-eqz p2, :cond_5a

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_21

    :cond_5a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_21

    :cond_60
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_98

    const v2, 0x7f1218c8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string/jumbo v2, "switchToFragment"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    goto :goto_51

    :cond_98
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/16 v22, 0x0

    const/4 v4, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v16

    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_bc
    if-nez v20, :cond_fa

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_fa

    const/16 v23, 0x0

    :goto_c8
    if-nez v20, :cond_f7

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_f7

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_f4

    move-object/from16 v20, v25

    :cond_f4
    add-int/lit8 v23, v23, 0x1

    goto :goto_c8

    :cond_f7
    add-int/lit8 v21, v21, 0x1

    goto :goto_bc

    :cond_fa
    if-eqz v20, :cond_134

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.tileid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_134

    const-string/jumbo v2, "airplane_mode"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_134

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_134

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_134

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v20

    :cond_134
    if-eqz v20, :cond_17d

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1be

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID_VZW"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16c

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    :cond_16c
    :goto_16c
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17d

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.tileid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    :cond_17d
    :goto_17d
    const-string/jumbo v2, "topLevelTileId"

    move-object/from16 v0, v27

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "switchToFragment DashboardSummary"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x7f1206d7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v2, "switchToFragment initialFragment"

    invoke-static {v2}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, v22

    move-object v10, v4

    invoke-direct/range {v8 .. v15}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    goto/16 :goto_51

    :cond_1be
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto :goto_16c

    :cond_1ca
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    move-object/from16 v22, p1

    const-string/jumbo v2, ":settings:show_fragment_args"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-gez v2, :cond_1fb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_1fb

    :try_start_1e8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_1fb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e8 .. :try_end_1fb} :catch_219

    :cond_1fb
    :goto_1fb
    if-eqz v4, :cond_21e

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21e

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getTopLevelKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_17d

    :catch_219
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1fb

    :cond_21e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mTopLevelTileId:Ljava/lang/String;

    move-object/from16 v27, v0

    goto/16 :goto_17d
.end method

.method public mainViewVisible(Z)V
    .registers 10

    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x7f0a0802

    const v4, 0x7f0a079a

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    if-eqz p1, :cond_3a

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_47
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39
.end method

.method public needToRevertToInitialFragment()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15

    const/16 v9, 0x68

    const/4 v10, 0x1

    const/4 v8, -0x1

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    if-nez v7, :cond_f

    new-instance v7, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    :cond_f
    if-ne p1, v9, :cond_51

    if-ne p2, v10, :cond_3d

    const/4 v3, 0x0

    if-eqz p3, :cond_1d

    const-string/jumbo v7, "hw_auth_token"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    :cond_1d
    const/4 v5, 0x0

    if-eqz p3, :cond_27

    const-string/jumbo v7, "hw_auth_token_iris"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    :cond_27
    const/4 v4, 0x0

    if-eqz p3, :cond_31

    const-string/jumbo v7, "hw_auth_token_face"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    :cond_31
    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportIris()Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFace()Z

    move-result v7

    if-eqz v7, :cond_41

    :cond_3d
    :goto_3d
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_41
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3d

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettings([B)V

    goto :goto_3d

    :cond_51
    const/16 v7, 0x67

    if-ne p1, v7, :cond_5d

    if-ne p2, v8, :cond_3d

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->switchToSwipe()V

    goto :goto_3d

    :cond_5d
    const/16 v7, 0x65

    if-ne p1, v7, :cond_a3

    if-ne p2, v8, :cond_3d

    const/4 v6, 0x0

    if-eqz p3, :cond_6d

    const-string/jumbo v7, "password"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_6d
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3d

    const-string/jumbo v7, "password"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_84
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_94

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportIris()Z

    move-result v7

    if-eqz v7, :cond_9f

    :cond_94
    const/16 v7, 0x68

    invoke-virtual {p0, v2, v7}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_99
    .catch Landroid/content/ActivityNotFoundException; {:try_start_84 .. :try_end_99} :catch_9a

    goto :goto_3d

    :catch_9a
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3d

    :cond_9f
    :try_start_9f
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_a2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9f .. :try_end_a2} :catch_9a

    goto :goto_3d

    :cond_a3
    const/16 v7, 0x66

    if-ne p1, v7, :cond_c7

    if-ne p2, v8, :cond_3d

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v7

    if-nez v7, :cond_b9

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v7

    if-eqz v7, :cond_c0

    :cond_b9
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-direct {p0, v7}, Lcom/android/settings/SettingsActivity;->showAndHandleBiometricDialog(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;)V

    goto/16 :goto_3d

    :cond_c0
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->switchToSwipe()V

    goto/16 :goto_3d

    :cond_c7
    const/16 v7, 0x69

    if-ne p1, v7, :cond_de

    if-ne p2, v8, :cond_3d

    const/4 v3, 0x0

    if-eqz p3, :cond_d7

    const-string/jumbo v7, "hw_auth_token"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    :cond_d7
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettings([B)V

    goto/16 :goto_3d

    :cond_de
    const/16 v7, 0x6a

    if-ne p1, v7, :cond_eb

    if-ne p2, v8, :cond_3d

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setFingerPrintLockOff()V

    goto/16 :goto_3d

    :cond_eb
    const/16 v7, 0x6b

    if-ne p1, v7, :cond_102

    if-ne p2, v8, :cond_3d

    const/4 v3, 0x0

    if-eqz p3, :cond_fb

    const-string/jumbo v7, "hw_auth_token"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    :cond_fb
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startIrisLockSettings([B)V

    goto/16 :goto_3d

    :cond_102
    const/16 v7, 0x6c

    if-ne p1, v7, :cond_10f

    if-ne p2, v8, :cond_3d

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setIrisLockOff()V

    goto/16 :goto_3d

    :cond_10f
    const/16 v7, 0x2a

    if-ne p1, v7, :cond_125

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    if-eqz v7, :cond_125

    if-eqz p2, :cond_125

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_3d

    :cond_125
    const/16 v7, 0x1f7

    if-ne p1, v7, :cond_3d

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v7, :cond_13f

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a04f6

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    :goto_138
    if-eqz v1, :cond_3d

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_3d

    :cond_13f
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f0a0654

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_138
.end method

.method public onBackPressed()V
    .registers 7

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    if-eqz v3, :cond_2b

    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBackPressed consume backKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    invoke-interface {v3}, Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;->onBackKey()V

    return-void

    :cond_2b
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v3, :cond_60

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->collapseActionView()Z

    return-void

    :cond_3d
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-ne v0, v5, :cond_60

    const-string/jumbo v3, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->moveTaskToBack(Z)Z

    :goto_5b
    return-void

    :cond_5c
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_5b

    :cond_60
    :try_start_60
    const-string/jumbo v3, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8d

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.feature.device_category_phone_low_end"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v3, :cond_8d

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->moveTaskToBack(Z)Z

    return-void

    :cond_8d
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onBackPressed()V
    :try_end_90
    .catch Ljava/lang/IllegalStateException; {:try_start_60 .. :try_end_90} :catch_91

    :goto_90
    return-void

    :catch_91
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_90
.end method

.method public onBackStackChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    return-void
.end method

.method public onCategoriesChanged()V
    .registers 21

    invoke-super/range {p0 .. p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCategoriesChanged()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_e5

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "settings_ui"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/SettingsActivity;->mPreSettingUi:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_e5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isResumed()Z

    move-result v2

    if-nez v2, :cond_2c

    return-void

    :cond_2c
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SettingsActivity;->mPreSettingUi:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v15

    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    if-eqz v16, :cond_4f

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_85

    const v2, 0x7f12199a

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_4f
    :goto_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_59
    if-nez v12, :cond_97

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_97

    const/4 v14, 0x0

    :goto_62
    if-nez v12, :cond_94

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    if-ge v14, v2, :cond_94

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v2, v14}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_82

    move-object/from16 v12, v18

    :cond_82
    add-int/lit8 v14, v14, 0x1

    goto :goto_62

    :cond_85
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const v2, 0x7f120a91

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_4f

    :cond_94
    add-int/lit8 v13, v13, 0x1

    goto :goto_59

    :cond_97
    if-eqz v12, :cond_e5

    const/16 v19, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e6

    iget-object v2, v12, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID_VZW"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-object v2, v12, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :cond_b9
    :goto_b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a01f6

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/android/settings/dashboard/DashboardSummary;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/settings/dashboard/DashboardSummary;->setSelectedTile(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, ":settings:prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    iget-object v3, v12, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    iget v7, v12, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v8, v12, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    :cond_e5
    return-void

    :cond_e6
    iget-object v2, v12, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.TOP_LEVEL_TILE_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_b9
.end method

.method public onClose()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 26

    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    move/from16 v20, v0

    if-nez v20, :cond_7d

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7d

    const v20, 0x7f0a0160

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const v20, 0x7f0a049a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    const v20, 0x7f0a0711

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f130104

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_68

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f130253

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_10d

    :cond_68
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_74

    const/16 v20, -0x2

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_74
    :goto_74
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v20, v0

    if-nez v20, :cond_269

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v14, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v20, v0

    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v21, v0

    add-float v19, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1d3

    sget-boolean v20, Lcom/android/settings/SettingsActivity;->mUserUpdateSplit:Z

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_1d3

    const/high16 v20, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->getSavedSplitbarLeftWeight(F)F

    move-result v20

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1a9

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_10d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f13026a

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_68

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v20

    const v21, 0x7f13022d

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_68

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16f

    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v20, 0x40f00000    # 7.5f

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v20, 0x3fa00000    # 1.25f

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v20, 0x3fa00000    # 1.25f

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v20, 0x7f0a049a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const v20, 0x7f0a0711

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_74

    :cond_16f
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v20, 0x41200000    # 10.0f

    move/from16 v0, v20

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v20, 0x7f0a049a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    const v20, 0x7f0a0711

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_74

    :cond_1a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b03f2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b03f3

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_f6

    :cond_1d3
    int-to-float v0, v14

    move/from16 v20, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    div-float v18, v20, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f07061b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f07072d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b04ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    cmpl-float v20, v18, v16

    if-lez v20, :cond_26a

    int-to-float v0, v8

    move/from16 v20, v0

    cmpg-float v20, v18, v20

    if-gtz v20, :cond_26a

    int-to-double v0, v8

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    int-to-double v0, v14

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v12, v0

    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int v20, v14, v8

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v20, "com.android.settings_preferences"

    const/16 v21, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v20, "split_bar_left_wegigh"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_269
    :goto_269
    return-void

    :cond_26a
    cmpg-float v20, v18, v16

    if-gtz v20, :cond_269

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    int-to-double v0, v14

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v12, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-float v0, v14

    move/from16 v20, v0

    sub-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v20, "com.android.settings_preferences"

    const/16 v21, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v20, "split_bar_left_wegigh"

    move-object/from16 v0, v20

    invoke-interface {v7, v0, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_269
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 41

    const-string/jumbo v33, "SettingsActivity onCreate"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    const-string/jumbo v33, "initSearchableInfo"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->initSearchableInfo()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v33

    const-class v36, Lcom/android/settings/Settings;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_41

    const-string/jumbo v33, "Set Theme"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    const v33, 0x7f130262

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    :cond_41
    const-string/jumbo v33, "init Knox custom"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v29

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v21

    if-eqz v29, :cond_71

    if-eqz v21, :cond_71

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    :cond_71
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_94

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v33, v0

    if-eqz v33, :cond_6fc

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    :cond_94
    :goto_94
    const-string/jumbo v33, "SettingsDrawerActivity onCreate"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    sput-object v33, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v33, "accessibility"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    const-string/jumbo v33, "FeatureFactory init"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {v15}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v33, "getMetaData"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v33, "settings:ui_options"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_117

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v33

    const-string/jumbo v36, "settings:ui_options"

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    :cond_117
    const-string/jumbo v33, "query"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_139

    const-string/jumbo v33, "query"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    :cond_139
    const-string/jumbo v33, "development"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v33, ":settings:show_fragment"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v18 .. v18}, Lcom/android/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v33

    if-nez v33, :cond_718

    invoke-static/range {v18 .. v18}, Lcom/android/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v33

    if-nez v33, :cond_718

    const-string/jumbo v33, ":settings:show_fragment_as_shortcut"

    const/16 v36, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    :goto_174
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    const-string/jumbo v33, "get Class Name"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1a5

    const-class v33, Lcom/android/settings/Settings;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    :cond_1a5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/settings/SubSettings;

    move/from16 v33, v0

    if-nez v33, :cond_71c

    const-string/jumbo v33, ":settings:show_fragment_as_subsetting"

    const/16 v36, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    :goto_1bc
    if-eqz v20, :cond_1c8

    const v33, 0x7f130269

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    :cond_1c8
    const-string/jumbo v33, "setContentView"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_725

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    move/from16 v33, v0

    if-eqz v33, :cond_720

    const v33, 0x7f0d02c2

    :goto_1e3
    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    :goto_1ea
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const v33, 0x7f0a04f6

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v33, v0

    if-nez v33, :cond_77d

    const v33, 0x7f0a0495

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mLeftPane:Landroid/widget/LinearLayout;

    const v33, 0x7f0a070b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mRightPane:Landroid/widget/LinearLayout;

    const v33, 0x7f0a0496

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/Toolbar;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    const v33, 0x7f0a070c

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/Toolbar;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mRightPaneToolbar:Landroid/widget/Toolbar;

    const v33, 0x7f0a0802

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    move-object/from16 v33, v0

    const v36, 0x7f1218c8

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    const-string/jumbo v33, "Menu create"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_307

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    move-object/from16 v33, v0

    const v36, 0x7f0e000a

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->inflateMenu(I)V

    const v33, 0x7f0a0753

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    new-instance v33, Lcom/android/settings/SettingsActivity$6;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_75f

    const/16 v33, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x0

    const v38, 0x7f12199a

    move-object/from16 v0, v24

    move/from16 v1, v33

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_2d2
    :goto_2d2
    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    if-eqz v25, :cond_307

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v36, "settings_ui"

    const/16 v37, -0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SettingsActivity;->mPreSettingUi:I

    new-instance v33, Lcom/android/settings/SettingsActivity$7;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$7;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_307
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v33, "setActionBar"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPaneToolbar:Landroid/widget/Toolbar;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v33, "setTitleFromBackStack"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mRightPaneToolbar:Landroid/widget/Toolbar;

    move-object/from16 v33, v0

    new-instance v36, Lcom/android/settings/SettingsActivity$8;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$8;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v33, "initializeLayoutBySplitBar"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->initializeLayoutBySplitBar()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    :cond_34e
    :goto_34e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    move/from16 v33, v0

    if-nez v33, :cond_3ca

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_3ca

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3ca

    const v33, 0x7f0a0160

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    const v33, 0x7f0a049a

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    const v33, 0x7f0a0711

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v33

    const v36, 0x7f130104

    move/from16 v0, v36

    move/from16 v1, v33

    if-eq v0, v1, :cond_3b3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v33

    const v36, 0x7f130253

    move/from16 v0, v36

    move/from16 v1, v33

    if-ne v0, v1, :cond_7af

    :cond_3b3
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_3bf

    const/16 v33, -0x2

    move/from16 v0, v33

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_3bf
    :goto_3bf
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3ca
    const-string/jumbo v33, "relative_link"

    const/16 v36, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->bFromRelativeLink:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    if-eqz p1, :cond_86b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string/jumbo v33, ":settings:categories"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_417

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    :cond_417
    const-string/jumbo v33, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    const-string/jumbo v33, ":settings:search_query"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    const-string/jumbo v33, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    const-string/jumbo v33, ":settings:need_to_revert_to_initial_fragment"

    const/16 v36, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v33, v0

    if-nez v33, :cond_46a

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    :cond_46a
    :goto_46a
    const-string/jumbo v33, "inflateMainScreenSearchView"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->inflateMainScreenSearchView()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v33, "getActionBar"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_4bf
    const v33, 0x7f0a0872

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v33, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    :cond_4eb
    const-string/jumbo v33, "extra_prefs_show_button_bar"

    const/16 v36, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    if-eqz v33, :cond_678

    const-string/jumbo v33, "wifi_enable_next_on_connect"

    const/16 v36, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    if-eqz v33, :cond_895

    const v33, 0x7f0a0135

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_678

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const v33, 0x7f0a0663

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    const v33, 0x7f0a0664

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const v33, 0x7f0a0662

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const v33, 0x7f0a0599

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    const v33, 0x7f0a059a

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    const v33, 0x7f0a0595

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v36, "show_button_background"

    const/16 v37, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_5c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x7f080786

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v36, 0x7f080786

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5c4
    if-eqz v26, :cond_5df

    const/16 v33, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    new-instance v33, Lcom/android/settings/SettingsActivity$9;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$9;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    if-eqz v33, :cond_60c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    move-object/from16 v33, v0

    new-instance v36, Lcom/android/settings/SettingsActivity$10;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$10;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_60c
    const-string/jumbo v33, "extra_prefs_set_next_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_648

    const-string/jumbo v33, "extra_prefs_set_next_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_881

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    move-object/from16 v33, v0

    const/16 v36, 0x4

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    const/16 v36, 0x4

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_648
    :goto_648
    const-string/jumbo v33, "extra_prefs_set_back_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_678

    const-string/jumbo v33, "extra_prefs_set_back_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_88e

    const/16 v33, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v33, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_678
    :goto_678
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_69f

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v36, "CscFeature_Setting_ConfigTypeHelp"

    const/16 v37, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v33

    const/16 v36, 0x1

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_6f8

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v33

    if-eqz v33, :cond_6f8

    :cond_69f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    const-string/jumbo v33, "settings:guide_mode"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_980

    const/16 v19, 0x0

    :goto_6b9
    if-eqz v19, :cond_6f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    move-object/from16 v33, v0

    if-eqz v33, :cond_6f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mLeftPaneToolbar:Landroid/widget/Toolbar;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v24

    const v33, 0x7f0a0753

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    if-eqz v31, :cond_6ed

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6ed
    if-eqz v16, :cond_6f8

    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6f8
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void

    :cond_6fc
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    const v33, 0x7f130268

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SettingsActivity;->mPreSettingUi:I

    goto/16 :goto_94

    :cond_718
    const/16 v33, 0x1

    goto/16 :goto_174

    :cond_71c
    const/16 v20, 0x1

    goto/16 :goto_1bc

    :cond_720
    const v33, 0x7f0d02c4

    goto/16 :goto_1e3

    :cond_725
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_747

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    move/from16 v33, v0

    if-eqz v33, :cond_743

    const v33, 0x7f0d02c3

    :goto_73a
    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_1ea

    :cond_743
    const v33, 0x7f0d02c5

    goto :goto_73a

    :cond_747
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    move/from16 v33, v0

    if-eqz v33, :cond_75b

    const v33, 0x7f0d02c2

    :goto_752
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    goto/16 :goto_1ea

    :cond_75b
    const v33, 0x7f0d02c4

    goto :goto_752

    :cond_75f
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_2d2

    const/16 v33, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x0

    const v38, 0x7f120a91

    move-object/from16 v0, v24

    move/from16 v1, v33

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2d2

    :cond_77d
    const v33, 0x7f0a0802

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v33, v0

    if-eqz v33, :cond_34e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v33, v0

    const/16 v36, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mSplitBarView:Landroid/view/View;

    goto/16 :goto_34e

    :cond_7af
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v33

    const v36, 0x7f13026a

    move/from16 v0, v36

    move/from16 v1, v33

    if-eq v0, v1, :cond_3b3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v33

    const v36, 0x7f13022d

    move/from16 v0, v36

    move/from16 v1, v33

    if-eq v0, v1, :cond_3b3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v33, v0

    const/16 v36, 0x2

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_825

    const/16 v33, 0x1

    move/from16 v0, v33

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v33, 0x40f00000    # 7.5f

    move/from16 v0, v33

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v33, 0x3fa00000    # 1.25f

    move/from16 v0, v33

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v33, 0x3fa00000    # 1.25f

    move/from16 v0, v33

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v33, 0x7f0a049a

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v33, 0x7f0a0711

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3bf

    :cond_825
    const/16 v33, 0x1

    move/from16 v0, v33

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v33, 0x41200000    # 10.0f

    move/from16 v0, v33

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v33, 0x7f0a049a

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v36, 0x4

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v33, 0x7f0a0711

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    const/16 v36, 0x4

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3bf

    :cond_86b
    const-string/jumbo v33, "launchSettingFragment"

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->launchSettingFragment(Ljava/lang/String;ZLandroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    goto/16 :goto_46a

    :cond_881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_648

    :cond_88e
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_678

    :cond_895
    const v33, 0x7f0a012f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_678

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const v33, 0x7f0a00bc

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    new-instance v33, Lcom/android/settings/SettingsActivity$11;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$11;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v33, 0x7f0a07c8

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/Button;

    new-instance v33, Lcom/android/settings/SettingsActivity$12;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$12;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v33, 0x7f0a0598

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/Button;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v33, v0

    new-instance v36, Lcom/android/settings/SettingsActivity$13;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$13;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v33, "extra_prefs_set_next_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_933

    const-string/jumbo v33, "extra_prefs_set_next_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_970

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v33, v0

    const/16 v36, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_933
    :goto_933
    const-string/jumbo v33, "extra_prefs_set_back_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_958

    const-string/jumbo v33, "extra_prefs_set_back_text"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_97c

    const/16 v33, 0x8

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_958
    :goto_958
    const-string/jumbo v33, "extra_prefs_show_skip"

    const/16 v36, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    if-eqz v33, :cond_678

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_678

    :cond_970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_933

    :cond_97c
    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_958

    :cond_980
    const/16 v19, 0x1

    goto/16 :goto_6b9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    const v5, 0x7f0a0753

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_14

    invoke-static {p0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    return v4

    :cond_15
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v2, :cond_1a

    return v4

    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0e0008

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_43
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    :cond_48
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_43
.end method

.method public onIsHidingHeaders()Z
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_provisioned"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_27

    const/4 v1, 0x1

    :goto_f
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_25

    if-eqz v1, :cond_29

    :cond_25
    const/4 v2, 0x1

    return v2

    :cond_27
    const/4 v1, 0x0

    goto :goto_f

    :cond_29
    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, ":android:no_headers"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    const-string/jumbo v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyDown called with keycode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x54

    if-eq p1, v1, :cond_28

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 v1, 0x22

    if-ne p1, v1, :cond_2d

    :cond_28
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->openSearchView()V

    const/4 v1, 0x1

    return v1

    :cond_2d
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04f6

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_41

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->customOnKeyDown(ILandroid/view/KeyEvent;)V

    :cond_41
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateOptionsMenu()V

    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateOptionsMenu()V

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string/jumbo v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->openSearchView()V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setQueryFromOutter(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onPause()V

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    if-eqz v1, :cond_1c

    :try_start_16
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->unregister(Landroid/app/Activity;I)V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1c
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .registers 11

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/settings/Utils;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    invoke-static {p1}, Lcom/android/settings/Utils;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, ":settings:show_home_as_up"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    const-string/jumbo v0, ":settings:show_search"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->inflateMainScreenSearchView()V

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_36

    const-string/jumbo v0, ":settings:need_to_revert_to_initial_fragment"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_36

    const-string/jumbo v0, "settings"

    const-string/jumbo v1, "revertToInitialFragment called in onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    :cond_36
    return-void
.end method

.method protected onResume()V
    .registers 7

    const-string/jumbo v1, "SettingsActivity onResume"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    const-string/jumbo v1, "SettingsDrawerActivity onResume"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onResume()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v1, "Knox customization"

    invoke-static {v1}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomIsProKioskMode:Z

    if-eqz v1, :cond_3e

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    if-nez v1, :cond_23

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    :cond_23
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_c4

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c4

    :cond_2f
    const/4 v0, 0x1

    :goto_30
    if-nez v0, :cond_3e

    const-string/jumbo v1, "Settings"

    const-string/jumbo v2, "onResume SRUK: !featuresAvailable, finishing"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    :cond_3e
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateOptionsMenu()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_e5

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v1, :cond_e5

    :goto_55
    sput-object p0, Lcom/android/settings/SettingsActivity;->mFpContext:Landroid/content/Context;

    :cond_57
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v1, :cond_5e

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    :cond_5e
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mMainScreenSearchLayout:Landroid/view/View;

    if-eqz v1, :cond_65

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->clearMainSearchViewFocus()V

    :cond_65
    new-instance v1, Lcom/android/settings/SettingsActivity$14;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$14;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    if-nez v1, :cond_8b

    new-instance v1, Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    :cond_8b
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->register(Landroid/app/Activity;I)V

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    :cond_a4
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mProfileImageLoader:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    if-eqz v1, :cond_c0

    const-string/jumbo v1, "Settings"

    const-string/jumbo v2, "mProfileImageLoader update"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/SettingsActivity$15;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsActivity$15;-><init>(Lcom/android/settings/SettingsActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c0
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void

    :cond_c4
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_d0

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2f

    :cond_d0
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsState:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_e2

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomProKioskSettingsItems:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_df

    const/4 v0, 0x1

    goto/16 :goto_30

    :cond_df
    const/4 v0, 0x0

    goto/16 :goto_30

    :cond_e2
    const/4 v0, 0x0

    goto/16 :goto_30

    :cond_e5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_57

    goto/16 :goto_55
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 5

    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "onStart"

    invoke-static {v0}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "settings_ui"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_33
    const-string/jumbo v0, "updateTilesList"

    invoke-static {v0}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStop()V

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSettingsUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_25
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/Settings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mProfileContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mProfileContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4e
    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openSearchView()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    goto :goto_a
.end method

.method public openTile(Lcom/android/settingslib/drawer/Tile;)V
    .registers 14

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_b

    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0654

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a01f6

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v9}, Lcom/android/settings/dashboard/DashboardSummary;->getSelectedTileId()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.settings.tileid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_6c

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6c

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-le v0, v3, :cond_b

    :cond_6c
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    iget v5, p1, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto :goto_b
.end method

.method protected openTileForBixby(Ljava/lang/String;)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3b

    const/4 v3, 0x0

    :goto_d
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v6}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v6

    if-ge v3, v6, :cond_35

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v6, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v5

    iget-object v6, v5, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "com.android.settings.tileid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    move-object v4, v5

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_3b
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v6, p0, v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method

.method public registerAssistant()V
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->bEasymode:Z

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_16

    :cond_15
    return-void

    :cond_16
    const-class v3, Lcom/android/settings/Settings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_2c
    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_15

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v3, :cond_37

    return-void

    :cond_35
    move v3, v4

    goto :goto_2c

    :cond_37
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->getAssistantBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "com.android.settings.Favorite"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.settings.Search"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/SettingsActivity$AssistantReceiver;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsActivity$AssistantReceiver;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    const-string/jumbo v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_10
    const-string/jumbo v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, ":settings:need_to_revert_to_initial_fragment"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    :goto_36
    const-string/jumbo v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4a
    const-string/jumbo v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    return-void

    :cond_51
    const/4 v0, 0x0

    goto :goto_36

    :cond_53
    const-string/jumbo v1, ""

    goto :goto_4a
.end method

.method public setEnableNextButtonImage(Z)V
    .registers 6

    const/16 v3, 0xff

    const/16 v2, 0x4a

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->hasNextButtonImage()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mNextButtonText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_25
.end method

.method public setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mOnEditPressedListener:Lcom/android/settings/SettingsActivity$onEditButtonClicked;

    return-void
.end method

.method public setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mOnKeyBackPressedListener:Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;

    return-void
.end method

.method public setQueryFromOutter(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :goto_24
    return-void

    :cond_25
    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "mSearchView is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t get ActionBar with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a04f6

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    if-eqz p2, :cond_1f

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_1b
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_1f
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_1b
.end method

.method public startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .registers 26

    const/4 v7, 0x0

    if-gez p4, :cond_9

    if-eqz p5, :cond_2d

    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-eqz v1, :cond_31

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/SettingsActivity;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p4

    invoke-static/range {v1 .. v9}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;ZI)V

    :goto_2c
    return-void

    :cond_2d
    const-string/jumbo v7, ""

    goto :goto_9

    :cond_31
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p6

    move/from16 v17, p7

    invoke-direct/range {v8 .. v17}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;ZLandroid/app/Fragment;I)Landroid/app/Fragment;

    goto :goto_2c
.end method

.method public startPreferencePanelAsUser(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .registers 15

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_16

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_15
    return-void

    :cond_16
    const/4 v4, 0x0

    if-gez p4, :cond_1f

    if-eqz p5, :cond_30

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1f
    :goto_1f
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZILandroid/os/UserHandle;)V

    goto :goto_15

    :cond_30
    const-string/jumbo v4, ""

    goto :goto_1f
.end method

.method public startSuggestion(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public unregisterAssistant()V
    .registers 4

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSinglePane:Z

    if-nez v2, :cond_a

    return-void

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->getAssistantBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    :try_start_14
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1c
.end method

.method public updateOptionMenu(Landroid/view/Menu;)Z
    .registers 16

    const v12, 0x7f0a0753

    const/4 v13, 0x1

    const/4 v11, 0x0

    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-nez v8, :cond_12

    return v11

    :cond_12
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v8}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SearchView;

    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v8, :cond_21

    return v11

    :cond_21
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const v9, 0x1020458

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3c

    move-object v5, v7

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_3c
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-eqz v8, :cond_49

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v10, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->setSearchView(Landroid/widget/SearchView;Ljava/lang/String;)V

    :cond_49
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_6e
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12181d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v11}, Lcom/android/settings/SettingsActivity;->setVoiceSearch(Z)V

    :try_start_81
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v9, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "android:id/search_src_text"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/SettingsActivity$SearchInputFilter;

    sget-object v8, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/android/settings/SettingsActivity$SearchInputFilter;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x64

    invoke-virtual {v2, v8}, Lcom/android/settings/SettingsActivity$SearchInputFilter;->setMaxLength(I)V

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/text/InputFilter;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string/jumbo v8, "disableEmoticonInput=true"

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_b7} :catch_ef
    .catch Ljava/lang/ClassCastException; {:try_start_81 .. :try_end_b7} :catch_ef
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_81 .. :try_end_b7} :catch_ef

    :goto_b7
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v8, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    new-instance v9, Lcom/android/settings/SettingsActivity$3;

    invoke-direct {v9, p0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v8, :cond_dd

    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v8}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_dd
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, v4, v13}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ee

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->openSearchView()V

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->setQueryFromOutter(Ljava/lang/String;)V

    :cond_ee
    return v13

    :catch_ef
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_b7
.end method

.method public updateTilesList()V
    .registers 2

    new-instance v0, Lcom/android/settings/SettingsActivity$16;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$16;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
