.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;
.super Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;
.source "BixbySetupWizardWifiScreenView.java"


# instance fields
.field private mHasConnectivityWhenLaunch:Z

.field private mPostWaveAudioScript:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->mPostWaveAudioScript:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->mPostWaveAudioScript:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->mPostWaveAudioScript:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public canShowConnectionDialog()Z
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->getCurrentBixbyState()I

    move-result v0

    if-eq v0, v2, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->getCurrentBixbyState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->getCurrentBixbyState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return v2
.end method

.method protected getBackgroundImage()I
    .registers 2

    const v0, 0x7f080758

    return v0
.end method

.method protected getBixbyHeaderTitle()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121e55

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBixbyIntroTitle()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121e55

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBixbyStates()[I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x4

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    return-object v0
.end method

.method protected getBodyContainerParentViewId()I
    .registers 2

    const v0, 0x7f0a0940

    return v0
.end method

.method protected getBottomButtonParentViewId()I
    .registers 2

    const v0, 0x7f0a093f

    return v0
.end method

.method protected getHeaderBackgroundImage()I
    .registers 2

    const v0, 0x7f08075c

    return v0
.end method

.method protected getIntroAudioScript()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "2_wifi_1_VZW"

    return-object v0
.end method

.method protected getPostWaveAudioScripts()Ljava/util/ArrayList;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->mPostWaveAudioScript:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->mPostWaveAudioScript:Ljava/util/ArrayList;

    const-string/jumbo v1, "2_wifi_2_VZW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->mPostWaveAudioScript:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getSoftKeyButtonVoiceCommands()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v4, 0x7f0a0945

    const v2, 0x7f0a0942

    const v3, 0x7f0a093e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onBackButtonPressed()V
    .registers 5

    invoke-super {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->onMoveToPreviousScreen()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbyButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->onCreate(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->mHasConnectivityWhenLaunch:Z

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->onDestroy()V

    return-void
.end method

.method public onNextButtonPressed()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->isBixbyAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->onMoveToNextScreen()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbySetupWizardWifiScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mBixbyButtonHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->onResume()V

    return-void
.end method
