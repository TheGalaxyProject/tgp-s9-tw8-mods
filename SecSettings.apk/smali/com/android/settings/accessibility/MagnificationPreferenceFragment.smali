.class public final Lcom/android/settings/accessibility/MagnificationPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;,
        Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mLaunchedFromSuw:Z

.field private mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

.field private mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    new-instance v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/MagnificationPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method static getConfigurationWarningStringForSecureSettingsKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 14

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string/jumbo v8, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    return-object v11

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1a

    return-object v11

    :cond_1a
    const-string/jumbo v8, "accessibility"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "accessibility_button_target_component"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7b

    const-string/jumbo v8, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7b

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v7, :cond_7b

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v10

    const v9, 0x7f120078

    invoke-virtual {p1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    :cond_7b
    return-object v11
.end method

.method private handleMagnificationGesturesPreferenceScreenClick()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    const-string/jumbo v1, "from_suw"

    iget-boolean v2, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private handleMagnificationNavbarPreferenceScreenClick()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->populateMagnificationNavbarPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    const-string/jumbo v1, "from_suw"

    iget-boolean v2, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static isApplicable(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x1120096

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "preference_key"

    const-string/jumbo v3, "accessibility_display_magnification_enabled"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    const v3, 0x7f120077

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "summary"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "checked"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_45

    :goto_39
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "video_resource"

    const/high16 v1, 0x7f110000

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_45
    move v0, v1

    goto :goto_39
.end method

.method public static populateMagnificationNavbarPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "preference_key"

    const-string/jumbo v3, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    const v3, 0x7f12007b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "summary"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "checked"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3d

    :goto_39
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_3d
    move v0, v1

    goto :goto_39
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V
    .registers 6

    iget-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_1c

    const v1, 0x7f12005a

    :goto_16
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_11

    :cond_1c
    const v1, 0x7f120059

    goto :goto_16

    :cond_20
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const v1, 0x7f12007c

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_19

    :cond_30
    const-string/jumbo v1, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const v1, 0x7f120079

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_19
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x39a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x7f150005

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "screen_magnification_gestures_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "screen_magnification_navbar_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "screen_magnification_navbar_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Magnification"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    if-eqz v0, :cond_e

    const-class v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_1b

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->handleMagnificationGesturesPreferenceScreenClick()V

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    return v1

    :cond_1b
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_28

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->handleMagnificationNavbarPreferenceScreenClick()V

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    return v1

    :cond_28
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120082

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    const-string/jumbo v0, "accessibility_display_magnification_enabled"

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    const-string/jumbo v0, "accessibility_display_magnification_navbar_enabled"

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Magnification"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string/jumbo v1, "from_suw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "from_suw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    :cond_1b
    return-void
.end method
