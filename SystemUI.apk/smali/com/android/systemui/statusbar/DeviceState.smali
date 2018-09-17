.class public Lcom/android/systemui/statusbar/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mImsManager:[Lcom/sec/ims/ImsManager;

.field private static mImsManagerConnected:[Z

.field static final mPhoneCount:I

.field private static mThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()[Lcom/sec/ims/ImsManager;
    .registers 1

    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:[Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -get1()[Z
    .registers 1

    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManagerConnected:[Z

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    new-array v0, v2, [Lcom/sec/ims/ImsManager;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-array v0, v2, [Z

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManagerConnected:[Z

    return-void

    :array_1e
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveSimCount(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "NOT_READY"

    const/4 v2, 0x0

    :goto_5
    sget v3, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v2, v3, :cond_27

    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "NOT_READY"

    invoke-static {v3, v2, v4}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_24

    add-int/lit8 v0, v0, 0x1

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_27
    return v0
.end method

.method public static getDefaultDataPhoneId()I
    .registers 4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    if-gez v0, :cond_26

    const-string/jumbo v1, "DeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultDataPhoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_25
    :goto_25
    return v0

    :cond_26
    const/4 v1, 0x1

    if-le v0, v1, :cond_25

    const-string/jumbo v1, "DeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultDataPhoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_25
.end method

.method public static getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;
    .registers 2

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;I)Lcom/sec/ims/ImsManager;

    move-result-object v0

    return-object v0
.end method

.method public static getImsManager(Landroid/content/Context;I)Lcom/sec/ims/ImsManager;
    .registers 5

    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p1

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p1

    return-object v0

    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_31

    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DeviceState"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/DeviceState;->mThread:Landroid/os/HandlerThread;

    :cond_1f
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/statusbar/DeviceState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/statusbar/DeviceState;->mHandler:Landroid/os/Handler;

    :cond_31
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/DeviceState$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/DeviceState$1;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:[Lcom/sec/ims/ImsManager;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-ltz p1, :cond_1f

    array-length v3, v2

    if-ge p1, v3, :cond_1f

    aget-object v3, v2, p1

    if-eqz v3, :cond_1f

    aget-object v1, v2, p1

    :cond_1f
    if-nez v1, :cond_22

    :goto_21
    return-object p2

    :cond_22
    move-object p2, v1

    goto :goto_21
.end method

.method public static getNetworkOperatorNumeric(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "gsm.operator.numeric"

    const-string/jumbo v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfSim(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public static getOperatorNumeric(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string/jumbo v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadySimCount()I
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v1, "NOT_READY"

    const/4 v2, 0x0

    :goto_5
    sget v3, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v2, v3, :cond_21

    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "NOT_READY"

    invoke-static {v3, v2, v4}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_21
    return v0
.end method

.method public static getSimSettingState(Landroid/content/Context;I)I
    .registers 6

    const/4 v3, 0x1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_e
.end method

.method public static getVoLTEEnableState(Landroid/content/Context;)I
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/DeviceState;->isVoLteSupportedOperator(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/DeviceState;->isVoLteSupportedOperator(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    const/4 v2, 0x3

    return v2

    :cond_10
    if-eqz v0, :cond_13

    return v3

    :cond_13
    if-eqz v1, :cond_17

    const/4 v2, 0x2

    return v2

    :cond_17
    return v2
.end method

.method public static getVoWifiEnableState(Landroid/content/Context;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vowifi_menu_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hasVoLteSIM(Landroid/content/Context;)Z
    .registers 6

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v0

    const-string/jumbo v2, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasVoLteSIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2b
    const-string/jumbo v2, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasVoLteSIM imsManager =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isImsManagerConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v1, "desktopmode"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    return v1

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public static isFotaUpdate(Landroid/content/Context;)Z
    .registers 9

    const-string/jumbo v6, "FingerprintVersion"

    const-string/jumbo v7, "unknown"

    invoke-static {p0, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "CSCVersion"

    const-string/jumbo v7, "unknown"

    invoke-static {p0, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "SalesCode"

    const-string/jumbo v7, "unknown"

    invoke-static {p0, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.build.fingerprint"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ril.official_cscver"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "ro.csc.sales_code"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_52

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6f

    :cond_52
    const-string/jumbo v6, "DeviceState"

    const-string/jumbo v7, "isFotaUpdate!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "FingerprintVersion"

    invoke-static {p0, v6, v1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "CSCVersion"

    invoke-static {p0, v6, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "SalesCode"

    invoke-static {p0, v6, v2}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_6f
    const/4 v6, 0x0

    return v6
.end method

.method public static isImsManagerConnected()Z
    .registers 1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getDefaultDataPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected(I)Z

    move-result v0

    return v0
.end method

.method public static isImsManagerConnected(I)Z
    .registers 2

    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManagerConnected:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isLightSensorAvailable(Landroid/content/Context;)Z
    .registers 7

    const-string/jumbo v5, "sensor"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v4, :cond_27

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_24

    const/4 v5, 0x1

    return v5

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    const/4 v5, 0x0

    return v5
.end method

.method public static isLocationMenuNeed(Landroid/content/Context;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getDefaultDataPhoneId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sec/ims/settings/GlobalSettingsLoader;->loadGlobalSettings(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/sec/ims/settings/GlobalSettings;->getVowifiNeedLocationMenu()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_13
    const-string/jumbo v3, "DeviceState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLocationMenuNeed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_39
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public static isMobileKeyboardConnected(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12

    :cond_15
    return v1
.end method

.method public static isMultisim()Z
    .registers 2

    const/4 v0, 0x1

    sget v1, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-le v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isNoSIMOfSlot(I)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_18

    const-string/jumbo v3, "ril.cardnoti"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_17

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_17
    return v2

    :cond_18
    const-string/jumbo v3, "ril.cardnoti2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_27

    :goto_26
    return v1

    :cond_27
    move v1, v2

    goto :goto_26
.end method

.method public static isNoSimState()Z
    .registers 4

    const-string/jumbo v0, "NOT_READY"

    const/4 v1, 0x0

    :goto_4
    sget v2, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v1, v2, :cond_20

    const-string/jumbo v2, "gsm.sim.state"

    const-string/jumbo v3, "NOT_READY"

    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    return v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_20
    const/4 v2, 0x1

    return v2
.end method

.method public static isOpenTheme(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isQuickConnectSupported(Landroid/content/Context;)Z
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.oneconnect"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_f

    move-result-object v1

    const/4 v2, 0x1

    return v2

    :catch_f
    move-exception v0

    const-string/jumbo v2, "DeviceState"

    const-string/jumbo v3, "NameNotFoundException!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public static isSimCardInserted(I)Z
    .registers 5

    const/4 v1, 0x0

    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {v2, p0, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    return v1

    :cond_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public static isSimReady()Z
    .registers 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v2, "DeviceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " isSimReady ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getReadySimCount()I

    move-result v1

    :goto_22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getReadySimCount()I

    move-result v1

    if-nez v1, :cond_3c

    return v4

    :cond_3a
    move v1, v0

    goto :goto_22

    :cond_3c
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    if-nez v1, :cond_46

    const/4 v1, 0x5

    if-eq v0, v1, :cond_46

    return v4

    :cond_46
    const/4 v1, 0x1

    return v1
.end method

.method public static isTablet()Z
    .registers 2

    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTelephonyIdle(Landroid/content/Context;)Z
    .registers 6

    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    const/4 v1, 0x1

    if-eqz v2, :cond_44

    :try_start_e
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_44

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_44

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v1

    :cond_44
    :goto_44
    return v1

    :cond_45
    const/4 v1, 0x0

    goto :goto_44

    :cond_47
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_4e} :catch_50
    .catchall {:try_start_e .. :try_end_4e} :catchall_55

    move-result v1

    goto :goto_44

    :catch_50
    move-exception v0

    :try_start_51
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    return v1

    :catchall_55
    move-exception v3

    return v1
.end method

.method public static isVibratorSupported(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isVoLTEVideoCallSupportedSIM(Landroid/content/Context;)Z
    .registers 8

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected()Z

    move-result v4

    if-eqz v4, :cond_44

    const-string/jumbo v4, "mmtel-video"

    const/16 v5, 0xd

    invoke-virtual {v2, v4, v5}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v0

    const-string/jumbo v4, "DeviceState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isVoLTEVideoCallSupportedSIM hasVoLteSim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isVoLteVideoCallSupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_42

    :goto_41
    return v0

    :cond_42
    move v0, v3

    goto :goto_41

    :cond_44
    const-string/jumbo v4, "DeviceState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "imsManager =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isVoLteSupportedOperator(Landroid/content/Context;)Z
    .registers 6

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "mmtel"

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v2, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVoLteSupportedOperator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_30
    const-string/jumbo v2, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVoLteSupportedOperator imsManager =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isImsManagerConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static isVoLteSupportedOperator(Landroid/content/Context;I)Z
    .registers 7

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;I)Lcom/sec/ims/ImsManager;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-static {p1}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected(I)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "mmtel"

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v2, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVoLteSupportedOperator isVoLteSupported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_30
    const-string/jumbo v2, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "imsManager =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isImsManagerConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static isVoLteSupportedSIM(Landroid/content/Context;)Z
    .registers 8

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected()Z

    move-result v4

    if-eqz v4, :cond_39

    const-string/jumbo v4, "mmtel"

    const/16 v5, 0xd

    invoke-virtual {v2, v4, v5}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v0

    const-string/jumbo v4, "DeviceState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isVoLteSupportedSIM hasVoLteSim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_37

    :goto_36
    return v0

    :cond_37
    move v0, v3

    goto :goto_36

    :cond_39
    const-string/jumbo v4, "DeviceState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isVoLteSupportedSIM imsManager =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isImsManagerConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .registers 5

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_24

    const-string/jumbo v2, "Softphone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x1

    goto :goto_23

    :cond_26
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public static isVolteEnabled(Landroid/content/Context;)Z
    .registers 10

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isImsManagerConnected()Z

    move-result v5

    if-eqz v5, :cond_64

    const-string/jumbo v5, "volte"

    invoke-virtual {v0, v5}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_62

    array-length v5, v1

    if-lez v5, :cond_62

    const/4 v2, 0x1

    :goto_1f
    if-eqz v3, :cond_42

    const-string/jumbo v5, "volte"

    invoke-virtual {v3, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "DeviceState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isVoLteRegistered:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const-string/jumbo v5, "DeviceState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isVoLteRegistered:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_60

    if-eqz v2, :cond_6d

    :cond_60
    const/4 v5, 0x1

    return v5

    :cond_62
    const/4 v2, 0x0

    goto :goto_1f

    :cond_64
    const-string/jumbo v5, "DeviceState"

    const-string/jumbo v6, "imsManager Null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return v8
.end method
