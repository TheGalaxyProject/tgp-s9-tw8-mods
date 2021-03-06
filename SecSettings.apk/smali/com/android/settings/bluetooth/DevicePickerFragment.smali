.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# static fields
.field private static final DEBUG:Z

.field private static mLocalAdapterName:Ljava/lang/String;

.field private static mSelected:Landroid/bluetooth/BluetoothDevice;


# instance fields
.field private mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mCallFromHeadset:Z

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mProgressItem:Landroid/view/MenuItem;

.field private mScan:Landroid/view/MenuItem;

.field private mScreenId:Ljava/lang/String;

.field private mStartScanOnResume:Z

.field private mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;II)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setFilter(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    return-void
.end method

.method private addVisibleGuidePreferenceGroup()V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v1, :cond_17

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const v2, 0x7f0d01f1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    :cond_17
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    sget-boolean v1, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    if-eqz v1, :cond_22

    const-string/jumbo v1, "DevicePickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDevicePickedIntent :: device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    sget-boolean v1, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v1, :cond_48

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "DeviceName"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "MacAddress"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_47
    return-void

    :cond_48
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_65
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_47
.end method


# virtual methods
.method addPreferencesForActivity()V
    .registers 11

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addVisibleGuidePreferenceGroup()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v2, :cond_77

    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    :goto_28
    sget-boolean v2, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v2, :cond_7d

    const/16 v2, 0x8

    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    :goto_30
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const v4, 0x7f12049b

    invoke-direct {p0, v2, v4, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;II)V

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v8, :cond_42

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-ne v2, v9, :cond_87

    :cond_42
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    :goto_44
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_8a

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1204c3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    return-void

    :cond_77
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    goto :goto_28

    :cond_7d
    const-string/jumbo v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    goto :goto_30

    :cond_87
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    goto :goto_44

    :cond_8a
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v6, :cond_aa

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v8, :cond_aa

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v9, :cond_aa

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1204c4

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    return-void

    :cond_aa
    return-void
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x19

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .registers 2

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListDivider(Landroid/graphics/drawable/InsetDrawable;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const-string/jumbo v0, "DevicePickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChanged :: bluetoothState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_24

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    :cond_24
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    sget-boolean v2, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v2, :cond_32

    const v2, 0x7f1204d2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :goto_1f
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_25
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    const v2, 0x7f121721

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    return-void

    :cond_32
    const v2, 0x7f12080b

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_1f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 9

    const v5, 0x7f0d005d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v1, 0x7f0e0002

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0a0682

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_55

    const v1, 0x7f1218a7

    :goto_24
    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_45
    if-eqz v0, :cond_5f

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    :goto_51
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_55
    const v1, 0x7f1204c0

    goto :goto_24

    :cond_59
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_45

    :cond_5f
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_51
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 7

    const-string/jumbo v1, "DevicePickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceBondStateChanged :: device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bondState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mCallFromHeadset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    if-ne p2, v1, :cond_54

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    sget-boolean v1, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-nez v1, :cond_54

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez v1, :cond_54

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    :cond_54
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .registers 9

    sget-boolean v3, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    if-eqz v3, :cond_31

    const-string/jumbo v3, "DevicePickerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDevicePreferenceClick :: mSelectedDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mCallFromHeadset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.android.bluetooth"

    const-string/jumbo v5, "BDCC"

    const-string/jumbo v6, "DevicePicker"

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f121718

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1209c9

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const v3, 0x7f1209f8

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x100

    if-eq v2, v3, :cond_83

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a2

    :cond_83
    const-string/jumbo v0, "Personal Device"

    :goto_86
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v3, :cond_b3

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_ab

    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    :goto_a1
    return-void

    :cond_a2
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForSAlogging()Ljava/lang/String;

    move-result-object v0

    goto :goto_86

    :cond_ab
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    sput-object v3, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelected:Landroid/bluetooth/BluetoothDevice;

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_a1

    :cond_b3
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-eqz v3, :cond_bb

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClickForHeadset(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_a1

    :cond_bb
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_cd

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_d6

    :cond_cd
    iget-object v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_a1

    :cond_d6
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_a1
.end method

.method onFinishListAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_a
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_7c

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_d
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_57

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_58

    const-string/jumbo v1, "DevicePickerFragment"

    const-string/jumbo v2, "onOptionsItemSelected :: Stop scanning"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3a
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    const v1, 0x7f1207d2

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Button"

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanFinishAction:Ljava/lang/String;

    :goto_4b
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    const v2, 0x7f1209fa

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    return v3

    :cond_58
    const-string/jumbo v1, "DevicePickerFragment"

    const-string/jumbo v2, "onOptionsItemSelected :: Start scanning"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->startScanning()Z

    const v1, 0x7f1207d1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :sswitch_6c
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    const v2, 0x7f1209f9

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    return v3

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_d
        0x102002c -> :sswitch_6c
    .end sparse-switch
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V

    const-string/jumbo v0, "DevicePickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileStateChanged :: profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelected:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4a

    if-ne p3, v3, :cond_49

    sget-object v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelected:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    sput-object v4, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelected:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    instance-of v0, p2, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_59

    if-ne p3, v3, :cond_49

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_49

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_49

    :cond_59
    instance-of v0, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_49

    if-ne p3, v3, :cond_49

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_49

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_49
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .registers 10

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    const-string/jumbo v4, "DevicePickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onScanningStateChanged :: is start scanning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v4, :cond_2c

    iget-object v5, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz p1, :cond_3c

    const v4, 0x7f1218a7

    :goto_29
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2c
    if-nez p1, :cond_a9

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v4, :cond_40

    const-string/jumbo v4, "DevicePickerFragment"

    const-string/jumbo v5, "mAvailableDevicesCategory is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3c
    const v4, 0x7f1204c0

    goto :goto_29

    :cond_40
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v4

    iget-boolean v4, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v4, :cond_98

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_4a
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v2, v4, :cond_6b

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_68

    add-int/lit8 v0, v0, 0x1

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_6b
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.android.bluetooth"

    const-string/jumbo v6, "BSDC"

    mul-int/lit16 v7, v0, 0x3e8

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_96

    const/4 v3, 0x1

    :goto_87
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)Z

    :goto_8e
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_96
    const/4 v3, 0x0

    goto :goto_87

    :cond_98
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v4, :cond_a1

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_a1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    goto :goto_8e

    :cond_a9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->removeSelectedGroupDevices()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)Z

    goto :goto_8e
.end method

.method public onStart()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    :cond_10
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_21

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)Z

    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onStop()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_18
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const v2, 0x7f1204c0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_24
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_35

    const/4 v0, 0x1

    :goto_2d
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)Z

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method onStopScanningState()V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v1, :cond_e

    const-string/jumbo v1, "DevicePickerFragment"

    const-string/jumbo v2, "mAvailableDevicesCategory is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.bluetooth"

    const-string/jumbo v3, "BSDC"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2d
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_3e

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)Z

    return-void

    :cond_3e
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public startScanning()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    move-result v0

    return v0
.end method
