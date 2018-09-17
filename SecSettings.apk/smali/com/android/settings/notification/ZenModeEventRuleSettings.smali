.class public Lcom/android/settings/notification/ZenModeEventRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeEventRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeEventRuleSettings$1;,
        Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    }
.end annotation


# static fields
.field private static final CALENDAR_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendar:Landroid/support/v7/preference/DropDownPreference;

.field private mCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCreate:Z

.field private mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

.field private mReply:Landroid/support/v7/preference/DropDownPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    return-void
.end method

.method public static addCalendars(Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const-string/jumbo v8, "\"primary\""

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "calendar_displayName"

    aput-object v0, v2, v3

    const-string/jumbo v0, "(account_name=ownerAccount) AS \"primary\""

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string/jumbo v9, "\"primary\" = 1"

    const/4 v7, 0x0

    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "\"primary\" = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_4f

    move-result-object v7

    if-nez v7, :cond_33

    if-eqz v7, :cond_32

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_32
    return-void

    :cond_33
    :goto_33
    :try_start_33
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v6, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    invoke-direct {v6}, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;-><init>()V

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, v6, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_4f

    goto :goto_33

    :catchall_4f
    move-exception v0

    if-eqz v7, :cond_55

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_55
    throw v0

    :cond_56
    if-eqz v7, :cond_5b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5b
    return-void
.end method

.method private static getCalendars(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-static {p0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-static {v3, v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->addCalendars(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_11

    :cond_27
    sget-object v4, Lcom/android/settings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static key(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_19

    const-string/jumbo p1, ""

    :cond_19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reloadCalendar()V
    .registers 9

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getCalendars(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendars:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const v6, 0x7f122260

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-static {v6, v7}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v6, :cond_58

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v3, v6, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    :goto_2d
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendars:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    iget-object v6, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_34

    iget-object v6, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    const/4 v4, 0x1

    goto :goto_34

    :cond_58
    const/4 v3, 0x0

    goto :goto_2d

    :cond_5a
    if-eqz v3, :cond_6e

    xor-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_6e

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v6, v6, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v6, v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getEnabledToastText()I
    .registers 2

    const v0, 0x7f12224b

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x92

    return v0
.end method

.method protected getZenModeDependency()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateInternal()V
    .registers 9

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    const v1, 0x7f150149

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "calendar"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "reply"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    new-array v2, v7, [Ljava/lang/CharSequence;

    const v3, 0x7f122262

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f122264

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f122263

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    new-array v2, v7, [Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateControlsInternal()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    return-void
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected updateControlsInternal()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroid/support/v7/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
