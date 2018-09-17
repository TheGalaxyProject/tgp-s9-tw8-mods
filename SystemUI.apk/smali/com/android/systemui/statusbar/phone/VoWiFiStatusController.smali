.class public Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
.super Ljava/lang/Object;
.source "VoWiFiStatusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;,
        Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;,
        Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sIsSprWfcEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHost:Lcom/android/systemui/qs/QSHost;

.field private mIsVowifiMenuEnabled:Z

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/app/StatusBarManager;

.field private mWfcHandler:Landroid/os/Handler;

.field private mWfcSettingsEnableObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mWfcHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->refreshTilelist(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWifiState(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_a

    :goto_7
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;-><init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;

    invoke-direct {v3, p0, v7}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;-><init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mWfcSettingsEnableObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/qs/QSHost;

    sput-boolean v6, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->sIsSprWfcEnabled:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;

    invoke-direct {v0, p0, v7}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;-><init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mWfcHandler:Landroid/os/Handler;

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SPRWFC:Z

    if-eqz v3, :cond_6e

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.sec.sprint.wfc.VOWIFI_STATUS"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v4, "vowifi"

    const v5, 0x7f080796

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v4, "vowifi"

    invoke-virtual {v3, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_6e
    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SPRWFC:Z

    if-nez v3, :cond_7a

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DYNAMIC_WIFICALLING_TILE_VISIBILITY_CHANGING:Z

    if-nez v3, :cond_7a

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_WFC_REFRESH_BY_SIM:Z

    if-eqz v3, :cond_91

    :cond_7a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vowifi_menu_enable"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mWfcSettingsEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mWfcHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_91
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    if-eqz v3, :cond_be

    const-string/jumbo v3, "VoWiFiController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Created!! SPRWFC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SPRWFC:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", REFRESH_BY_SIM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_WFC_REFRESH_BY_SIM:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    return-void
.end method

.method public static getVowifiPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_16

    :try_start_6
    const-string/jumbo v3, "com.sec.sprint.wfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "com.sec.sprint.wfc"
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v3

    :catch_11
    move-exception v1

    const-string/jumbo v3, "com.oem.smartwifisupport"

    return-object v3

    :cond_16
    const-string/jumbo v3, "com.oem.smartwifisupport"

    return-object v3
.end method

.method public static getVowifiState()Z
    .registers 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSED()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->sIsSprWfcEnabled:Z

    return v0
.end method

.method public static isPackageAvailable(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "VoWiFiController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "appState is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_23} :catch_29

    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    return v5

    :cond_27
    const/4 v2, 0x1

    return v2

    :catch_29
    move-exception v1

    return v5
.end method

.method public static isRJIOSimInserted()Z
    .registers 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_116

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_116

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_1b
    if-eqz v1, :cond_11a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11a

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :goto_2b
    const-string/jumbo v6, "405"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11e

    const-string/jumbo v6, "840"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "854"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "855"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "856"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "857"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "858"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "859"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "860"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "861"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "862"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "863"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "864"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "865"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "866"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "867"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "868"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "869"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "870"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "871"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "872"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "873"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "874"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "87"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "780"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string/jumbo v6, "78"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11e

    :cond_115
    return v8

    :cond_116
    const/4 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1b

    :cond_11a
    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_2b

    :cond_11e
    const-string/jumbo v6, "405"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_209

    const-string/jumbo v6, "840"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "854"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "855"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "856"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "857"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "858"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "859"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "860"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "861"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "862"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "863"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "864"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "865"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "866"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "867"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "868"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "869"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "870"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "871"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "872"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "873"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "874"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "87"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "780"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    const-string/jumbo v6, "78"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_209

    :cond_208
    return v8

    :cond_209
    const-string/jumbo v6, "406"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_240

    const-string/jumbo v6, "977"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23f

    const-string/jumbo v6, "978"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23f

    const-string/jumbo v6, "981"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23f

    const-string/jumbo v6, "994"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23f

    const-string/jumbo v6, "999"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_240

    :cond_23f
    return v8

    :cond_240
    const-string/jumbo v6, "406"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_277

    const-string/jumbo v6, "977"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_276

    const-string/jumbo v6, "978"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_276

    const-string/jumbo v6, "981"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_276

    const-string/jumbo v6, "994"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_276

    const-string/jumbo v6, "999"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_277

    :cond_276
    return v8

    :cond_277
    return v7
.end method

.method private static isSED()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Global"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public static isSprVowifiExist(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->getVowifiPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isPackageAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isWfcSettingEnabled(Landroid/content/Context;)Z
    .registers 8

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.sprint.wfc"

    const-string/jumbo v6, "com.sec.sprint.wfc.ui.WfcSettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1a

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_18

    :goto_17
    return v3

    :cond_18
    const/4 v3, 0x0

    goto :goto_17

    :catch_1a
    move-exception v0

    const-string/jumbo v4, "VoWiFiController"

    const-string/jumbo v5, "Exception when try to check WfcSettings state!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private refreshTilelist(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/qs/QSHost;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->refreshTileList()V

    const-string/jumbo v0, "VoWiFiController"

    const-string/jumbo v1, "mhost refreshlist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method private final updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string/jumbo v4, "VOWIFI_STATUS_EXTRA_KEY"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    if-eqz v4, :cond_37

    const-string/jumbo v4, "VoWiFiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with extra: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    if-nez v1, :cond_3a

    return-void

    :cond_3a
    const-string/jumbo v4, "VOWIFI_SHOW_ROVE_IN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSED()Z

    move-result v4

    if-eqz v4, :cond_7e

    const v3, 0x7f08074b

    :goto_4c
    const-string/jumbo v0, "VoWiFi Rove In"

    const/4 v2, 0x1

    :cond_50
    const-string/jumbo v4, "VOWIFI_SHOW_WIFICALLING_ROVE_IN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSED()Z

    move-result v4

    if-eqz v4, :cond_82

    const v3, 0x7f08074b

    :goto_62
    const-string/jumbo v0, "VoWiFi Rove In"

    const/4 v2, 0x1

    :cond_66
    :goto_66
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    if-eqz v4, :cond_7d

    if-eqz v2, :cond_75

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v5, "vowifi"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :cond_75
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string/jumbo v5, "vowifi"

    invoke-virtual {v4, v5, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_7d
    return-void

    :cond_7e
    const v3, 0x7f080794

    goto :goto_4c

    :cond_82
    const v3, 0x7f080795

    goto :goto_62

    :cond_86
    const-string/jumbo v4, "VOWIFI_SHOW_ROVE_OUT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSED()Z

    move-result v4

    if-eqz v4, :cond_97

    const/4 v2, 0x0

    goto :goto_66

    :cond_97
    const/4 v2, 0x1

    const v3, 0x7f080796

    const-string/jumbo v0, "VoWiFi Rove Out"

    goto :goto_66

    :cond_9f
    const-string/jumbo v4, "VOWIFI_HIDE_ICON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    const/4 v2, 0x0

    goto :goto_66
.end method

.method private updateVoWifiState(Landroid/content/Context;)V
    .registers 6

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SPRWFC:Z

    if-eqz v2, :cond_46

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->sIsSprWfcEnabled:Z

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSprVowifiExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isWfcSettingEnabled(Landroid/content/Context;)Z

    move-result v1

    :cond_11
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->sIsSprWfcEnabled:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->sIsSprWfcEnabled:Z

    if-eq v0, v1, :cond_45

    const-string/jumbo v1, "VoWiFiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHost is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/qs/QSHost;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->refreshTileList()V

    const-string/jumbo v1, "VoWiFiController"

    const-string/jumbo v2, "mhost refreshlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    return-void

    :cond_46
    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DYNAMIC_WIFICALLING_TILE_VISIBILITY_CHANGING:Z

    if-nez v2, :cond_4e

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_WFC_REFRESH_BY_SIM:Z

    if-eqz v2, :cond_45

    :cond_4e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mIsVowifiMenuEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_menu_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_60

    const/4 v1, 0x1

    :cond_60
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mIsVowifiMenuEnabled:Z

    const-string/jumbo v1, "VoWiFiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVoWifiState : oldState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsVowifiMenuEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mIsVowifiMenuEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mIsVowifiMenuEnabled:Z

    if-eq v0, v1, :cond_45

    const-string/jumbo v1, "VoWiFiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mHost is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/qs/QSHost;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->refreshTileList()V

    const-string/jumbo v1, "VoWiFiController"

    const-string/jumbo v2, "mhost refreshlist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method
