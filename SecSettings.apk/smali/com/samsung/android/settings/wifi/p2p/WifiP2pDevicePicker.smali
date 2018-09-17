.class public Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;,
        Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;
    }
.end annotation


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static mConfuseState:Z

.field private static mContext:Landroid/content/Context;

.field private static mIdleStartCnt:I

.field private static mInvited:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;


# instance fields
.field actionbarpviewSelectAllConnected:Landroid/view/View;

.field private am:Landroid/app/ActivityManager;

.field private devicesCount:Ljava/lang/String;

.field private dividerParams:Landroid/widget/LinearLayout$LayoutParams;

.field private doNotFinish:Z

.field private isFirstTime:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectInProgress:Z

.field private mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mFullScanTimer:Landroid/os/CountDownTimer;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mIdleTimer:Landroid/os/CountDownTimer;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLandscape:Z

.field private mIsReceiverRegistered:Z

.field private mIsRegisteredMotionListener:Z

.field private mIsResume:Z

.field private mIsTablet:Z

.field private mLastToast:Landroid/widget/Toast;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNoDevicesPreference:Landroid/support/v7/preference/Preference;

.field private mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mP2pShare:Landroid/view/MenuItem;

.field private mPassCreate:Z

.field private mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanClicked:Z

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectAllListener:Landroid/view/View$OnClickListener;

.field private mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTalkback:Z

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private progressBarItem:Landroid/view/MenuItem;

.field private selectAll:Landroid/widget/CheckBox;

.field private selectAllView:Landroid/view/View;

