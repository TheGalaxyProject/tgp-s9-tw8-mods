.class public Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;
.super Landroid/preference/PreferenceFragment;
.source "BtTetherSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/core/instrumentation/Instrumentable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$1;,
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;,
        Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private controlledbybixby:Z

.field private isDrawingFirst:Z

.field private mActivity:Landroid/app/Activity;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothState:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoveryHelpMsgPreference:Landroid/preference/Preference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTetherServerDescription:Landroid/preference/Preference;

.field private mTetheredDevicesList:Landroid/preference/PreferenceGroup;

.field private mTurnOnBtForTether:Z

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->controlledbybixby:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetherOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)I
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isPanAllowed()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->startBluetoothTethering()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isDrawingFirst:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->controlledbybixby:Z

    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addNoItemPreference()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDiscoveryHelpMsgPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "bluetooth_discovery_help_msg"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDiscoveryHelpMsgPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121821

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->setMainText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mNoDevicesPreference:Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private addTetheredDeviceCategory(Landroid/preference/PreferenceGroup;)V
    .registers 3

    const v0, 0x7f12052f

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addTetheredDevices()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    return-void
.end method

.method private addTetheredDevices()V
    .registers 7

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v4, v0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->createTetheredDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_10

    :cond_4b
    return-void
.end method

.method private connectFromNAP(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$6;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$6;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Landroid/bluetooth/BluetoothDevice;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private createTetheredDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 6

    const-string/jumbo v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createDevicePreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_2c

    const-string/jumbo v1, "BtTetherSettings"

    const-string/jumbo v2, "Trying to create a device preference before the list of group or category exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    new-instance v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private isPanAllowed()I
    .registers 15

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    if-eqz v11, :cond_a5

    const-string/jumbo v11, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_25

    const/4 v11, 0x1

    return v11

    :cond_25
    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_48

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_48

    const-string/jumbo v11, "BtTetherSettings"

    const-string/jumbo v12, "WIFI is connected, so BT tethering is not allowed by VZW requirement."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    return v11

    :cond_48
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const-string/jumbo v11, "false"

    const/4 v12, 0x0

    aput-object v11, v9, v12

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    const-string/jumbo v12, "content://com.sec.knox.provider/BluetoothPolicy"

    const-string/jumbo v13, "isBluetoothEnabled"

    invoke-static {v11, v12, v13, v9}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    const-string/jumbo v12, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v13, "isBluetoothTetheringEnabled"

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v4, :cond_6d

    :cond_6b
    const/4 v11, 0x3

    return v11

    :cond_6d
    if-eqz v5, :cond_6b

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v1, :cond_89

    const/4 v11, 0x2

    if-eq v0, v11, :cond_94

    :cond_89
    const-string/jumbo v11, "BtTetherSettings"

    const-string/jumbo v12, "Internet Sharing is not allowed by MDM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x4

    return v11

    :cond_94
    new-instance v6, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v7

    if-eqz v7, :cond_a3

    const/4 v11, 0x5

    return v11

    :cond_a3
    const/4 v11, 0x0

    return v11

    :cond_a5
    const-string/jumbo v11, "BtTetherSettings"

    const-string/jumbo v12, "mActivity is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x63

    return v11
.end method

.method private isTetherOn()Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "bluetooth.pan.tether_on"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private removeAllDevices()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_16
    return-void
.end method

.method private setBluetoothTethering(Z)V
    .registers 6

    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$5;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    return-void
.end method

.method private setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDeviceFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method private setTetherOffDescription()Landroid/preference/Preference;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01f1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12052c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12052d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2d
    if-eqz v1, :cond_36

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_36
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    return-object v0
.end method

.method private setTetherServerDescription()Landroid/preference/Preference;
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    if-nez v1, :cond_f

    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    if-nez v1, :cond_14

    return-object v3

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    const v2, 0x7f0d01f1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120530

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120531

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_46
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetherServerDescription:Landroid/preference/Preference;

    return-object v1
.end method

.method private startBluetoothTethering()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isPanAllowed()I

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PAN errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->showErrormsgfortether(I)V

    return-void

    :cond_28
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->startProvisioningIfNecessary()V

    return-void
.end method

.method private startProvisioningIfNecessary()V
    .registers 8

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "TETHER_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    :try_start_25
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_28

    :cond_2e
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->turnOnBluetoothTethering()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->controlledbybixby:Z

    if-eqz v2, :cond_28

    const-string/jumbo v2, "BtTetherSettings"

    const-string/jumbo v3, "don\'t need provisioning"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BluetoothTethering"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BluetoothTethering"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5c
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->controlledbybixby:Z

    goto :goto_28
.end method

.method private turnOnBluetoothTethering()V
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_18

    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "Bluetooth was off, turn it on first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    return-void

    :cond_18
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    return-void
.end method

.method private updateBtTetheredDeviceHistory()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mDevices:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$4;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private updateContent()V
    .registers 8

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_a3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetherOn()Z

    move-result v2

    const-string/jumbo v3, "BtTetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateContent - isTetherOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    if-eqz v2, :cond_8e

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setTetherServerDescription()Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_88

    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    :goto_56
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addTetheredDeviceCategory(Landroid/preference/PreferenceGroup;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const-string/jumbo v3, "BtTetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "numberOfTetheredDevices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v0, :cond_80

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addNoItemPreference()V

    :cond_80
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    :goto_87
    return-void

    :cond_88
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTetheredDevicesList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_56

    :cond_8e
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setTetherOffDescription()Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    goto :goto_87

    :cond_a3
    const-string/jumbo v3, "BtTetherSettings"

    const-string/jumbo v4, "skip updateContent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x5a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_15

    const-string/jumbo v3, "BtTetherSettings"

    const-string/jumbo v4, "mActivity is null. just return"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :goto_49
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_61
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "right_pane_toolbar"

    const-string/jumbo v6, "id"

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_92

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_92
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_49
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_40

    const/4 v0, -0x1

    if-ne p2, v0, :cond_41

    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "provisioning passed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->turnOnBluetoothTethering()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->controlledbybixby:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothTethering"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothTethering"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->controlledbybixby:Z

    :cond_40
    :goto_40
    return-void

    :cond_41
    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "provisioning not passed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->controlledbybixby:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothTethering"

    const-string/jumbo v2, "Available"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothTethering"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6f
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->controlledbybixby:Z

    goto :goto_40
.end method

.method public onBluetoothStateChanged(I)V
    .registers 5

    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    :cond_2d
    const/16 v0, 0xa

    if-ne p1, v0, :cond_34

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    :cond_34
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_28

    const-string/jumbo v0, "BtTetherSettings"

    const-string/jumbo v1, "Bluetooth is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    const v0, 0x7f150035

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->addPreferencesFromResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setHasOptionsMenu(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mTurnOnBtForTether:Z

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->removeAllDevices()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_27
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 5

    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    :cond_27
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

.method onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V
    .registers 6

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    const-string/jumbo v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick :: selected device - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    :goto_2b
    return-void

    :cond_2c
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->connectFromNAP(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2b
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BluetoothTethering"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    :cond_27
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    instance-of v1, p2, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    if-eqz v1, :cond_c

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V

    const/4 v1, 0x1

    return v1

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "BtTetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileStateChanged : state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2c

    if-nez p3, :cond_31

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_31
    if-eq p3, v4, :cond_36

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3b

    :cond_36
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3b
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateBtTetheredDeviceHistory()V

    return-void
.end method

.method public onResume()V
    .registers 7

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "BluetoothTethering"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$TetherBroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_32
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mUm:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_tethering"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_79

    :cond_50
    const-string/jumbo v1, "BtTetherSettings"

    const-string/jumbo v2, "onResume: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    :goto_66
    return-void

    :cond_67
    const-string/jumbo v1, "BtTetherSettings"

    const-string/jumbo v2, "Can\'t register BroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_71
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_66

    :cond_79
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mBluetoothState:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_8b

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateBtTetheredDeviceHistory()V

    :goto_8a
    return-void

    :cond_8b
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->updateContent()V

    goto :goto_8a
.end method

.method public onScanningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 7

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->isTetherOn()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const-string/jumbo v1, "BtTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwitchChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bTetherState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, p2, :cond_36

    return-void

    :cond_36
    if-eqz p2, :cond_3c

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->startBluetoothTethering()V

    :goto_3b
    return-void

    :cond_3c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setBluetoothTethering(Z)V

    goto :goto_3b
.end method

.method showErrormsgfortether(I)V
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1221a5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    const v2, 0x7f1208a6

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121bd0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_28
    const/4 v0, 0x2

    if-ne p1, v0, :cond_37

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    const v1, 0x7f121823

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_37
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->mActivity:Landroid/app/Activity;

    const v2, 0x10402c8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4c
    return-void
.end method
