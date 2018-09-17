.class public Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field public static IS_ACTION_BUTTON:Z

.field private static mScanBtn:Landroid/widget/Button;


# instance fields
.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d005e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateDialogHeight()V

    return-object v0
.end method

.method private initialize()V
    .registers 6

    const/4 v4, 0x0

    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f1218cf

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f1218a7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0055

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a08c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0682

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->setupAlert()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    sget-object v2, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDialogHeight()V
    .registers 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a0103

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v2, :cond_14

    if-nez v1, :cond_21

    :cond_14
    const-string/jumbo v4, "BluetoothScanDialog"

    const-string/jumbo v5, "updateDialogHeight :: Can\'t find BT fragment"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .registers 4

    const/16 v0, 0xd

    if-ne p1, v0, :cond_10

    const-string/jumbo v0, "BluetoothScanDialog"

    const-string/jumbo v1, "onBluetoothStateChanged :: BluetoothScanDialog will finish by bluetooth disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    :cond_10
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    packed-switch p2, :pswitch_data_18

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    goto :goto_3

    :pswitch_data_18
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateDialogHeight()V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1b

    const-string/jumbo v0, "BluetoothScanDialog"

    const-string/jumbo v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5e

    const-string/jumbo v0, "BluetoothScanDialog"

    const-string/jumbo v1, "onCreate :: Can\'t lunch Scandialog, Bluetooth is not ON state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_4d
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12171a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScreenId:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    return-void

    :cond_5e
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string/jumbo v0, "BluetoothScanDialog"

    const-string/jumbo v1, "onCreate :: Can\'t lunch Scandialog, BluetoothSettings is foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    goto :goto_3d
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_10
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 2

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 2

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateScanStateView()V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .registers 5

    const-string/jumbo v0, "BluetoothScanDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanningStateChanged :: started = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateScanStateView()V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_11
    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f1204c0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_f
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    return-void
.end method

.method public updateScanStateView()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f1218a7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_16
    return-void

    :cond_17
    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f1204c0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_16
.end method
