.class public Lcom/android/settings/notification/ZenModeSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettings$1;,
        Lcom/android/settings/notification/ZenModeSettings$LoadIconTask;,
        Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;,
        Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;
    }
.end annotation


# static fields
.field static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAutomaticRules:Landroid/support/v7/preference/PreferenceCategory;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mPrioritySettings:Landroid/support/v7/preference/Preference;

.field private mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

.field private mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

.field private mVisualSettings:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModeSettings;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ZenModeSettings;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ZenModeSettings;)Lcom/android/settings/utils/ZenServiceListing;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .registers 2

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSettings;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenModeSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeSettings;->getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/ZenModeSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeSettings;->computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/ZenModeSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->showAddRuleDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/notification/ZenModeSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ZenModeSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/notification/ZenModeSettings;Lcom/android/settings/notification/ZenRuleInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeSettings;->showNameRuleDialog(Lcom/android/settings/notification/ZenRuleInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/settings/notification/ZenModeSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/notification/ZenModeSettings;->computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_22

    :cond_18
    const v2, 0x7f121b7d

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1f
    if-eqz p2, :cond_2e

    :goto_21
    return-object v1

    :cond_22
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const v3, 0x7f12227f

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/notification/ZenModeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_2e
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object v1, v2, v5

    const v3, 0x7f122280

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/notification/ZenModeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method private static computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const v0, 0x7f122271

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_d
    const v0, 0x7f122272

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const v0, 0x7f122273

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_d
        :pswitch_15
        :pswitch_5
    .end packed-switch
.end method

.method private static getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .registers 2

    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>()V

    const-string/jumbo v1, "ZenModeSettings"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    const-string/jumbo v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->secondarySetting:Ljava/lang/String;

    const-string/jumbo v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    const-string/jumbo v1, "condition provider"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    return-object v0
.end method

.method public static getRuleInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleInfo;
    .registers 8

    const/4 v5, 0x0

    if-eqz p1, :cond_7

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_8

    :cond_7
    return-object v5

    :cond_8
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "android.service.zen.automatic.ruleType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5b

    if-eqz v0, :cond_5b

    new-instance v1, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const-string/jumbo v3, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "android.service.zen.automatic.ruleInstanceLimit"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    return-object v1

    :cond_5b
    return-object v5
.end method

.method private getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.service.notification.extra.RULE_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p2, :cond_18

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_17
.end method

.method private static getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_7

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_8

    :cond_7
    return-object v3

    :cond_8
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "android.service.zen.automatic.configurationActivity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    :cond_18
    return-object v3
.end method

.method private showAddRuleDialog()V
    .registers 4

    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$3;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings$3;-><init>(Lcom/android/settings/notification/ZenModeSettings;Landroid/content/Context;Lcom/android/settings/utils/ZenServiceListing;)V

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$3;->show()V

    return-void
.end method

.method private showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const v2, 0x7f12225b

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12055d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeSettings$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeSettings$5;-><init>(Lcom/android/settings/notification/ZenModeSettings;Ljava/lang/String;)V

    const v2, 0x7f12225a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showNameRuleDialog(Lcom/android/settings/notification/ZenRuleInfo;)V
    .registers 5

    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$4;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/settings/notification/ZenModeSettings$4;-><init>(Lcom/android/settings/notification/ZenModeSettings;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/settings/notification/ZenRuleInfo;)V

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$4;->show()V

    return-void
.end method

.method private sortedRules()[Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mRules:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mRules:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    sget-object v1, Lcom/android/settings/notification/ZenModeSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private updateAutomaticRules()V
    .registers 9

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mAutomaticRules:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->sortedRules()[Ljava/util/Map$Entry;

    move-result-object v3

    array-length v6, v3

    move v4, v5

    :goto_c
    if-ge v4, v6, :cond_25

    aget-object v2, v3, v4

    new-instance v1, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, p0, v7, v2}, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;-><init>(Lcom/android/settings/notification/ZenModeSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V

    iget-boolean v7, v1, Lcom/android/settings/notification/ZenModeSettings$ZenRulePreference;->appExists:Z

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeSettings;->mAutomaticRules:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v7, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_25
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0801d3

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    const v4, 0x7f12224d

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    new-instance v4, Lcom/android/settings/notification/ZenModeSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeSettings$2;-><init>(Lcom/android/settings/notification/ZenModeSettings;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings;->mAutomaticRules:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private updateControls()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updatePrioritySettingsSummary()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateVisualSettingsSummary()V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateAutomaticRules()V

    return-void
.end method

.method private updatePrioritySettingsSummary()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getPrioritySettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateVisualSettingsSummary()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mVisualSettings:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getVisualSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .registers 2

    const v0, 0x7f120cff

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f15014d

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "automatic_rules"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mAutomaticRules:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v1, "priority_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/support/v7/preference/Preference;

    const-string/jumbo v1, "visual_interruptions_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mVisualSettings:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    new-instance v1, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/android/settings/utils/ZenServiceListing;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/notification/ZenModeSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {v1}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    return-void
.end method
