.class public final Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;
.super Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;
.source "BluetoothIBRSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;,
        Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;,
        Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mBixbyStateId:Ljava/lang/String;

.field private mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mBixbyStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mBixbyStateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isInBandRingtoneEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->setInBandRingtone(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mReceiverRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mBixbyStateId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private isInBandRingtoneEnabled()Z
    .registers 4

    const-string/jumbo v1, "persist.bluetooth.enableinbandringing"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HFIBR-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return v0
.end method

.method private launchIBRAskPopup()V
    .registers 5

    const-string/jumbo v1, "BluetoothIBRSettings"

    const-string/jumbo v2, "launchIBRAskPopup :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120455

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120454

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pos_button"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120608

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "neg_button"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120601

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mDialogListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->launchDialog(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;Landroid/os/Bundle;)V

    return-void
.end method

.method private setInBandRingtone(Z)V
    .registers 7

    const/4 v4, 0x1

    const-string/jumbo v0, "BluetoothIBRSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInBandRingtone :: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.bluetooth.enableinbandringing"

    if-eqz p1, :cond_6f

    const-string/jumbo v0, "true"

    :goto_23
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HFIBR-set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v0, :cond_69

    const-string/jumbo v0, "BluetoothInbandRingtoneOn"

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    if-eqz p1, :cond_73

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "PhoneRingtone"

    const-string/jumbo v2, "successfullyTurnedOn"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothIBRSettings"

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0, v4}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setCheckedWithoutCallback(Z)V

    return-void

    :cond_6f
    const-string/jumbo v0, "false"

    goto :goto_23

    :cond_73
    const-string/jumbo v0, "BluetoothInbandRingtoneOff"

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "PhoneRingtone"

    const-string/jumbo v2, "successfullyTurnedOff"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothIBRSettings"

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v0, v4}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto :goto_69
.end method


# virtual methods
.method bluetoothStateChanged(I)V
    .registers 2

    return-void
.end method

.method connectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3

    return-void
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 9

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_15} :catch_46

    move-result-object v2

    :goto_16
    const-string/jumbo v4, "BluetoothIBRSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackageName :: target package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3c
    :try_start_3c
    const-string/jumbo v4, "BluetoothIBRSettings"

    const-string/jumbo v5, "getPackageName :: appInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_45} :catch_46

    goto :goto_16

    :catch_46
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_16
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_41

    move-result-object v0

    if-eqz v0, :cond_37

    const/4 v3, 0x1

    :goto_11
    const-string/jumbo v4, "BluetoothIBRSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPackageExists :: target package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", find = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_37
    :try_start_37
    const-string/jumbo v4, "BluetoothIBRSettings"

    const-string/jumbo v5, "isPackageExists :: appInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_40} :catch_41

    goto :goto_11

    :catch_41
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_11
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "BluetoothIBRSettings"

    const-string/jumbo v1, "onConfigurationChanged :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    :goto_f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121724

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const v0, 0x7f010014

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->loadAnimationResource(I)V

    return-void

    :cond_2e
    const-string/jumbo v0, "BluetoothIBRSettings"

    const-string/jumbo v1, "onCreate :: Can\'t get Local Bluetooth Manager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
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
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a07

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

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->pause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mReceiverRegistered:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mReceiverRegistered:Z

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothIBRSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->updateContentsView()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->resume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mReceiverRegistered:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "BluetoothIBRSettings"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public switchStateChange(Z)V
    .registers 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v5, "BluetoothIBRSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switchStateChange :: isChecked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "com.google.android.projection.gearhead"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz p1, :cond_2f

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isInBandRingtoneEnabled()Z

    move-result v5

    if-eqz v5, :cond_2f

    xor-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_39

    :cond_2f
    if-nez p1, :cond_43

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isInBandRingtoneEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_43

    :cond_39
    const-string/jumbo v5, "BluetoothIBRSettings"

    const-string/jumbo v6, "switchStateChange :: It is not user interaction"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    if-eqz p1, :cond_91

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1207dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_50
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120a08

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_9d

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "com.google.android.projection.gearhead"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f120459

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130262

    invoke-direct {v1, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void

    :cond_91
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1207db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_50

    :cond_9d
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_a8

    if-ne v0, v8, :cond_e8

    :cond_a8
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v5, :cond_dd

    const-string/jumbo v5, "BluetoothInbandRingtoneOn"

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    const-string/jumbo v5, "BluetoothInbandRingtoneOff"

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    :cond_c2
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "ConnectedDevices"

    const-string/jumbo v7, "Existed"

    const-string/jumbo v8, "yes"

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "BluetoothIBRSettings"

    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-static {v5, v9}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    :cond_dd
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->launchIBRAskPopup()V

    return-void

    :cond_e8
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->setInBandRingtone(Z)V

    return-void
.end method

.method updateContentsView()V
    .registers 8

    const-string/jumbo v5, "BluetoothIBRSettings"

    const-string/jumbo v6, "updateContentsView :: refresh contents"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "com.google.android.projection.gearhead"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_71

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isInBandRingtoneEnabled()Z

    move-result v5

    if-eqz v5, :cond_71

    const/4 v3, 0x1

    :goto_19
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0414

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mAnimResource:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7d

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mAnimResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->mAnimResource:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_3d
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a01bd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f120457

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120456

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_71
    const/4 v3, 0x0

    goto :goto_19

    :cond_73
    const-string/jumbo v5, "BluetoothIBRSettings"

    const-string/jumbo v6, "updateContentsView :: failed to get animation drawble.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_7d
    const v5, 0x7f0800ec

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3d
.end method
