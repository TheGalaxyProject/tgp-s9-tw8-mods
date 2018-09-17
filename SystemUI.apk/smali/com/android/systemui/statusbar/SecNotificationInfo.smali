.class public Lcom/android/systemui/statusbar/SecNotificationInfo;
.super Landroid/widget/LinearLayout;
.source "SecNotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SecNotificationInfo$CheckSaveListener;,
        Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;,
        Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;

.field private mAppUid:I

.field private mChannelDisabledView:Landroid/view/View;

.field private mChannelEnabledSwitch:Landroid/widget/Switch;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/SecNotificationInfo$CheckSaveListener;

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsSingleDefaultChannel:Z

.field private mNotificationChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mNumChannelsView:Landroid/widget/TextView;

.field private mPkg:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mSettingsLinkView:Landroid/widget/TextView;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field private mStartingUserImportance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private bindButtons(Z)V
    .registers 6

    const/4 v2, 0x0

    const v1, 0x7f0a00d2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    iget v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    if-nez p1, :cond_31

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_31

    const/4 v0, 0x1

    :goto_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_33

    :goto_21
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/systemui/statusbar/-$Lambda$V4tXLXFeHsuF4xX04Nti9zORMDo;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/-$Lambda$V4tXLXFeHsuF4xX04Nti9zORMDo;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_2f
    move v1, v2

    goto :goto_13

    :cond_31
    const/4 v0, 0x0

    goto :goto_1d

    :cond_33
    const/4 v2, 0x4

    goto :goto_21
.end method

.method private getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;
    .registers 13

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_24

    :cond_23
    return-object v5

    :cond_24
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_45

    const-string/jumbo v3, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_45
    const-string/jumbo v3, "android.intent.extra.NOTIFICATION_ID"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.NOTIFICATION_TAG"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method private getSelectedImportance()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    return v0
.end method

.method private hasImportanceChanged()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getSelectedImportance()I

    move-result v2

    if-eq v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private saveImportance()V
    .registers 7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->hasImportanceChanged()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getSelectedImportance()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    sub-int v3, v1, v3

    const/16 v4, 0x123

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getSelectedImportance()I

    move-result v2

    if-nez v2, :cond_44

    sget-object v2, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v3, "1126"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    :try_start_4f
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-interface {v2, v3, v4, v5}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5a} :catch_5b

    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    goto :goto_5a
.end method

.method private updateAppSettingsLink()V
    .registers 9

    const/4 v7, 0x0

    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_6a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getSelectedImportance()I

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f1207df

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$V4tXLXFeHsuF4xX04Nti9zORMDo$2;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/statusbar/-$Lambda$V4tXLXFeHsuF4xX04Nti9zORMDo$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_69
    return-void

    :cond_6a
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsLinkView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_69
.end method

.method private updateSecondaryText()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_21

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getSelectedImportance()I

    move-result v1

    if-nez v1, :cond_1f

    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelDisabledView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1207e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_17
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_b

    :cond_21
    const/4 v0, 0x0

    goto :goto_b

    :cond_23
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelDisabledView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f12011f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_17
.end method