.field private selectTextNumber:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->devicesCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/speech/tts/TextToSpeech;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic -get4()I
    .registers 1

    sget v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleStartCnt:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/os/CountDownTimer;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get6()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pShare:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/support/v7/preference/PreferenceGroup;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic -get9()Landroid/net/wifi/p2p/WifiP2pConfigList;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->devicesCount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .registers 1

    sput-object p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object p0
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->triggerFullScan(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->addNoDeviceLayout()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->hideProgressBar(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->p2pStateConnected(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->p2pStateDisabled(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->p2pStateDisconnected(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->p2pStateEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    sput-boolean v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    sput-boolean v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConfuseState:Z

    sput v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleStartCnt:I

    sput-object v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    sput-object v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPassCreate:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsReceiverRegistered:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsResume:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->doNotFinish:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mLastToast:Landroid/widget/Toast;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->devicesCount:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addMyDeviceCenterText(Z)V
    .registers 5

    const v2, 0x7f1220d6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-eqz v0, :cond_1a

    const v0, 0x7f1220de

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->addMyDeviceDescriptionPreference(III)V

    :goto_e
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_19
    return-void

    :cond_1a
    const v0, 0x7f1220dd

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->addMyDeviceDescriptionPreference(III)V

    goto :goto_e

    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_19
.end method

.method private addMyDeviceDescriptionPreference(III)V
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_55

    sget-object v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_55

    new-instance v1, Landroid/support/v7/preference/Preference;

    sget-object v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_55

    const v2, 0x7f0d03af

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getMyDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "<br/><br/>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_55
    return-void
.end method

.method private addNoDeviceLayout()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isAdded()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    :cond_e
    const-string/jumbo v1, "WifiP2pDevicePicker"

    const-string/jumbo v2, "Activity is null or Fragment not attached to Activity "

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    if-nez v1, :cond_39

    new-instance v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    :cond_39
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0d03b4

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1220e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private cancelConnect()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$14;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$14;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_13
    return-void
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v6, 0xe

    const/16 v5, 0xc

    const/4 v3, 0x0

    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    :try_start_10
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    xor-int/lit16 v1, v1, 0x80

    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xe

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_4f} :catch_54
    .catchall {:try_start_10 .. :try_end_4f} :catchall_62

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    :goto_53
    return-object v3

    :catch_54
    move-exception v0

    :try_start_55
    const-string/jumbo v5, "WifiP2pDevicePicker"

    const-string/jumbo v6, "convertDevAddress - NumberFormatException"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_62

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    goto :goto_53

    :catchall_62
    move-exception v5

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    throw v5
.end method

.method private getMyDeviceName()Ljava/lang/String;
    .registers 7

    sget-object v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    sget-object v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    if-nez v0, :cond_4a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_4a

    sget-object v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_14

    :cond_21
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_14

    :cond_2d
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_14
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_40
    return-object p1
.end method

.method private hideProgressBar(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    const v1, 0x7f0d03b5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_1a
.end method

.method private isEdmWifiDirectAllowed()Z
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_3c

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isWifiDirectAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3c

    :try_start_1d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isWifiDirectAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_3e

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v0

    :cond_39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3c
    const/4 v0, 0x1

    return v0

    :catchall_3e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isP2pConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method private isP2pEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    return v0
.end method

.method private p2pStateConnected(Z)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setDivider()V

    if-nez p1, :cond_4f

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAllView:Landroid/view/View;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1220e5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_42
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->actionbarpviewSelectAllConnected:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_4f
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    return-void
.end method

.method private p2pStateDisabled(Z)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-boolean v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConfuseState:Z

    if-eqz v0, :cond_17

    const-string/jumbo v0, "WifiP2pDevicePicker"

    const-string/jumbo v1, "because confuse state, do nothing in p2pStateDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConfuseState:Z

    return-void

    :cond_17
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_28

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    :cond_28
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    sput-boolean v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-eqz p1, :cond_38

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z

    if-nez v0, :cond_57

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->doNotFinish:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_57

    :cond_38
    const-string/jumbo v0, "WifiP2pDevicePicker"

    const-string/jumbo v1, "WIFI_P2P_STATE_DISABLED by certain reason"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    sget-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz v0, :cond_54

    sget-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    :cond_54
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    :cond_57
    sget-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    if-eqz v0, :cond_68

    sget-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    :cond_68
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private p2pStateDisconnected(Z)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setDivider()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "WifiP2pDevicePicker"

    const-string/jumbo v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1f

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->addMyDeviceCenterText(Z)V

    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-nez p1, :cond_28

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    :cond_28
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    if-nez v0, :cond_2e

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    :cond_2e
    return-void
.end method

.method private p2pStateEnabled(Z)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->addMyDeviceCenterText(Z)V

    sget-boolean v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v0, :cond_27

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_27
    sget-boolean v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_32
    :goto_32
    sget-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_46

    sget-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    :cond_46
    return-void

    :cond_47
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_32
.end method

.method private send()Z
    .registers 13

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f1220e1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    return v9

    :cond_1a
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v7, :cond_79

    sget-object v7, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_59

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v7, 0x4d

    iput v7, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "feature"

    const-string/jumbo v8, "WDCR"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "extra"

    const-string/jumbo v8, "Picker"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    const-string/jumbo v7, "WifiP2pDevicePicker"

    const-string/jumbo v8, "Logging - WiFi Direct Connection Request from Picker"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v7

    if-eqz v7, :cond_7a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v7, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v11, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    :cond_79
    :goto_79
    return v10

    :cond_7a
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    if-ne v7, v10, :cond_cc

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_90
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v9, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$12;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$12;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v7, v8, v1, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_90

    :cond_ad
    iput-boolean v10, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v7, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v11, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    sput-boolean v10, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto :goto_79

    :cond_cc
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v9, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$13;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$13;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_79
.end method

.method private sendP2pSettingsStartedBroadcast(Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.wifi.p2p.SETTINGS_STRATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "started"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsResume:Z

    return-void
.end method

.method private setDivider()V
    .registers 15

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v4, :cond_6f

    const/4 v12, 0x1

    :goto_c
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/support/v14/preference/R$styleable;->PreferenceFragment:[I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f04014f

    const v7, 0x1010506

    invoke-static {v5, v6, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    if-eqz v9, :cond_30

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_30
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070917

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_4c
    if-nez v12, :cond_7d

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_60
    invoke-super {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    if-eq v10, v3, :cond_69

    invoke-super {p0, v10}, Lcom/android/settings/RestrictedSettingsFragment;->setDividerHeight(I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_69} :catch_93
    .catchall {:try_start_f .. :try_end_69} :catchall_9d

    :cond_69
    if-eqz v9, :cond_6e

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    const/4 v12, 0x0

    goto :goto_c

    :cond_71
    :try_start_71
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070918

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_4c

    :cond_7d
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, v1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_92} :catch_93
    .catchall {:try_start_71 .. :try_end_92} :catchall_9d

    goto :goto_60

    :catch_93
    move-exception v11

    :try_start_94
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_9d

    if-eqz v9, :cond_6e

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6e

    :catchall_9d
    move-exception v3

    if-eqz v9, :cond_a3

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_a3
    throw v3
.end method

.method private setScanTimer(ZZ)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_49

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 v1, 0x1

    sput v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleStartCnt:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const-string/jumbo v1, "WifiP2pDevicePicker"

    const-string/jumbo v2, "setScanTimer - true ===> discoverPeersWithFlush one time for 30 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$10;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    const/16 v4, 0x64b

    invoke-virtual {v1, v2, v4, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    const-string/jumbo v1, "WifiP2pDevicePicker"

    const-string/jumbo v2, "setScanTimer - false"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v1, :cond_70

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_70

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const v2, 0x7f122100

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_70
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    if-eqz p2, :cond_49

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_49
.end method

.method private triggerFullScan(Z)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    sget v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleStartCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleStartCnt:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$11;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :goto_1a
    return-void

    :cond_1b
    sput v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleStartCnt:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_1a
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x6d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->dividerParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setDivider()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isEdmWifiDirectAllowed()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    return-void

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_66

    move v1, v2

    :goto_27
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_29} :catch_68

    :goto_29
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->am:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->setEnabled(Z)V

    return-void

    :cond_66
    const/4 v1, 0x0

    goto :goto_27

    :catch_68
    move-exception v0

    const-string/jumbo v1, "WifiP2pDevicePicker"

    const-string/jumbo v3, "Fragment not attached to Activity"

    invoke-static {v1, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_14
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_43

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getLayoutResource()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicesPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getLayoutResource()I

    move-result v2

    if-ne v1, v2, :cond_43

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->addNoDeviceLayout()V

    const-string/jumbo v1, "WifiP2pDevicePicker"

    const-string/jumbo v2, "onConfigurationChanged : nodevice found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    return-void

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 v10, 0x0

    const-wide/16 v4, 0x3e8

    const/4 v9, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500dc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPassCreate:Z

    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z

    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v1, 0x7f12049b

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    new-instance v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;

    const-wide/16 v2, 0x2710

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$3;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    new-instance v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$4;

    move-object v3, p0

    move-wide v6, v4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$4;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$5;

    const-wide/16 v2, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$5;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isEdmWifiDirectAllowed()Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    :cond_8b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_9c

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "SAMSUNG_P2P"

    invoke-virtual {v0, v1, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_9c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "IS_INVITED"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$6;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setResult(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsReceiverRegistered:Z

    if-nez v0, :cond_df

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsReceiverRegistered:Z

    :cond_df
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 11

    const v7, 0x7f0d03b5

    const/16 v6, 0xc

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v1, 0x7f1220cf

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pShare:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pShare:Landroid/view/MenuItem;

    const/4 v4, 0x6

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    sget-boolean v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pShare:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_21
    const v1, 0x7f0e000e

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0a0682

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pShare:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_96

    move v1, v2

    :goto_66
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->actionbarpviewSelectAllConnected:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->actionbarpviewSelectAllConnected:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {v0, v3, v3}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAllView:Landroid/view/View;

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_95
    :goto_95
    return-void

    :cond_96
    move v1, v3

    goto :goto_66

    :cond_98
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsResume:Z

    if-nez v1, :cond_ca

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f1220e5

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pShare:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_95

    :cond_ca
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v4, 0x7f1220e5

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pShare:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_95
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f0d03b6

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->actionbarpviewSelectAllConnected:Landroid/view/View;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->actionbarpviewSelectAllConnected:Landroid/view/View;

    const v9, 0x7f0a078a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAllView:Landroid/view/View;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->actionbarpviewSelectAllConnected:Landroid/view/View;

    const v9, 0x7f0a0172

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->actionbarpviewSelectAllConnected:Landroid/view/View;

    const v9, 0x7f0a0787

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v8

    if-nez v8, :cond_57

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const v9, 0x7f1220e5

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :goto_56
    return-object v6

    :cond_57
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAllView:Landroid/view/View;

    if-eqz v8, :cond_f5

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07091d

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v7, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v8, v7, Landroid/util/TypedValue;->data:I

    invoke-static {v8}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v0, v8, Landroid/content/res/Configuration;->fontScale:F

    const v8, 0x3f99999a    # 1.2f

    cmpl-float v8, v0, v8

    if-lez v8, :cond_99

    const v0, 0x3f99999a    # 1.2f

    :cond_99
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    mul-float v9, v1, v0

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->devicesCount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f1220e5

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    if-lez v8, :cond_111

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->devicesCount:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_de
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    if-eqz v8, :cond_f5

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->actionbarpviewSelectAllConnected:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->actionbarpviewSelectAllConnected:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/Toolbar;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto/16 :goto_56

    :cond_111
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_de
.end method

.method public onDetach()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDetach()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "SAMSUNG_P2P"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_2d
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "IS_INVITED"

    sget-boolean v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    :goto_7
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto :goto_7

    :sswitch_10
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_10
        0x102002c -> :sswitch_c
    .end sparse-switch
.end method

.method public onPause()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    const-string/jumbo v0, "WifiP2pDevicePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause - P2P connected? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-direct {p0, v3, v3}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9a

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->doNotFinish:Z

    :goto_46
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsReceiverRegistered:Z

    :cond_57
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->sendP2pSettingsStartedBroadcast(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->addMyDeviceCenterText(Z)V

    :cond_6e
    sget-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    :cond_7f
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_91
    return-void

    :cond_92
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_2c

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_2c

    :cond_9a
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->doNotFinish:Z

    goto :goto_46
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isAdded()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_10

    if-nez p1, :cond_23

    :cond_10
    const-string/jumbo v20, "WifiP2pDevicePicker"

    const-string/jumbo v21, "Fragment not attached to Activity or P2P is not enabled or peer list is empty"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_31

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_10

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    new-instance v11, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->addMyDeviceCenterText(Z)V

    invoke-virtual {v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v20

    if-nez v20, :cond_167

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-boolean v20, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-eqz v20, :cond_89

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->hideProgressBar(Z)V

    :cond_89
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_91
    :goto_91
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_a9

    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_dc

    :cond_a9
    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v20

    if-nez v20, :cond_dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_91

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v20, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v5, v0, v13}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    :cond_dc
    const/4 v12, 0x0

    sget-boolean v20, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v20, :cond_12d

    const/4 v12, 0x1

    :cond_e2
    :goto_e2
    if-eqz v12, :cond_91

    new-instance v16, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    sget-object v20, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v10, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto/16 :goto_91

    :cond_12d
    iget v0, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e2

    const/4 v12, 0x1

    goto :goto_e2

    :cond_13b
    if-gtz v3, :cond_323

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    sget-boolean v20, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-eqz v20, :cond_323

    const/16 v20, 0x0

    sput-boolean v20, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    return-void

    :cond_167
    const/16 v20, 0x0

    sput-boolean v20, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    move-object/from16 v20, v0

    if-eqz v20, :cond_323

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v20

    if-eqz v20, :cond_1e0

    const-string/jumbo v20, "WifiP2pDevicePicker"

    const-string/jumbo v21, "I am GO"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_197
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_323

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v17, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v10, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_197

    :cond_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_209

    const-string/jumbo v8, ""

    :cond_209
    const-string/jumbo v20, "WifiP2pDevicePicker"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "I am GC, my GO addr : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", converted : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_250
    :goto_250
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_323

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_27e

    iget-object v0, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2b7

    :cond_27e
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v19, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v10, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    :cond_2a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_250

    :cond_2b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_250

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_250

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v18, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v10, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_312

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    :cond_312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_250

    :cond_323
    sput-object p1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    instance-of v3, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v3, :cond_3b

    move-object v3, p1

    check-cast v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v3, :cond_1d

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b1

    :cond_1d
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1220c8

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_3b
    :goto_3b
    instance-of v3, p1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v3, :cond_ac

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_cc

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :goto_55
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v3, v4, :cond_d4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_70
    :goto_70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->devicesCount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1220e5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_da

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->devicesCount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pShare:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_ac
    :goto_ac
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    :cond_b1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v3, v6, :cond_be

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->cancelConnect()V

    goto/16 :goto_3b

    :cond_be
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    goto/16 :goto_3b

    :cond_cc
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_55

    :cond_d4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectAll:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_70

    :cond_da
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->selectTextNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pShare:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_ac
.end method

.method public onResume()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "WifiP2pDevicePicker"

    const-string/jumbo v1, "onResume() : mWifiP2pManager is null unexpectedly"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const-string/jumbo v0, "WifiP2pDevicePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume(), p2p enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", p2p connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isEdmWifiDirectAllowed()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    :cond_47
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsReceiverRegistered:Z

    if-nez v0, :cond_58

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsReceiverRegistered:Z

    :cond_58
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_a8

    const-string/jumbo v0, "WifiP2pDevicePicker"

    const-string/jumbo v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    :goto_79
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->sendP2pSettingsStartedBroadcast(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v0

    if-eqz v0, :cond_89

    sput-boolean v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    :cond_89
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$9;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_a7
    return-void

    :cond_a8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_bc

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_d4

    :cond_bc
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string/jumbo v0, "WifiP2pDevicePicker"

    const-string/jumbo v1, "in confuse state, after sending disableP2p, enable_P2p will send"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    sput-boolean v4, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConfuseState:Z

    :cond_d4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_de

    sget-boolean v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConfuseState:Z

    if-eqz v0, :cond_ed

    :cond_de
    sput-boolean v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPassCreate:Z

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPassCreate:Z

    :cond_ed
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$7;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    :cond_ff
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$8;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConfigList(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;)V

    goto/16 :goto_79
.end method
