.class public Lcom/android/settings/notification/ZenModePrioritySettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# instance fields
.field private mCalls:Landroid/support/v7/preference/DropDownPreference;

.field private mDisableListeners:Z

.field private mEvents:Landroid/support/v14/preference/SwitchPreference;

.field private mMessages:Landroid/support/v7/preference/DropDownPreference;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mReminders:Landroid/support/v14/preference/SwitchPreference;

.field private mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModePrioritySettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ZenModePrioritySettings;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenModePrioritySettings;ZI)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ZenModePrioritySettings;->getNewPriorityCategories(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenModePrioritySettings;IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/ZenModePrioritySettings;->savePolicy(IIII)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static addSources(Landroid/support/v7/preference/DropDownPreference;)V
    .registers 9

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12226b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12226c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12226e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0}, Landroid/support/v7/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12226d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getNewPriorityCategories(ZI)I
    .registers 5

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz p1, :cond_8

    or-int/2addr v0, p2

    :goto_7
    return v0

    :cond_8
    not-int v1, p2

    and-int/2addr v0, v1

    goto :goto_7
.end method

.method private isPriorityCategoryEnabled(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method private savePolicy(IIII)V
    .registers 7

    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method private updateControls()V
    .registers 7

    const/16 v5, 0x8

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v0, :cond_1e

    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    :goto_17
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    :cond_2b
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-eqz v0, :cond_69

    move v0, v2

    :goto_5f
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    iput-boolean v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z

    return-void

    :cond_65
    move v0, v1

    goto :goto_17

    :cond_67
    move v0, v2

    goto :goto_5f

    :cond_69
    move v0, v3

    goto :goto_5f
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x8d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f15014b

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const-string/jumbo v1, "reminders"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mReminders:Landroid/support/v14/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$1;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mEvents:Landroid/support/v14/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$2;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "messages"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->addSources(Landroid/support/v7/preference/DropDownPreference;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mMessages:Landroid/support/v7/preference/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$3;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "calls"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->addSources(Landroid/support/v7/preference/DropDownPreference;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mCalls:Landroid/support/v7/preference/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$4;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "repeat_callers"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f122278

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mRepeatCallers:Landroid/support/v14/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$5;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->updateControls()V

    return-void
.end method

.method protected onZenModeChanged()V
    .registers 1

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->updateControls()V

    return-void
.end method