# virtual methods
.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Ljava/util/List;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/SecNotificationInfo$CheckSaveListener;Ljava/util/Set;Lcom/android/systemui/NotificationBlockManager;Landroid/os/UserManager;)V
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;I",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/statusbar/SecNotificationInfo$CheckSaveListener;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/systemui/NotificationBlockManager;",
            "Landroid/os/UserManager;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPkg:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/SecNotificationInfo$CheckSaveListener;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mStartingUserImportance:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPkg:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v5, ""

    const/4 v13, 0x0

    :try_start_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mPkg:Ljava/lang/String;

    move-object/from16 v22, v0

    const v23, 0xc2200

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    if-eqz v13, :cond_77

    invoke-virtual/range {p6 .. p6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_76} :catch_e5

    move-result-object v19

    :cond_77
    :goto_77
    const-class v22, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/KnoxStateMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v22

    if-eqz v22, :cond_a8

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p13

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :cond_a8
    const v22, 0x7f0a03c1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_eb

    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "bindNotification requires at least one channel"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :catch_e5
    move-exception v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    goto :goto_77

    :cond_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_31c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationChannel;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "miscellaneous"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_318

    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-gt v0, v1, :cond_314

    const/16 v22, 0x1

    :goto_12e
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    :goto_134
    const v22, 0x7f0a039f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    move/from16 v22, v0

    if-eqz v22, :cond_32e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f1207ec

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNumChannelsView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v22, v0

    if-nez v22, :cond_426

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const v24, 0x7f1207f6

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_19c
    const v22, 0x7f0a03c2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v22, 0x7f0a00d3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v15

    if-eqz v15, :cond_1fb

    invoke-virtual {v15}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v11

    :cond_1fb
    const v22, 0x7f0a01c9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v22, 0x7f0a03c0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v11, :cond_449

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_228
    const/4 v14, 0x0

    if-eqz p12, :cond_459

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p12

    move-object/from16 v1, p3

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/NotificationBlockManager;->updateBlockable(Ljava/lang/String;ZLandroid/app/NotificationChannel;)Z

    move-result v22

    xor-int/lit8 v14, v22, 0x1

    :goto_241
    if-eqz p11, :cond_24d

    move-object/from16 v0, p11

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    or-int v14, v14, v22

    :cond_24d
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/SecNotificationInfo;->bindButtons(Z)V

    const v22, 0x7f0a00d1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mChannelDisabledView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateSecondaryText()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v0, v7, Landroid/content/res/Configuration;->showButtonBackground:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_491

    const/16 v21, 0x1

    :goto_282
    const v22, 0x7f0a0331

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_2de

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    move/from16 v22, v0

    if-ltz v22, :cond_495

    if-eqz p7, :cond_495

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppUid:I

    new-instance v22, Lcom/android/systemui/statusbar/-$Lambda$V4tXLXFeHsuF4xX04Nti9zORMDo$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct {v0, v4, v1, v2}, Lcom/android/systemui/statusbar/-$Lambda$V4tXLXFeHsuF4xX04Nti9zORMDo$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2c6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v23

    if-eqz v21, :cond_4a0

    const v22, 0x7f0805ae

    :goto_2cf
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2de
    const v22, 0x7f0a0186

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_310

    const v22, 0x7f1207ed

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p9

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v23

    if-eqz v21, :cond_4a5

    const v22, 0x7f0805ae

    :goto_303
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_310
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateAppSettingsLink()V

    return-void

    :cond_314
    const/16 v22, 0x0

    goto/16 :goto_12e

    :cond_318
    const/16 v22, 0x0

    goto/16 :goto_12e

    :cond_31c
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    goto/16 :goto_134

    :cond_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    packed-switch v22, :pswitch_data_4ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v16, v22, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f10000f

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v23

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationChannel;

    invoke-virtual/range {v22 .. v22}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v25, 0x0

    aput-object v22, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationChannel;

    invoke-virtual/range {v22 .. v22}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v25, 0x1

    aput-object v22, v24, v25

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v25, 0x2

    aput-object v22, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_15c

    :pswitch_3a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f100011

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_15c

    :pswitch_3d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationChannel;

    invoke-virtual/range {v22 .. v22}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v25, 0x0

    aput-object v22, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mNotificationChannels:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationChannel;

    invoke-virtual/range {v22 .. v22}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v25, 0x1

    aput-object v22, v24, v25

    const v22, 0x7f1207eb

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_15c

    :cond_426
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    move/from16 v22, v0

    if-eqz v22, :cond_43d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f1207f0

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_19c

    :cond_43d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_19c

    :cond_449
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_228

    :cond_459
    const/16 v22, 0x40

    :try_start_45b
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v22

    if-eqz v22, :cond_48e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v22, v0

    if-eqz v22, :cond_48b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/NotificationChannel;->isBlockableSystem()Z
    :try_end_486
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45b .. :try_end_486} :catch_4aa

    move-result v22

    xor-int/lit8 v14, v22, 0x1

    goto/16 :goto_241

    :cond_48b
    const/4 v14, 0x1

    goto/16 :goto_241

    :cond_48e
    const/4 v14, 0x0

    goto/16 :goto_241

    :cond_491
    const/16 v21, 0x0

    goto/16 :goto_282

    :cond_495
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2c6

    :cond_4a0
    const v22, 0x7f0805ac

    goto/16 :goto_2cf

    :cond_4a5
    const v22, 0x7f0805ac

    goto/16 :goto_303

    :catch_4aa
    move-exception v9

    goto/16 :goto_241

    nop

    :pswitch_data_4ae
    .packed-switch 0x1
        :pswitch_3a8
        :pswitch_3d5
    .end packed-switch
.end method

.method public getActualHeight()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getSettingClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public handleCloseControls(ZZ)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_SecNotificationInfo_13457(Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;ILandroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-interface {p1, p3, v0, p2}, Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_SecNotificationInfo_17468(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateSecondaryText()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->updateAppSettingsLink()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_SecNotificationInfo_19567(Landroid/content/Intent;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;

    invoke-interface {v0, p2, p1}, Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;->onClick(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_SecNotificationInfo_21612()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->saveImportance()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f1207e3

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f1207e2

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f
.end method

.method public saveImportanceChanged()V
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->hasImportanceChanged()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/SecNotificationInfo$CheckSaveListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/SecNotificationInfo$CheckSaveListener;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$V4tXLXFeHsuF4xX04Nti9zORMDo$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$Lambda$V4tXLXFeHsuF4xX04Nti9zORMDo$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SecNotificationInfo$CheckSaveListener;->checkSave(Ljava/lang/Runnable;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->saveImportance()V

    goto :goto_14
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method

.method public willBeRemoved()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
