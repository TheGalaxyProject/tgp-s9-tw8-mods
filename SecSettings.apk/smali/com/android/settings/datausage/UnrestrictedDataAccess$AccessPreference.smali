.class Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
.super Landroid/support/v14/preference/SecSwitchPreference;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessPreference"
.end annotation


# instance fields
.field private final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .registers 6

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-direct {p0, p2}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_28
    return-void
.end method

.method private setState()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1f

    const v0, 0x7f121666

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(I)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method


# virtual methods
.method public onAttached()V
    .registers 2

    invoke-super {p0}, Landroid/support/v14/preference/SecSwitchPreference;->onAttached()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get1(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_49

    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$1;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_11
    const v2, 0x7f0a03f8

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1f
    const v2, 0x1020018

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v3, v3, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v3, :cond_31

    const/4 v1, 0x4

    :cond_31
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$3;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$3;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-super {p0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void

    :cond_49
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$2;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method

.method public onBlacklistStatusChanged(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    :cond_13
    return-void
.end method

.method protected onClick()V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1b

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-super {p0}, Landroid/support/v14/preference/SecSwitchPreference;->onClick()V

    goto :goto_1a
.end method

.method public onDataSaverChanged(Z)V
    .registers 2

    return-void
.end method

.method public onDetached()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->-get1(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    invoke-super {p0}, Landroid/support/v14/preference/SecSwitchPreference;->onDetached()V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    :cond_13
    return-void
.end method

.method public reuse()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->notifyChanged()V

    return-void
.end method
