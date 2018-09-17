.class public Lcom/samsung/android/settings/wifi/WifiOffloadDialog;
.super Landroid/app/Activity;
.source "WifiOffloadDialog.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/samsung/android/settings/wifi/ButtonImageBarHandler;


# instance fields
.field private dialogLayout:Landroid/view/View;

.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsUserAction:Z

.field private mOrientation:I

.field private mPackageName:Ljava/lang/String;

.field private mTaskID:I

.field private mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->doFinish(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mActivityMgr:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mIsUserAction:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mPackageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->dialogLayout:Landroid/view/View;

    return-void
.end method

.method private doFinish(Z)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mIsUserAction:Z

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_17

    const-string/jumbo v0, "WifiOffloadDialog"

    const-string/jumbo v1, "Start 12 hours timer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiOffloadManager;->startTimer()V

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getDimension(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mActivityMgr:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .registers 8

    const v6, 0x1080a42

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mActivityMgr:Landroid/app/ActivityManager;

    const-string/jumbo v2, "wifioffload"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiOffloadManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    const v2, 0x7f0a0298

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_46

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3e

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_3e
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_46
    const v2, 0x7f0a0299

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_6b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_63

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_63
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6b
    return-void
.end method

.method private updateLayoutOnOrientationChange()V
    .registers 4

    const v2, 0x7f0a09b9

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0708de

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getDimension(I)I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public getNextButton()Landroid/widget/Button;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNextButton()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasNextButtonImage()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->doFinish(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_28

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->updateLayoutOnOrientationChange()V

    :cond_28
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mOrientation:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0d03aa

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string/jumbo v1, "EXTRA_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mPackageName:Ljava/lang/String;

    :cond_1a
    return-void
.end method

.method protected onPause()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mIsUserAction:Z

    if-nez v0, :cond_7c

    const-string/jumbo v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "top activity :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string/jumbo v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dialog TaskID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mWifiOffloadManager:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mTaskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    :cond_7c
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->initialize()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_11
    return-void
.end method

.method public setEnableNextButtonImage(Z)V
    .registers 2

    return-void
.end method
