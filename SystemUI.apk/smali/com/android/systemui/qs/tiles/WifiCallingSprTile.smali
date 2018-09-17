.class public Lcom/android/systemui/qs/tiles/WifiCallingSprTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "WifiCallingSprTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiCallingSprTile$1;,
        Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;,
        Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;,
        Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_IMS_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final CSC_SPRINT_VOWIFI:Ljava/lang/String; = "CscFeature_Common_EnableSprintExtension"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final SPR_WFC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.sprint.wfc"

.field private static final TRANSITIONING_TO_OFF:I = 0x2

.field private static final TRANSITIONING_TO_ON:I = 0x3

.field private static final WFC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.oem.smartwifisupport"

.field public static final WFC_DISABLE:I = 0x0

.field public static final WFC_ENABLE:I = 0x1

.field private static final WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

.field private static final WFC_STATE_CONTENT_URI:Landroid/net/Uri;

.field private static final WIFICALLING_SETTINGS_SPR:Landroid/content/Intent;

.field private static final WIFICALLING_SETTINGS_SPR_KINETO:Landroid/content/Intent;

.field private static final WIFI_CALLING_ACTION:Ljava/lang/String; = "com.sec.sprint.wfc.WIFI_CALLING"

.field private static final WIFI_CALLING_AIR_PLANE_MODE_ACTION:Landroid/content/Intent;

.field private static final WIFI_CALLING_SETTINGS_CLASS:Ljava/lang/String; = "com.sec.sprint.wfc.ui.WfcSettings"

.field private static final WIFI_CALLING_SETTINGS_CLASS_KINETO:Ljava/lang/String; = "com.oem.smartwifisupport.ui.WfcSettings"

.field private static mIsNativeVoWiFi:Z

.field private static mSprVowifiState:Z


# instance fields
.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;

.field private mIsWfcProvisioned:Z

.field private mListening:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiCallingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Intent;
    .registers 1

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFI_CALLING_AIR_PLANE_MODE_ACTION:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic -get4()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Landroid/content/Intent;
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->getWfcSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isWfcEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isWfcProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->queryWfcState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->setMode(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->updateWfcState(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.sprint.wfc.WFC_AIR_PLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFI_CALLING_AIR_PLANE_MODE_ACTION:Landroid/content/Intent;

    const-string/jumbo v0, "content://com.sec.sprint.wfc.provider/wfc_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.sprint.wfc.provider/wfc_is_provisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsNativeVoWiFi:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.sprint.wfc"

    const-string/jumbo v3, "com.sec.sprint.wfc.ui.WfcSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFICALLING_SETTINGS_SPR:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.oem.smartwifisupport"

    const-string/jumbo v3, "com.oem.smartwifisupport.ui.WfcSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFICALLING_SETTINGS_SPR_KINETO:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsWfcProvisioned:Z

    new-instance v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SPRWFC:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->isSprVowifiExist(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    sget-boolean v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v1, :cond_34

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->registerObserverForSprWfc()V

    :cond_34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private getWfcSettingsIntent()Landroid/content/Intent;
    .registers 2

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsNativeVoWiFi:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFICALLING_SETTINGS_SPR:Landroid/content/Intent;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFICALLING_SETTINGS_SPR_KINETO:Landroid/content/Intent;

    goto :goto_6
.end method

.method private handleSprVowifiClick(Z)V
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v1, :cond_55

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isWfcProvisioned()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsWfcProvisioned:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mIsWfcProvisioned:Z

    if-nez v1, :cond_26

    new-instance v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcProvisionedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_55

    :try_start_2c
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v2, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WIFI_CALLING_AIR_PLANE_MODE_ACTION:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_3a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2c .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityDismissingKeyguard() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->updateWfcState(Z)V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    :goto_11
    const-string/jumbo v1, "com.sec.sprint.wfc"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->getVowifiPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x0

    :cond_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isWfcEnabled()Z
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->queryWfcState()I

    move-result v0

    if-ne v1, v0, :cond_8

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private isWfcProvisioned()Z
    .registers 10

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v6, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_38
    .catchall {:try_start_6 .. :try_end_2d} :catchall_42

    move-result-object v8

    :cond_2e
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_33
    :goto_33
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_38
    move-exception v7

    :try_start_39
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    :catchall_42
    move-exception v0

    if-eqz v6, :cond_48

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v0
.end method

.method private queryWfcState()I
    .registers 10

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_25
    .catchall {:try_start_2 .. :try_end_1e} :catchall_2f

    move-result v8

    :cond_1f
    if-eqz v6, :cond_24

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_24
    :goto_24
    return v8

    :catch_25
    move-exception v7

    :try_start_26
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2f

    if-eqz v6, :cond_24

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_24

    :catchall_2f
    move-exception v0

    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
.end method

.method private registerObserverForSprWfc()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "VoWiFi Quick Button WfcObserver registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMode(Z)V
    .registers 5

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->handleSprVowifiClick(Z)V

    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_call_enable"

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private updateWfcState(Z)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "state"

    if-eqz p1, :cond_1f

    const/4 v1, 0x3

    :goto_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_1f
    const/4 v1, 0x2

    goto :goto_c
.end method


# virtual methods
.method public bridge synthetic getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->getDetailAdapter()Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 2

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->getWfcSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1390

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120894

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->getMetricsCategory()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_39

    return-void

    :cond_39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->handleRefreshState(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->setMode(Z)V

    return-void
.end method

.method protected handleDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_19
    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 2

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->showDetail(Z)V

    :cond_8
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_48

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :cond_23
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " handleUpdateState:  dim  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120894

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-void

    :cond_48
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->isWfcEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;Z)V

    :goto_57
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    if-eqz v0, :cond_92

    const v0, 0x7f080528

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_64
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_9c

    const/4 v0, 0x2

    :goto_69
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " handleUpdateState:  update  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_8c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WifiCallingDetailAdapter;Z)V

    goto :goto_57

    :cond_92
    const v0, 0x7f08052f

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_64

    :cond_9c
    move v0, v1

    goto :goto_69
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->getVowifiState()Z

    move-result v0

    const-string/jumbo v3, "ro.csc.sales_code"

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.csc.omcnw_code"

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2a

    const/4 v0, 0x0

    :cond_2a
    sput-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mSprVowifiState:Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isavailable is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_54

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :goto_53
    return v3

    :cond_54
    const/4 v3, 0x0

    goto :goto_53
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 2

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->mListening:Z

    return-void
.end method
