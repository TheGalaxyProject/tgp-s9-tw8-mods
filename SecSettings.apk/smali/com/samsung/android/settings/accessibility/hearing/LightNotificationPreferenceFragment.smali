.class public Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$1;,
        Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;,
        Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

.field private static mScreenNotification:Landroid/support/v14/preference/SwitchPreference;


# instance fields
.field private mAllPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDialog:Landroid/app/AlertDialog;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1()Landroid/support/v14/preference/SwitchPreference;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()Landroid/support/v14/preference/SwitchPreference;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showFlashNotificationConfirmDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showScreenNotificationConfirmDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->updateAllPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static needFlashNotificationConfirmDialog(Landroid/content/Context;)Z
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "accessibility_feature_confirm_dialog"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "light_notification_flash_dialog_do_not_show_again"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static needScreenNotificationConfirmDialog(Landroid/content/Context;)Z
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "accessibility_feature_confirm_dialog"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "light_notification_screen_dialog_do_not_show_again"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private showFlashNotificationConfirmDialog()V
    .registers 10

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f120fa0

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f121c57

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d001f

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v5, 0x7f0a028e

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;

    invoke-direct {v6, p0, v1, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;Landroid/content/Context;Landroid/widget/CheckBox;)V

    const v7, 0x7f1208ab

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showScreenNotificationConfirmDialog()V
    .registers 10

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f120fa0

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f121c57

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d001f

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v5, 0x7f0a028e

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$6;

    invoke-direct {v6, p0, v1, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$6;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;Landroid/content/Context;Landroid/widget/CheckBox;)V

    const v7, 0x7f1208ab

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$7;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$8;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateAllPreferences()V
    .registers 4

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;->updatePreference()Z

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x138d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150009

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string/jumbo v1, "light_notification_flash"

    const-string/jumbo v2, "flash_notification"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    sput-object v1, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

    :goto_2b
    const-string/jumbo v1, "light_notification_screen"

    const-string/jumbo v2, "screen_notification"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    sput-object v1, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "desktopmode"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void

    :cond_4c
    const-string/jumbo v1, "light_notification_guide"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecImageGuidePreference;

    const v1, 0x7f120f9d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SecImageGuidePreference;->setGuideSummary(Ljava/lang/String;)Z

    const-string/jumbo v1, "light_notification_flash"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public onDesktopDockConnectionChanged(Z)V
    .registers 2

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .registers 4

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "LightNotification"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_14
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/16 v4, 0x3e8

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v1, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->needFlashNotificationConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showFlashNotificationConfirmDialog()V

    return v2

    :cond_22
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "flash_notification"

    if-eqz v0, :cond_49

    move v1, v2

    :goto_2c
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_41

    move v3, v4

    :cond_41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_49
    move v1, v3

    goto :goto_2c

    :cond_4b
    sget-object v1, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->needScreenNotificationConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showScreenNotificationConfirmDialog()V

    return v2

    :cond_69
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_notification"

    if-eqz v0, :cond_8f

    move v1, v2

    :goto_73
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_91

    :goto_87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_8f
    move v1, v3

    goto :goto_73

    :cond_91
    move v4, v3

    goto :goto_87

    :cond_93
    return v3
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onDesktopModeChanged(Z)V

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->updateAllPreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "LightNotification"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
