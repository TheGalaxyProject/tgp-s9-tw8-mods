.class public Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;
.super Landroid/app/Activity;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/samsung/android/settings/wifi/ButtonImageBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;,
        Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    }
.end annotation


# static fields
.field public static mLaunchModeEmail:Z


# instance fields
.field private button_transY:F

.field private isApCheckDone:Z

.field private isFirstEnterWifiSetupWizard:I

.field private isKmeSupported:Z

.field private isSingleSkuPrepaid:Z

.field private isWifiPromptScreen:Z

.field private mAllowBack:Z

.field public mBixbyButtonHandler:Landroid/os/Handler;

.field mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

.field private mBottomButtonBar:Landroid/view/View;

.field private mConnCheckProgressDialog:Landroid/app/ProgressDialog;

.field private mConnectionResult:I

.field private mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mIsBixbyMode:Z

.field private mIsFragmentCreated:Z

.field private mIsGoogleFRPLocked:Z

.field private mIsWifiConnected:Z

.field private mProgressBar:Landroid/view/View;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshButton:Landroid/widget/Button;

.field private mSkipButton:Landroid/widget/Button;

.field private mSuccessWifiConNID:I

.field private mTitleText:Landroid/widget/TextView;

.field private mUsesSoftNavigationKeys:Z

.field private mWifiAPId:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsView:Landroid/view/View;

.field private mWifiSubtitleText:Landroid/widget/TextView;

