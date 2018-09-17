.class public Lcom/android/systemui/statusbar/SecNotificationSnooze;
.super Landroid/widget/LinearLayout;
.source "SecNotificationSnooze.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mDone:Landroid/widget/TextView;

.field private mExpanded:Z

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field private mSnoozeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mExpanded:Z

    return-void
.end method

.method private closeSnoozeOption(Landroid/view/View;)V
    .registers 12

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    new-array v2, v7, [I

    new-array v3, v7, [I

    iget-object v6, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->getLocationOnScreen([I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    aget v6, v3, v8

    aget v7, v2, v8

    sub-int/2addr v6, v7

    add-int v4, v6, v0

    aget v6, v3, v9

    aget v7, v2, v9

    sub-int/2addr v6, v7

    add-int v5, v6, v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v6, v4, v5, v8, v8}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method private createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .registers 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f120a2f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, p2, v5, v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;-><init>(Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v4
.end method

.method private createOptionViews()V
    .registers 8

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    :goto_13
    iget-object v4, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_52

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0d018e

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->description:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v2, v4}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_52
    return-void
.end method

.method private getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/android/systemui/Rune;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_4d

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "snooze.test"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const v1, 0x7f120a2a

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    :goto_23
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120a2c

    const/16 v2, 0x1e

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120a29

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f120a2b

    const/16 v2, 0x78

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4d
    const v1, 0x7f120a28

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    goto :goto_23
.end method

.method private setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .registers 6

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_34

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozing:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_34

    const/4 v0, 0x0

    :goto_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_34

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_34
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_SecNotificationSnooze-mthref-0(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public getActualHeight()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isExpanded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mExpanded:Z

    return v0
.end method

.method public isLeavebehind()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_SecNotificationSnooze_2965(Landroid/view/View;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->closeSnoozeOption(Landroid/view/View;)V

    sget-object v0, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v1, "1131"

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_SecNotificationSnooze_3401(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    const-string/jumbo v0, "SecNotificationSnooze"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snooze_done key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " SelectedOption : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    iget v2, v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->snoozeForMinutes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v1, "1130"

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    iget v2, v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->snoozeForMinutes:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->closeSnoozeOption(Landroid/view/View;)V

    sget-object v0, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v1, "1132"

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v1, :cond_18

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    :cond_18
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->updateShowButtonBackground()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a04d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$Kt2uB3dONA_lGGB93P6MCQQWMe4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$Lambda$Kt2uB3dONA_lGGB93P6MCQQWMe4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOptionViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    const v0, 0x7f0a04cc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$Kt2uB3dONA_lGGB93P6MCQQWMe4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$Lambda$Kt2uB3dONA_lGGB93P6MCQQWMe4$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/-$Lambda$Kt2uB3dONA_lGGB93P6MCQQWMe4$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$Lambda$Kt2uB3dONA_lGGB93P6MCQQWMe4$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->updateShowButtonBackground()V

    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method

.method public setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    return-void
.end method

.method public setSnoozeOptions(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_36

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/SnoozeCriterion;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2}, Landroid/service/notification/SnoozeCriterion;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v2, v7, v5, v6}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;-><init>(Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->createOptionViews()V

    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method public updateShowButtonBackground()V
    .registers 8

    const v3, 0x7f0805ae

    const v4, 0x7f0805ac

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->showButtonBackground:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3e

    const/4 v1, 0x1

    :goto_16
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    if-eqz v2, :cond_2a

    iget-object v5, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v1, :cond_40

    move v2, v3

    :goto_23
    invoke-virtual {v6, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v1, :cond_42

    :goto_36
    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    return-void

    :cond_3e
    const/4 v1, 0x0

    goto :goto_16

    :cond_40
    move v2, v4

    goto :goto_23

    :cond_42
    move v3, v4

    goto :goto_36
.end method

.method public willBeRemoved()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecNotificationSnooze;->mSnoozing:Z

    return v0
.end method
