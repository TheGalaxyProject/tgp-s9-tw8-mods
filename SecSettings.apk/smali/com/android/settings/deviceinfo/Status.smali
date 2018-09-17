.class public Lcom/android/settings/deviceinfo/Status;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$1;,
        Lcom/android/settings/deviceinfo/Status$2;,
        Lcom/android/settings/deviceinfo/Status$3;,
        Lcom/android/settings/deviceinfo/Status$4;,
        Lcom/android/settings/deviceinfo/Status$5;,
        Lcom/android/settings/deviceinfo/Status$MyHandler;,
        Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private bResetFileExist:Ljava/lang/Boolean;

.field private default_network:Ljava/lang/String;

.field private isLTEOnly:Z

.field private isSysScopeStatus:I

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/support/v7/preference/Preference;

.field private mBatteryLife:Landroid/support/v7/preference/Preference;

.field private mBatteryStatus:Landroid/support/v7/preference/Preference;

.field private mBtAddress:Landroid/support/v7/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetMacAddressPref:Landroid/support/v7/preference/Preference;

.field mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mFirstCall:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsManager:[Lcom/sec/ims/ImsManager;

.field private mIpAddress:Landroid/support/v7/preference/Preference;

.field private mIsRegistered:[Z

.field private mPhoneFirstCallHandler:Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSimCount:I

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

.field private mSysScopePref:Landroid/support/v7/preference/Preference;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mUnavailable:Ljava/lang/String;

.field private mUptime:Landroid/support/v7/preference/Preference;

.field private mUserName:Landroid/support/v7/preference/Preference;

.field private mWifiMacAddress:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/support/v7/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private sysscopeForChnRoot:Z

.field private user_name:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/Status;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()[B
    .registers 1

    sget-object v0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/deviceinfo/Status;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/deviceinfo/Status;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/deviceinfo/Status;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/deviceinfo/Status;)[Lcom/sec/ims/ImsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/deviceinfo/Status;)[Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mIsRegistered:[Z

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/deviceinfo/Status;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->mSimCount:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/deviceinfo/Status;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/Status;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return p1
.end method

.method static synthetic -set1([B)[B
    .registers 1

    sput-object p0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object p0
.end method

.method static synthetic -set2(Lcom/android/settings/deviceinfo/Status;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/settings/deviceinfo/Status;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/Preference;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/support/v7/preference/Preference;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/Status;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/Status;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->getOemData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateFirstCallDate(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    const-string/jumbo v0, "ro.telephony.default_network"

    const-string/jumbo v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->default_network:Ljava/lang/String;

    const-string/jumbo v0, "11"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->default_network:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x1

    :goto_35
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Status;->isLTEOnly:Z

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->bResetFileExist:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    new-instance v0, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-array v0, v4, [Lcom/sec/ims/ImsManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mIsRegistered:[Z

    iput v1, p0, Lcom/android/settings/deviceinfo/Status;->mSimCount:I

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneFirstCallHandler:Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

    new-instance v0, Lcom/android/settings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$4;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/settings/deviceinfo/Status$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$5;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    return-void

    :cond_71
    move v0, v1

    goto :goto_35
.end method

.method private changeSysScopeStatus()V
    .registers 16

    const v14, 0x7f121b93

    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v3, v12, :cond_4f

    const-wide/16 v6, 0x78

    cmp-long v3, v4, v6

    if-lez v3, :cond_4f

    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v3, :cond_47

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "400-810-5858"

    aput-object v7, v6, v10

    const v7, 0x7f121b97

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v11}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    :goto_3d
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v3, :cond_ad

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_46
    return-void

    :cond_47
    const v3, 0x7f121b96

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_4f
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v3, :cond_90

    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-eq v3, v13, :cond_5d

    invoke-static {}, Lcom/android/settings/Utils;->checkRootingCondition()Z

    move-result v3

    if-eqz v3, :cond_75

    :cond_5d
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "400-810-5858"

    aput-object v7, v6, v10

    const v7, 0x7f121b97

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v11}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    goto :goto_3d

    :cond_75
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v3, v12, :cond_86

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    const v3, 0x7f121b94

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_86
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    invoke-virtual {p0, v14}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_90
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v3, v13, :cond_9c

    const v3, 0x7f121b96

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_9c
    iget v3, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v3, v12, :cond_a8

    const v3, 0x7f121b94

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_a8
    invoke-virtual {p0, v14}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_ad
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_46
.end method

.method private connectToRilService()V
    .registers 5

    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .registers 14

    const-wide/16 v6, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    rem-long v4, p1, v6

    long-to-int v2, v4

    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Formatter;

    invoke-direct {v5}, Ljava/util/Formatter;-><init>()V

    const-string/jumbo v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Formatter;

    invoke-direct {v5}, Ljava/util/Formatter;-><init>()V

    const-string/jumbo v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Formatter;

    invoke-direct {v5}, Ljava/util/Formatter;-><init>()V

    const-string/jumbo v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getEth0MacAddressFromFile()Ljava/lang/String;
    .registers 12

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x11

    const/16 v9, 0x20

    new-array v0, v9, [B

    const/4 v7, 0x0

    :try_start_9
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    const-string/jumbo v11, "/sys/class/net/eth0/address"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_3f
    .catchall {:try_start_9 .. :try_end_1b} :catchall_5a

    :try_start_1b
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    const/16 v9, 0x11

    if-lt v5, v9, :cond_2d

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_29} :catch_73
    .catchall {:try_start_1b .. :try_end_29} :catchall_6c

    :try_start_29
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_76
    .catchall {:try_start_29 .. :try_end_2c} :catchall_6f

    move-result-object v7

    :cond_2d
    if-eqz v4, :cond_32

    :try_start_2f
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_34

    :cond_32
    :goto_32
    move-object v3, v4

    :cond_33
    :goto_33
    return-object v7

    :catch_34
    move-exception v1

    const-string/jumbo v9, "Status"

    const-string/jumbo v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :catch_3f
    move-exception v2

    :goto_40
    :try_start_40
    const-string/jumbo v9, "Status"

    const-string/jumbo v10, "Failed to get MAC address from /sys/class/net/eth0/address"

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_5a

    if-eqz v3, :cond_33

    :try_start_4b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_33

    :catch_4f
    move-exception v1

    const-string/jumbo v9, "Status"

    const-string/jumbo v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :catchall_5a
    move-exception v9

    :goto_5b
    if-eqz v3, :cond_60

    :try_start_5d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    :cond_60
    :goto_60
    throw v9

    :catch_61
    move-exception v1

    const-string/jumbo v10, "Status"

    const-string/jumbo v11, "Failed to close .mac.info file"

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :catchall_6c
    move-exception v9

    move-object v3, v4

    goto :goto_5b

    :catchall_6f
    move-exception v9

    move-object v7, v8

    move-object v3, v4

    goto :goto_5b

    :catch_73
    move-exception v2

    move-object v3, v4

    goto :goto_40

    :catch_76
    move-exception v2

    move-object v7, v8

    move-object v3, v4

    goto :goto_40
.end method

.method private getOemData()V
    .registers 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x3

    const/16 v4, 0x51

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_28} :catch_3b
    .catchall {:try_start_d .. :try_end_28} :catchall_4f

    :try_start_28
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_2f

    :goto_2e
    return-void

    :catch_2f
    move-exception v2

    const-string/jumbo v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_3b
    move-exception v2

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    :goto_42
    return-void

    :catch_43
    move-exception v2

    const-string/jumbo v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catchall_4f
    move-exception v4

    :try_start_50
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_56} :catch_57

    :goto_56
    throw v4

    :catch_57
    move-exception v2

    const-string/jumbo v5, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method

.method private hasBluetooth()Z
    .registers 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private hasWimax()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 7

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_11
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v2, "Status"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_24} :catch_25

    goto :goto_1a

    :catch_25
    move-exception v0

    goto :goto_1a
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method private setBtStatus()V
    .registers 5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_14
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    :cond_1e
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private setEthernetStatus()V
    .registers 4

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->getEth0MacAddressFromFile()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mEthernetMacAddressPref:Landroid/support/v7/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    :cond_e
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setFirstCallstatus()V
    .registers 9

    const/16 v7, 0xe

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x4

    const/16 v4, 0x16

    :try_start_f
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_4a
    .catchall {:try_start_f .. :try_end_1a} :catchall_5d

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3f

    :goto_1d
    new-instance v4, Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneFirstCallHandler:Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

    new-instance v4, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneFirstCallHandler:Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/Status$PhoneFirstCallHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :catch_3f
    move-exception v2

    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "IOException in getOemData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :catch_4a
    move-exception v2

    :try_start_4b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_5d

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_1d

    :catch_52
    move-exception v2

    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "IOException in getOemData!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :catchall_5d
    move-exception v4

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    :goto_61
    throw v4

    :catch_62
    move-exception v2

    const-string/jumbo v5, "Status"

    const-string/jumbo v6, "IOException in getOemData!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method private setIpAddressStatus()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f1207f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void
.end method

.method private setSysScopeStatus()V
    .registers 3

    const v1, 0x7f121b94

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_16
.end method

.method private setWifiStatus()V
    .registers 6

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->hasRealMacAddress()Z

    move-result v0

    :goto_c
    if-eqz v0, :cond_20

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    :goto_12
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/support/v7/preference/Preference;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    :goto_1a
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c

    :cond_20
    const/4 v1, 0x0

    goto :goto_12

    :cond_22
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1a
.end method

.method private setWimaxStatus()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_12

    const-string/jumbo v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method private updateFirstCallDate(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private updateStatus()V
    .registers 15

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_15c

    const-string/jumbo v11, "SPR"

    sget-object v12, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_154

    iget-boolean v11, p0, Lcom/android/settings/deviceinfo/Status;->isLTEOnly:Z

    if-nez v11, :cond_100

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->connectToRilService()V

    :goto_20
    invoke-static {}, Lcom/android/settings/Utils;->isSupportEthernet()Z

    move-result v11

    if-eqz v11, :cond_164

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setEthernetStatus()V

    :goto_29
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setSysScopeStatus()V

    const-string/jumbo v11, "ril.serialnumber"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_42

    const-string/jumbo v11, "00000000000"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16c

    :cond_42
    const-string/jumbo v8, "ro.serialno"

    :goto_45
    const-string/jumbo v11, "ro.serialno"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_171

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v9

    :goto_52
    sget-boolean v11, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v11, :cond_7b

    const-string/jumbo v11, "Status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "serial:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", serialNum:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b3

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v11

    if-nez v11, :cond_b3

    const-string/jumbo v11, "MTR"

    sget-object v12, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b3

    const-string/jumbo v11, "USC"

    sget-object v12, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b3

    const-string/jumbo v11, "LRA"

    sget-object v12, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b3

    const-string/jumbo v11, "ACG"

    sget-object v12, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_177

    :cond_b3
    const-string/jumbo v11, "serial_number"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    :goto_b9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-eqz v11, :cond_e5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "wifi_ip_address"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v11

    if-nez v11, :cond_e5

    const-string/jumbo v11, ""

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e5

    const-string/jumbo v11, "serial_number"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_e5
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_e7
    iget v11, p0, Lcom/android/settings/deviceinfo/Status;->mSimCount:I

    if-ge v2, v11, :cond_19d

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->isShowImsStatus(I)Z

    move-result v11

    if-eqz v11, :cond_fd

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p0, v11, v2}, Lcom/android/settings/deviceinfo/Status;->createImsService(Landroid/content/Context;I)V

    const/4 v3, 0x1

    :cond_fd
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    :cond_100
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNai()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    const-string/jumbo v11, "Status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "user name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    if-eqz v11, :cond_13f

    iget-object v11, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_14a

    :cond_13f
    const-string/jumbo v11, "user_name"

    const-string/jumbo v12, "<Not set>"

    invoke-direct {p0, v11, v12}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_14a
    const-string/jumbo v11, "user_name"

    iget-object v12, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-direct {p0, v11, v12}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_154
    const-string/jumbo v11, "user_name"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_15c
    const-string/jumbo v11, "user_name"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_164
    const-string/jumbo v11, "ethernet_mac_address"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_16c
    const-string/jumbo v8, "ril.serialnumber"

    goto/16 :goto_45

    :cond_171
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_52

    :cond_177
    sget-boolean v11, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v11, :cond_195

    const-string/jumbo v11, "Status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "serialNum : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_195
    const-string/jumbo v11, "serial_number"

    invoke-direct {p0, v11, v9}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_19d
    const-string/jumbo v11, "Status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Show IMS registration status is service is null : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1bf

    const-string/jumbo v11, "ims_reg"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_1bf
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v11

    if-eqz v11, :cond_230

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_230

    const-string/jumbo v11, "first_call_date"

    invoke-virtual {p0, v11}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/deviceinfo/Status;->mFirstCall:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setFirstCallstatus()V

    :goto_1df
    :try_start_1df
    new-instance v7, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "Status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "rlcState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "Normal"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_22f

    const-string/jumbo v11, "Locked"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_22f

    const-string/jumbo v11, "Blink"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_22f

    const-string/jumbo v11, "installment_balance"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V
    :try_end_22f
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1df .. :try_end_22f} :catch_24b
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_22f} :catch_237

    :cond_22f
    :goto_22f
    return-void

    :cond_230
    const-string/jumbo v11, "first_call_date"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1df

    :catch_237
    move-exception v1

    const-string/jumbo v11, "installment_balance"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v11, "Status"

    const-string/jumbo v12, "RemoteLockControlManager not supported"

    invoke-static {v11, v12}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22f

    :catch_24b
    move-exception v0

    const-string/jumbo v11, "installment_balance"

    invoke-direct {p0, v11}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v11, "Status"

    const-string/jumbo v12, "RemoteLockControlManager not supported (RemoteLockControlException)"

    invoke-static {v11, v12}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto :goto_22f
.end method


# virtual methods
.method InitSecAddtionalPreferences()V
    .registers 14

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportRootBadge(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    const-string/jumbo v9, "battery_life"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLife:Landroid/support/v7/preference/Preference;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getBatteryLife()I

    move-result v0

    const-string/jumbo v9, "Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "battery life : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_46

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_147

    :cond_46
    const-string/jumbo v9, "battery_life"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    :goto_4c
    const-string/jumbo v9, "VZW"

    sget-object v10, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_192

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/efs/sec_efs/LastResetDate.txt"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_183

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Status;->bResetFileExist:Ljava/lang/Boolean;

    const/4 v4, 0x0

    :try_start_6d
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_1c5
    .catchall {:try_start_6d .. :try_end_77} :catchall_17a

    :goto_77
    :try_start_77
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16d

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->setFactoryResetDate(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_80} :catch_81
    .catchall {:try_start_77 .. :try_end_80} :catchall_1c2

    goto :goto_77

    :catch_81
    move-exception v2

    move-object v4, v5

    :goto_83
    :try_start_83
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_17a

    if-eqz v4, :cond_8b

    :try_start_88
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_177

    :cond_8b
    :goto_8b
    const-string/jumbo v9, "ethernet_mac_address"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mEthernetMacAddressPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->removePreferencesSimplifiedAboutDevice()V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v9

    if-nez v9, :cond_a3

    const-string/jumbo v9, "sim_lock_status_kddi"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_a3
    iget-boolean v9, p0, Lcom/android/settings/deviceinfo/Status;->sysscopeForChnRoot:Z

    if-eqz v9, :cond_19a

    const-string/jumbo v9, "sysscope_status"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v9, "sysscope_status_root"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope4RootPref:Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    :goto_b8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Common_UseChameleon"

    invoke-virtual {v9, v10, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1ab

    const-string/jumbo v9, "ro.cdma.home.operator.alpha"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ro.cdma.home.operator.alpha : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_fe

    const-string/jumbo v9, "Chameleon"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f8

    const-string/jumbo v3, "Samsung"

    :cond_f8
    const-string/jumbo v9, "brand"

    invoke-direct {p0, v9, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fe
    :goto_fe
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceFccId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1b3

    const-string/jumbo v9, "fcc_id"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceFccId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_122
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1bb

    const-string/jumbo v9, "rated_value"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_146
    return-void

    :cond_147
    const/16 v9, 0x50

    if-lt v0, v9, :cond_155

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLife:Landroid/support/v7/preference/Preference;

    const v10, 0x7f12034a

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_4c

    :cond_155
    const/16 v9, 0x32

    if-lt v0, v9, :cond_163

    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLife:Landroid/support/v7/preference/Preference;

    const v10, 0x7f12034b

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_4c

    :cond_163
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLife:Landroid/support/v7/preference/Preference;

    const v10, 0x7f12034c

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_4c

    :cond_16d
    if-eqz v5, :cond_8b

    :try_start_16f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_174

    goto/16 :goto_8b

    :catch_174
    move-exception v1

    goto/16 :goto_8b

    :catch_177
    move-exception v1

    goto/16 :goto_8b

    :catchall_17a
    move-exception v9

    :goto_17b
    if-eqz v4, :cond_180

    :try_start_17d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_181

    :cond_180
    :goto_180
    throw v9

    :catch_181
    move-exception v1

    goto :goto_180

    :cond_183
    const-string/jumbo v9, "factorydatareset"

    const v10, 0x7f121c8a

    invoke-virtual {p0, v10}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8b

    :cond_192
    const-string/jumbo v9, "factorydatareset"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_8b

    :cond_19a
    const-string/jumbo v9, "sysscope_status_root"

    invoke-direct {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v9, "sysscope_status"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopePref:Landroid/support/v7/preference/Preference;

    goto/16 :goto_b8

    :cond_1ab
    const-string/jumbo v9, "brand"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_fe

    :cond_1b3
    const-string/jumbo v9, "fcc_id"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_122

    :cond_1bb
    const-string/jumbo v9, "rated_value"

    invoke-virtual {p0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreference(Ljava/lang/String;)V

    goto :goto_146

    :catchall_1c2
    move-exception v9

    move-object v4, v5

    goto :goto_17b

    :catch_1c5
    move-exception v2

    goto/16 :goto_83
.end method

.method createImsService(Landroid/content/Context;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/sec/ims/ImsManager;

    new-instance v2, Lcom/android/settings/deviceinfo/Status$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/deviceinfo/Status$6;-><init>(Lcom/android/settings/deviceinfo/Status;I)V

    invoke-direct {v1, p1, v2, p2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    aput-object v1, v0, p2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    :cond_1b
    return-void
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x2c

    return v0
.end method

.method isImsRegistered(I)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v1, v1, p1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_30

    array-length v1, v0

    if-lez v1, :cond_30

    const-string/jumbo v1, "Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isImsRegistered : true / slot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_30
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "isImsRegistered : false"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method isShowImsStatus(I)Z
    .registers 14

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    sget-object v0, Lcom/sec/ims/settings/ImsSettings;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simslot"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v4, "show_regi_info_in_sec_settings"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4f

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6f

    :cond_4f
    const-string/jumbo v0, "Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShowImsStatus: not found / slot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_6e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6e
    return v10

    :cond_6f
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    :try_start_74
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-static {v6, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_7d} :catch_ab
    .catchall {:try_start_74 .. :try_end_7d} :catchall_ba

    :cond_7d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_80
    const-string/jumbo v0, "show_regi_info_in_sec_settings"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v0, "Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShowImsStatus: isShow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_bf

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_bf

    move v0, v10

    :goto_aa
    return v0

    :catch_ab
    move-exception v7

    :try_start_ac
    const-string/jumbo v0, "Status"

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_ba

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_80

    :catchall_ba
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_bf
    move v0, v11

    goto :goto_aa

    :cond_c1
    return v11
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_66

    const-string/jumbo v4, "fromBixby"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v4, "Bixby"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fromBixby : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_66

    const-string/jumbo v4, "stateId"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Bixby"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "StateId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_66

    const/4 v2, 0x0

    const-string/jumbo v4, "AboutStatusFocus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    const-string/jumbo v2, "first_call_date"

    :cond_61
    :goto_61
    if-eqz v2, :cond_66

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->bixbyScrollPreference(Ljava/lang/String;)V

    :cond_66
    return-void

    :cond_67
    const-string/jumbo v4, "AboutStatusFocusIPAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    const-string/jumbo v2, "wifi_ip_address"

    goto :goto_61

    :cond_74
    const-string/jumbo v4, "AboutStatusFocusWiFiMACAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    const-string/jumbo v2, "wifi_mac_address"

    goto :goto_61

    :cond_81
    const-string/jumbo v4, "AboutStatusFocusBluetoothAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    const-string/jumbo v2, "bt_address"

    goto :goto_61

    :cond_8e
    const-string/jumbo v4, "AboutStatusFocusEthernetMACAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    const-string/jumbo v2, "ethernet_mac_address"

    goto :goto_61

    :cond_9b
    const-string/jumbo v4, "AboutStatusFocusSerialNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    const-string/jumbo v2, "serial_number"

    goto :goto_61

    :cond_a8
    const-string/jumbo v4, "AboutStatusFocusUptime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    const-string/jumbo v2, "up_time"

    goto :goto_61

    :cond_b5
    const-string/jumbo v4, "AboutStatusFocusDeviceStatusValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    const-string/jumbo v2, "sysscope_status"

    goto :goto_61

    :cond_c2
    const-string/jumbo v4, "AboutStatusBatteryStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    const-string/jumbo v2, "battery_status"

    goto :goto_61

    :cond_cf
    const-string/jumbo v4, "AboutStatusBatteryLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    const-string/jumbo v2, "battery_level"

    goto :goto_61

    :cond_dc
    const-string/jumbo v4, "AboutStatusIMSRegistration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    const-string/jumbo v2, "ims_reg"

    goto/16 :goto_61
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v3, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    const v3, 0x7f150051

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "battery_level"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "battery_status"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "wifi_mac_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mWifiMacAddress:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "wimax_mac_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    const-string/jumbo v3, "wifi_ip_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mIpAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    iput v3, p0, Lcom/android/settings/deviceinfo/Status;->mSimCount:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f121a74

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    const-string/jumbo v3, "up_time"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->hasBluetooth()Z

    move-result v3

    if-nez v3, :cond_9b

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mBtAddress:Landroid/support/v7/preference/Preference;

    :cond_9b
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->hasWimax()Z

    move-result v3

    if-nez v3, :cond_a8

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mWimaxMacAddress:Landroid/support/v7/preference/Preference;

    :cond_a8
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    sget-object v4, Lcom/android/settings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_b3
    if-ge v3, v5, :cond_bf

    aget-object v0, v4, v3

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    :cond_bf
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateConnectivity()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_da

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e6

    :cond_da
    const-string/jumbo v3, "sim_status"

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v3, "imei_info"

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_e6
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->InitSecAddtionalPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportDeviceActivationCHN(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_fd

    const-string/jumbo v3, "activation_status"

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_fd
    return-void
.end method

.method public onPause()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Lcom/android/settings/deviceinfo/Status;->mSimCount:I

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->disconnectService()V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mImsManager:[Lcom/sec/ims/ImsManager;

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mIsRegistered:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_48} :catch_50

    :goto_48
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_48
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateStatus()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 11

    const/4 v7, 0x0

    const v6, 0x7f070071

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_92

    const-string/jumbo v2, "Status"

    const-string/jumbo v3, "in Status.java onViewCreated()"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_55

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_55
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v5, v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_92
    return-void
.end method

.method public removePreferencesSimplifiedAboutDevice()V
    .registers 2

    const-string/jumbo v0, "battery_level"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v0, "battery_status"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v0, "battery_life"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    return-void
.end method

.method setFactoryResetDate(Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_c
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_13} :catch_2a

    :goto_13
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "factorydatareset"

    invoke-direct {p0, v4, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2a
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_13
.end method

.method updateConnectivity()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setIpAddressStatus()V

    return-void
.end method

.method updateImsStatus(Z)V
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz p1, :cond_1e

    const v0, 0x7f12212d

    :goto_11
    const-string/jumbo v1, "ims_reg"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    const v0, 0x7f12212c

    goto :goto_11

    :cond_22
    if-eqz p1, :cond_28

    const v0, 0x7f121a6e

    goto :goto_11

    :cond_28
    const v0, 0x7f121a6a

    goto :goto_11
.end method

.method updateTimes()V
    .registers 9

    const-wide/16 v6, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_16

    const-wide/16 v2, 0x1

    :cond_16
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
