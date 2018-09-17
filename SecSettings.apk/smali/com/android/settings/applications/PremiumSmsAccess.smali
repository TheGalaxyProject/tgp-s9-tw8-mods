.class public Lcom/android/settings/applications/PremiumSmsAccess;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "PremiumSmsAccess.java"

# interfaces
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
    }
.end annotation


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/PremiumSmsAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    return-void
.end method

.method private update()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    return-void
.end method

.method private updatePrefs(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez p1, :cond_b

    :cond_a
    return-void

    :cond_b
    const v4, 0x7f12132b

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/PremiumSmsAccess;->setEmptyText(I)V

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/applications/PremiumSmsAccess;->setLoading(ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const/4 v0, 0x0

    :goto_24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_42

    new-instance v2, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;-><init>(Lcom/android/settings/applications/PremiumSmsAccess;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_60

    new-instance v3, Lcom/android/settings/DividerPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/DividerPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/DividerPreference;->setSelectable(Z)V

    const v4, 0x7f121518

    invoke-virtual {v3, v4}, Lcom/android/settings/DividerPreference;->setSummary(I)V

    invoke-virtual {v3, v7}, Lcom/android/settings/DividerPreference;->setDividerAllowedAbove(Z)V

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_60
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/PremiumSmsAccess;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x184

    return v0
.end method

.method logSpecialPermissionChange(ILjava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_26

    :goto_5
    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    :cond_1c
    return-void

    :pswitch_1d
    const/16 v0, 0x30a

    goto :goto_5

    :pswitch_20
    const/16 v0, 0x30b

    goto :goto_5

    :pswitch_23
    const/16 v0, 0x30c

    goto :goto_5

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/applications/AppStateSmsPremBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    return-void
.end method

.method public onExtraInfoUpdated()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/applications/PremiumSmsAccess;->update()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .registers 1

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .registers 1

    return-void
.end method

.method public onPackageIconChanged()V
    .registers 1

    return-void
.end method

.method public onPackageListChanged()V
    .registers 1

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->pause()V

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->-get0(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/PremiumSmsAccess;->logSpecialPermissionChange(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-static {v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->-get0(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/applications/AppStateSmsPremBridge;->setSmsState(Ljava/lang/String;I)V

    const/4 v2, 0x1

    return v2
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/applications/PremiumSmsAccess;->updatePrefs(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess;->mSmsBackend:Lcom/android/settings/applications/AppStateSmsPremBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge;->resume()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/PremiumSmsAccess;->setLoading(ZZ)V

    return-void
.end method
