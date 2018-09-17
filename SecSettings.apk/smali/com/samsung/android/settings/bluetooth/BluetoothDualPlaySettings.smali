.class public final Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;
.super Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;
.source "BluetoothDualPlaySettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$1;,
        Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field private mBixbyStateId:Ljava/lang/String;

.field private mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mIsA2dpProfileReady:Z

.field private mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private launchDualPlayAskPopup()V
    .registers 5

    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "launchDualPlayAskPopup :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12043d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12043c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pos_button"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c4f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "neg_button"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120601

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->launchDialog(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;Landroid/os/Bundle;)V

    return-void
.end method

.method private setDualPlayMode(Z)V
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v1, "BluetoothDualPlaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDualPlayMode :: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setCheckedWithoutCallback(Z)V

    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "setDualPlayMode :: a2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setDualPlayMode(Z)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setCheckedWithoutCallback(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "DualAudioOn"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DualAudio"

    const-string/jumbo v3, "SuccessfullyTurnedOn"

    const-string/jumbo v4, "yes"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DualAudioSettings"

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto :goto_2d

    :cond_67
    const-string/jumbo v1, "DualAudioOff"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DualAudio"

    const-string/jumbo v3, "SuccessfullyTurnedOff"

    const-string/jumbo v4, "yes"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_81
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDualPlayMode :: failed set dual play mode to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setCheckedWithoutCallback(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "DualAudioOn"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DualAudio"

    const-string/jumbo v3, "SuccessfullyTurnedOn"

    const-string/jumbo v4, "no"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    :goto_c4
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DualAudioSettings"

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v1, v5}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto/16 :goto_2d

    :cond_d3
    const-string/jumbo v1, "DualAudioOff"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DualAudio"

    const-string/jumbo v3, "SuccessfullyTurnedOff"

    const-string/jumbo v4, "no"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c4
.end method


# virtual methods
.method bluetoothStateChanged(I)V
    .registers 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->dismissDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_14
    return-void
.end method

.method connectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "onConfigurationChanged :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :goto_14
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121723

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    const v0, 0x7f010013

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->loadAnimationResource(I)V

    return-void

    :cond_33
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "onCreate :: Can\'t get Local Bluetooth Manager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public onDestroyView()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_a

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_13
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :goto_7
    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    nop

    :pswitch_data_1e
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->pause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DualAudioSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 7

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onResume()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_15

    const/16 v2, 0xa

    if-ne v1, v2, :cond_40

    :cond_15
    const-string/jumbo v2, "BluetoothDualPlaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume :: Bluetooth Dual Play Settings will finish, adapter state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->dismissDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_3f
    return-void

    :cond_40
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->updateContentsView()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->resume()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "DualAudioSettings"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "onServiceConnected :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->updateContentsView()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_3a

    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    :cond_2a
    :try_start_2a
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "onServiceConnected :: a2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_3a

    goto :goto_28

    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3d
    :try_start_3d
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "onServiceConnected :: mLocalProfileManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_3a

    goto :goto_28
.end method

.method public onServiceDisconnected()V
    .registers 3

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-nez v1, :cond_19

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    :cond_19
    return-void
.end method

.method switchStateChange(Z)V
    .registers 6

    const-string/jumbo v1, "BluetoothDualPlaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchStateChange :: isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "switchStateChange :: a2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void

    :cond_2e
    if-eqz p1, :cond_38

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v1

    if-nez v1, :cond_44

    :cond_38
    if-nez p1, :cond_4e

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4e

    :cond_44
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "switchStateChange :: It is not user interaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4e
    if-eqz p1, :cond_80

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120a04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8c

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->launchDualPlayAskPopup()V

    return-void

    :cond_80
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    :cond_8c
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayMode(Z)V

    goto :goto_2d
.end method

.method updateContentsView()V
    .registers 8

    const/4 v6, 0x0

    const-string/jumbo v4, "BluetoothDualPlaySettings"

    const-string/jumbo v5, "updateContentsView :: refresh contents"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v4, :cond_80

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v4, :cond_71

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    :goto_28
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0414

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAnimResource:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_99

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAnimResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAnimResource:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_47
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a01bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f12043e

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_6b
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    goto :goto_28

    :cond_71
    const-string/jumbo v4, "BluetoothDualPlaySettings"

    const-string/jumbo v5, "updateContentsView :: a2dpProfile is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    goto :goto_28

    :cond_80
    const-string/jumbo v4, "BluetoothDualPlaySettings"

    const-string/jumbo v5, "updateContentsView :: mLocalProfileManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    goto :goto_28

    :cond_8f
    const-string/jumbo v4, "BluetoothDualPlaySettings"

    const-string/jumbo v5, "updateContentsView :: failed to get animation drawble.."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_99
    const v4, 0x7f0800e7

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47
.end method