.field private transX:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isKmeSupported:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isSingleSkuPrepaid:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsGoogleFRPLocked:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->handleUiLayoutForSoftKeys(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->onNextButtonPressed(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnCheckProgressDialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSubtitleText:Landroid/widget/TextView;

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isApCheckDone:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSkipButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->transX:F

    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->button_transY:F

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mTitleText:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isKmeSupported:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mAllowBack:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mUsesSoftNavigationKeys:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbyButtonHandler:Landroid/os/Handler;

    return-void
.end method

.method private final animateButtonBar()V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "vzw_wifi_button_bar_animation"

    const-string/jumbo v4, "anim"

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBottomButtonBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1d
    return-void
.end method

.method private final animateSubtitle()V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "vzw_wifi_subtitle_animation"

    const-string/jumbo v4, "anim"

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1d
    return-void
.end method

.method private getDimension(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLayoutVersion()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mUsesSoftNavigationKeys:Z

    if-nez v1, :cond_12

    const-string/jumbo v1, "_back"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const v11, 0x7f121e60

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handle Connection State: Action ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "What is the Connection Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_9e

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v1

    iget v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    if-eq v4, v1, :cond_94

    iput v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    if-eqz v4, :cond_90

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    invoke-virtual {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->canShowConnectionDialog()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_90

    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v5, "Don\'t show the connection dialog during Bixby animation"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7e
    iput v8, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    new-instance v4, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8f
    :goto_8f
    return-void

    :cond_90
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showConnProgressDialog()V

    goto :goto_7e

    :cond_94
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v5, " This AP is already passed Netowrk Connection and it has valid internet connection"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :cond_9e
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSkipButton:Landroid/widget/Button;

    const v5, 0x7f1219a2

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    iput v8, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iput v8, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    goto :goto_8f

    :cond_b1
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_116

    const-string/jumbo v4, "wifi_state"

    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " Wifi State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f7

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSubtitleText:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8f

    :cond_f7
    if-ne v3, v9, :cond_8f

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSubtitleText:Landroid/widget/TextView;

    const v5, 0x7f1221bb

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8f

    :cond_116
    const-string/jumbo v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_136

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSubtitleText:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8f

    :cond_136
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v5, "No Networks Found"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSubtitleText:Landroid/widget/TextView;

    const v5, 0x7f121342

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    goto/16 :goto_8f
.end method

.method private handleUiLayoutForSoftKeys(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v1, v0, 0x100

    or-int/lit16 v1, v1, 0x200

    or-int/lit8 v1, v1, 0x2

    or-int/lit16 v0, v1, 0x1000

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private hideSoftKeysOnKeyboardDismiss()V
    .registers 4

    const v1, 0x7f0a0944

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$14;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$14;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_15
    return-void

    :cond_16
    const-string/jumbo v1, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v2, "activityRootView null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private initializeView()V
    .registers 9

    const/4 v5, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v4, "initializeView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->hasBorderlessLayout()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->setCustomTitle(Landroid/app/Activity;)V

    :cond_16
    const v3, 0x7f0a0946

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSubtitleText:Landroid/widget/TextView;

    const v3, 0x7f0a0945

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSkipButton:Landroid/widget/Button;

    const v3, 0x7f0a0942

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    const v3, 0x7f0a0940

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;

    const v3, 0x7f0a093f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBottomButtonBar:Landroid/view/View;

    const v3, 0x7f0a0947

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mTitleText:Landroid/widget/TextView;

    const v3, 0x7f0a0682

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressBar:Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->isOnlyDreamqDevice()Z

    move-result v3

    if-eqz v3, :cond_8d

    const/high16 v3, 0x42040000    # 33.0f

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v3, 0x7f070895

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v3

    float-to-int v4, v2

    const v5, 0x7f07089b

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v5

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8d
    const-string/jumbo v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFirstEnterWifiSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isFirstEnterWifiSetupWizard:I

    if-ne v3, v7, :cond_b7

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "first_enter_wifisetupwizard"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b7
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-ne v3, v7, :cond_e0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSubtitleText:Landroid/widget/TextView;

    const v4, 0x7f1221bb

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mRefreshButton:Landroid/widget/Button;

    new-instance v4, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$3;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSkipButton:Landroid/widget/Button;

    new-instance v4, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$4;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsBixbyMode:Z

    if-nez v3, :cond_fe

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->animateSubtitle()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->animateButtonBar()V

    :cond_fe
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->hasBorderlessLayout()Z

    move-result v3

    if-eqz v3, :cond_107

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setBorderlessLayout()V

    :cond_107
    return-void
.end method

.method private onNextButtonPressed(I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "is_wifi_connected"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    return-void
.end method

.method private static readGoogleFRPFlag(Landroid/content/Context;)Z
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    new-instance v2, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v4

    if-nez v4, :cond_18

    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v5, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_18
    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readGoogleFRPFlag : getServiceSupport is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v7, :cond_42

    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v5, "readGoogleFRPFlag : feature is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_42
    invoke-virtual {v2, v7}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_65

    if-ne v0, v7, :cond_66

    :cond_65
    const/4 v3, 0x1

    :cond_66
    const-string/jumbo v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readGoogleFRPFlag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private setMargins(IIIILandroid/widget/LinearLayout;)V
    .registers 7

    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private showAlertDialog(I)V
    .registers 9

    const/4 v6, 0x0

    const v5, 0x7f1208a6

    const/4 v4, 0x0

    const-string/jumbo v1, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Show the Alert Dialog for the connection Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    :cond_34
    const/4 v1, -0x1

    if-ne p1, v1, :cond_41

    const-string/jumbo v1, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v2, "Not determined..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_164

    :goto_49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mUsesSoftNavigationKeys:Z

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x802

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_67
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x5

    if-ne p1, v1, :cond_83

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_83
    return-void

    :pswitch_84
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    const v1, 0x7f12133f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f12133d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$6;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_49

    :pswitch_ad
    const v1, 0x7f121e57

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121e56

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121e59

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$7;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121ffc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$8;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$9;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_49

    :pswitch_e9
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121e5c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1213e0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$10;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_49

    :pswitch_107
    const v1, 0x7f121349

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121348

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$11;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_49

    :pswitch_12c
    const v1, 0x7f121e5d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f12133e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1219a0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$12;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121e5e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$13;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_49

    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_84
        :pswitch_ad
        :pswitch_e9
        :pswitch_107
        :pswitch_12c
    .end packed-switch
.end method

.method private showConnProgressDialog()V
    .registers 6

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, " Show the Connection Check Progress Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    :cond_33
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f121e5a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$5;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mUsesSoftNavigationKeys:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x802

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_81
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private updateLayoutMarginOnOrienationChange()V
    .registers 7

    const v3, 0x7f07088c

    const/4 v2, 0x0

    const v0, 0x7f0a0940

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v3

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setMargins(IIIILandroid/widget/LinearLayout;)V

    return-void
.end method

.method private wifiConnSuccess()V
    .registers 3

    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, " WiFi Connection Success "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSkipButton:Landroid/widget/Button;

    const v1, 0x7f121291

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iget v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    return-void
.end method


# virtual methods
.method public getNextButton()Landroid/widget/Button;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v3, 0x1

    const v1, 0x7f1219a2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    :goto_1b
    :pswitch_1b
    return v3

    :pswitch_1c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    goto :goto_1b

    :pswitch_2b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    goto :goto_1b

    :pswitch_3b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    goto :goto_1b

    :pswitch_4b
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    goto :goto_1b

    :pswitch_4f
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_1c
        :pswitch_2b
        :pswitch_3b
        :pswitch_1b
        :pswitch_1b
        :pswitch_4f
    .end packed-switch
.end method

.method protected hasBorderlessLayout()Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
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

.method public isSCamera()Z
    .registers 3

    const-string/jumbo v0, "gd1ltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v1, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v2, "onActivityResult Called !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2a

    if-ne p2, v3, :cond_2a

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "is_wifi_connected"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_29

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->onNextButtonPressed()V

    goto :goto_29

    :cond_38
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->onNextButtonPressed(I)V

    goto :goto_29
.end method

.method public onBackArrowPressed(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->onBackButtonPressed()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->onBackPressed()V

    goto :goto_9
.end method

.method public onBackPressed()V
    .registers 4

    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, " onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_19
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mAllowBack:Z

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    :cond_29
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->updateLayoutMarginOnOrienationChange()V

    :cond_2c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->isBixbyMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsBixbyMode:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsBixbyMode:Z

    if-eqz v1, :cond_1d

    const v1, 0x7f13027f

    invoke-super {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1d
    const-string/jumbo v1, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v2, "OnCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "wifiPrompt"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isKmeSupported"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isKmeSupported:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "allowBack"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mAllowBack:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "launchModeEmail"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mLaunchModeEmail:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isSingleSkuPrepaid"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isSingleSkuPrepaid:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "usesSoftNavigationKeys"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mUsesSoftNavigationKeys:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    :cond_84
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isSCamera()Z

    move-result v1

    if-nez v1, :cond_92

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_95

    :cond_92
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setRequestedOrientation(I)V

    :cond_95
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "first_enter_wifisetupwizard"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->isFirstEnterWifiSetupWizard:I

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vzw_wifi_setupwizard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getLayoutVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "layout"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "vzw_wifi_setupwizard"

    const-string/jumbo v3, "layout"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_e7
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsBixbyMode:Z

    if-eqz v1, :cond_155

    const v1, 0x7f0d0370

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setContentView(I)V

    const v1, 0x7f0a00fa

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->onCreate(Landroid/content/Context;)V

    :goto_101
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsGoogleFRPLocked:Z

    const-string/jumbo v1, "persist.sys.vzw_wifi_running"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$2;-><init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mUsesSoftNavigationKeys:Z

    if-eqz v1, :cond_154

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->hideSoftKeysOnKeyboardDismiss()V

    :cond_154
    return-void

    :cond_155
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->setContentView(I)V

    goto :goto_101
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->onDestroy()V

    :cond_39
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string/jumbo v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v1, " OnPause Called ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->onPause()V

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 7

    const/16 v5, 0x802

    const-string/jumbo v2, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " OnResume Called ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mUsesSoftNavigationKeys:Z

    if-eqz v2, :cond_57

    invoke-direct {p0, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->handleUiLayoutForSoftKeys(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3e
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_57
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    if-nez v2, :cond_84

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0941

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    :cond_84
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbySetupWizardWifiScreenView:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->onResume()V

    :cond_94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mIsBixbyMode:Z

    invoke-static {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->isBixbyMode(Landroid/content/Context;)Z

    move-result v3

    if-eq v2, v3, :cond_a2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->recreate()V

    :cond_a2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-direct {p0, p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->handleUiLayoutForSoftKeys(Landroid/app/Activity;)V

    return-void
.end method

.method public refreshWifiApList()V
    .registers 6

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "forceUpdateAPs"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v1

    const-string/jumbo v3, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v4, "Exception thrown when trying to force update list of APs"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method protected setBorderlessLayout()V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "tablet_container"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06022d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    const-string/jumbo v2, "SetupWizard --> SetupWizardWifiScreen"

    const-string/jumbo v3, "Exception occur during setBorderlessLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b
.end method

.method public setEnableNextButtonImage(Z)V
    .registers 2

    return-void
.end method
