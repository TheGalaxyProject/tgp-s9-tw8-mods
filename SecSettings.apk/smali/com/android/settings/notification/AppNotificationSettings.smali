.class public Lcom/android/settings/notification/AppNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "AppNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/AppNotificationSettings$1;,
        Lcom/android/settings/notification/AppNotificationSettings$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static KEY_DELETED:Ljava/lang/String;

.field private static KEY_GENERAL_CATEGORY:Ljava/lang/String;


# instance fields
.field private mChannelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/AppNotificationSettings;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/AppNotificationSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->populateChannelList()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/AppNotificationSettings;->DEBUG:Z

    const-string/jumbo v0, "categories"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    const-string/jumbo v0, "deleted"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_DELETED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    return-void
.end method

.method private addHeaderPref()V
    .registers 7

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/AppNotificationSettings;->collectConfigActivities(Landroid/util/ArrayMap;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppHeaderController;->setUid(I)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/AppHeaderController;->setButtonActions(II)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object v1

    const-string/jumbo v3, "header"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    sparse-switch v0, :sswitch_data_50

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121373

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_13
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12137a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1f
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121b7d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2b
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121377

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_37
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121375

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_43
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121370

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_50
    .sparse-switch
        -0x3e8 -> :sswitch_13
        0x0 -> :sswitch_1f
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_37
        0x3 -> :sswitch_43
    .end sparse-switch
.end method

.method private populateChannelList()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5b

    const-string/jumbo v13, "AppNotificationSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Notification channel group posted twice to settings - old size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", new size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_47
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_47

    :cond_5b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9e

    new-instance v8, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v13, 0x7f121367

    invoke-virtual {v8, v13}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    sget-object v13, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/samsung/android/settings/UnclickablePreference;-><init>(Landroid/content/Context;)V

    const v13, 0x7f12132d

    invoke-virtual {v5, v13}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/samsung/android/settings/UnclickablePreference;->setEnabled(Z)V

    invoke-virtual {v8, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_9d
    :goto_9d
    return-void

    :cond_9e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    new-instance v8, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_169

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_164

    const v13, 0x7f121a88

    :goto_cf
    invoke-virtual {v8, v13}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    sget-object v13, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    :goto_d7
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/support/v7/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v3, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_f9
    if-ge v9, v1, :cond_a6

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    const-string/jumbo v13, "AppNotificationSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "get populateChannel : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "miscellaneous"

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_179

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v13, v13, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isNotiHideDefaultChannel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_179

    const-string/jumbo v13, "AppNotificationSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "miscellaneous channel exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_161
    add-int/lit8 v9, v9, 0x1

    goto :goto_f9

    :cond_164
    const v13, 0x7f121367

    goto/16 :goto_cf

    :cond_169
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    goto/16 :goto_d7

    :cond_179
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/settings/notification/AppNotificationSettings;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceCategory;Landroid/app/NotificationChannel;)V

    goto :goto_161

    :cond_17f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v14, v14, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v15, v15, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v13, v14, v15}, Lcom/android/settings/notification/NotificationBackend;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_9d

    new-instance v13, Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/samsung/android/settings/UnclickablePreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const v16, 0x7f10000b

    move/from16 v0, v16

    invoke-virtual {v14, v0, v4, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/UnclickablePreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;

    sget-object v14, Lcom/android/settings/notification/AppNotificationSettings;->KEY_DELETED:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/UnclickablePreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_9d
.end method

.method private populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceCategory;Landroid/app/NotificationChannel;)V
    .registers 13

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    new-instance v9, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/notification/AppNotificationSettings;->isChannelBlockable(ZLandroid/app/NotificationChannel;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/AppNotificationSettings;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v0

    :goto_1e
    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_8f

    move v0, v1

    :goto_36
    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    invoke-direct {p0, p2}, Lcom/android/settings/notification/AppNotificationSettings;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "uid"

    iget v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "hideInfoButton"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "package"

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getMetricsCategory()I

    move-result v7

    const v4, 0x7f121366

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/settings/widget/MasterSwitchPreference;->setIntent(Landroid/content/Intent;)V

    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$4;

    invoke-direct {v0, p0, p2, v9}, Lcom/android/settings/notification/AppNotificationSettings$4;-><init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannel;Lcom/android/settings/widget/MasterSwitchPreference;)V

    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    :cond_8d
    move v0, v6

    goto :goto_1e

    :cond_8f
    move v0, v6

    goto :goto_36
.end method

.method private setVisibleBadge(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isEnabledBadgeAppIcon(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_c

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_13

    :cond_c
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :goto_12
    return-void

    :cond_13
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    goto :goto_12
.end method

.method private setVisibleBlockBar()V
    .registers 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/SecNotiUtils;->getSecNotiBlockableByMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_30

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBarTopDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isSecNotiBlockableHidePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBarTopDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x48

    return v0
.end method

.method public onResume()V
    .registers 5

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    iget v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    if-ltz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_22

    :cond_15
    const-string/jumbo v0, "AppNotificationSettings"

    const-string/jumbo v1, "Missing package or uid or packageinfo"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->finish()V

    return-void

    :cond_22
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;

    iput-boolean v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    :cond_38
    const v0, 0x7f15001a

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->setupBlock()V

    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->addHeaderPref()V

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    const-string/jumbo v0, "AppNotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string/jumbo v3, "miscellaneous"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    const-string/jumbo v0, "AppNotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get Legacy channel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->populateDefaultChannelPrefs()V

    :goto_c6
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AppNotificationSettings;->updateDependents(Z)V

    return-void

    :cond_ce
    const v0, 0x7f150122

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->setupBadge()V

    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$3;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AppNotificationSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c6
.end method

.method setupBadge()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    :goto_23
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/AppNotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/AppNotificationSettings$5;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_2e
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_23
.end method

.method protected setupBlock()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d02ee

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a08d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBarTopDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "current_sec_active_themepackage"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBarTopDivider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    const v2, 0x7f0a0872

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->setSideMarginAsListItem()V

    :cond_5d
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v3, Lcom/android/settings/notification/AppNotificationSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/AppNotificationSettings$6;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    new-instance v2, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000

    invoke-direct {v2, v3, v1, v4}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    const/16 v3, -0x1f4

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    const-string/jumbo v3, "block"

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->setVisibleBlockBar()V

    const v2, 0x7f1201f6

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/AppNotificationSettings;->setupBlockDesc(I)V

    return-void
.end method

.method protected updateDependents(Z)V
    .registers 8

    const/4 v5, 0x2

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    goto :goto_8

    :cond_1a
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/samsung/android/settings/UnclickablePreference;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :cond_25
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockedDesc:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings;->setVisibleBadge(Z)V

    iget-boolean v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPriority:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/AppNotificationSettings;->checkCanBeVisible(I)Z

    move-result v2

    if-nez v2, :cond_71

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/AppNotificationSettings;->checkCanBeVisible(I)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-boolean v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDndVisualEffectsSuppressed:Z

    :goto_49
    invoke-virtual {p0, v4, v2}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez p1, :cond_54

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/AppNotificationSettings;->checkCanBeVisible(I)Z

    move-result v3

    :cond_54
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :cond_57
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppLink:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppLink:Landroid/support/v7/preference/Preference;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :cond_62
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppLinkCategory:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppLinkCategory:Landroid/support/v7/preference/Preference;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    :cond_6d
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->setVisibleBlockBar()V

    return-void

    :cond_71
    const/4 v2, 0x1

    goto :goto_49

    :cond_73
    move v2, v3

    goto :goto_49
.end method
