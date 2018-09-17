.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;
.super Ljava/lang/Object;
.source "DeskPanel.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

.field private mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

.field private mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mPosition:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTaskBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-void
.end method

.method private makeAndAddDeskPanelViewNotification()V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v0, 0x7f0d0038

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->init(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->add(Landroid/view/View;)V

    :cond_2d
    return-void
.end method

.method private makeAndAddDeskPanelViewQuickSetting()V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->init(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->add(Landroid/view/View;)V

    :cond_26
    return-void
.end method

.method private reloadDimens()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mTaskBarHeight:I

    :cond_13
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->addNotification(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public changeDeskPanelViewNotificationPositionX()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->changeDeskPanelViewNotificationPositionX()V

    :cond_9
    return-void
.end method

.method public collapseAll(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseAll(Z)V

    :cond_12
    return-void
.end method

.method public collapseDeskPanelViewNotification(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskPanelViewNotification(Z)V

    :cond_9
    return-void
.end method

.method public collapseDeskPanelViewQuickSetting(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseDeskPanelViewQuickSetting(Z)V

    :cond_9
    return-void
.end method

.method public getDeskPanelViewNotification()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    return-object v0
.end method

.method public getDeskPanelViewNotificationAllArea()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationAllArea()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method public getDeskPanelViewNotificationHeadsUp()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationHeadsUp()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method public getDeskPanelViewNotificationPreview()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationPreview()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method public getDeskPanelViewQuickSetting()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    return-object v0
.end method

.method public getDeskPanelViewQuickSettingContainer()Landroid/view/ViewGroup;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskPanelViewQuickSettingContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method public getTaskBarHeight()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mTaskBarHeight:I

    return v0
.end method

.method public getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    return-object v0
.end method

.method public isDeskPanelViewNotificationAllVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskPanelViewNotificationAllVisible()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isDeskPanelViewNotificationHeadsUpVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskPanelViewNotificationHeadsUpVisible()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isDeskPanelViewNotificationPreviewVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskPanelViewNotificationPreviewVisible()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isDeskPanelViewNotificationVisible()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isDeskPanelViewNotificationAllVisible()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isDeskPanelViewNotificationHeadsUpVisible()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isDeskPanelViewNotificationPreviewVisible()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public isDeskPanelViewQuickSettingVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->isDeskPanelViewQuickSettingVisible()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isTaskBarArea(FF)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mPosition:I

    packed-switch v2, :pswitch_data_1e

    return v1

    :pswitch_8
    return v1

    :pswitch_9
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mTaskBarHeight:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10

    :pswitch_13
    return v1

    :pswitch_14
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mTaskBarHeight:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b

    :pswitch_data_1e
    .packed-switch 0x100000
        :pswitch_8
        :pswitch_9
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public isThisNotificationPreview(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isThisNotificationPreview(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public notifyDeskPanelPositionChanged(I)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mPosition:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelPositionChanged(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->notifyDeskPanelPositionChanged(I)V

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->setPanelPosition(I)V

    return-void
.end method

.method public onDeskStatusBarIconMouseLeftClick(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->onDeskStatusBarIconMouseLeftClick(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public removeNotification(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeNotification(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public removeOnlyOneDeskNotificationAnimation(Landroid/view/View;Ljava/lang/Runnable;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeOnlyOneDeskNotificationAnimation(Landroid/view/View;Ljava/lang/Runnable;I)V

    :cond_9
    return-void
.end method

.method public replaceDeskPanelViewQuickSetting(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->replaceDeskPanelViewQuickSetting(Z)V

    :cond_9
    return-void
.end method

.method public setClearAllEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setClearAllEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setCurrentDisplaySize(Landroid/graphics/Point;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setCurrentDisplaySize(Landroid/graphics/Point;)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->setCurrentDisplaySize(Landroid/graphics/Point;)V

    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->reloadDimens()V

    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    :cond_9
    return-void
.end method

.method public setOnKeyguard(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setOnKeyguard(Z)V

    :cond_9
    return-void
.end method

.method public setStatusBarState(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setStatusBarState(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->setStatusBarState(IZ)V

    :cond_12
    return-void
.end method

.method public setup()V
    .registers 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->makeAndAddDeskPanelViewNotification()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->makeAndAddDeskPanelViewQuickSetting()V

    return-void
.end method

.method public toggleDeskPanelViewNotificationAll(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->toggleDeskPanelViewNotificationAll(Z)V

    :cond_9
    return-void
.end method

.method public toggleDeskPanelViewQuickSetting(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->toggleDeskPanelViewQuickSetting(Z)V

    :cond_9
    return-void
.end method

.method public updateNotification(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->updateNotification(Landroid/view/View;)V

    :cond_9
    return-void
.end method
