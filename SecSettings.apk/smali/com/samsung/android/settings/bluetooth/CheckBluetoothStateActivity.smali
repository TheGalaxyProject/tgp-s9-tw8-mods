.class public final Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "CheckBluetoothStateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;,
        Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;,
        Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;,
        Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;
    }
.end annotation


# static fields
.field private static mDialogExist:Z

.field private static mExpectingBluetoothOn:Z

.field private static mIsDestroyed:Z

.field private static mIsRegisterKeyGuardReceiver:Z


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private final mKeyGuardHandler:Landroid/os/Handler;

.field private final mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    return v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic -get2()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1

    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->sendBendedPendingIntent()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$1;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$2;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$3;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$4;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFrpEnabled()Z
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v4, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v4, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    if-eqz v4, :cond_97

    const-string/jumbo v6, "CheckBluetoothStateActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isFrpEnabled :: rsm.getStatus() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , rsm.getServiceSupport() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v6

    if-ne v6, v9, :cond_97

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    :goto_49
    array-length v6, v1

    if-ge v2, v6, :cond_96

    aget-object v0, v1, v2

    const-string/jumbo v6, "CheckBluetoothStateActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isFrpEnabled :: Account - name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", type :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v7, "com.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    const/4 v6, 0x2

    if-ne v5, v6, :cond_86

    :cond_85
    return v10

    :cond_86
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v7, "com.osp.app.signin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    if-eq v5, v9, :cond_85

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_96
    return v9

    :cond_97
    return v10
.end method

.method private launchDevicePicker()V
    .registers 13

    const/4 v11, 0x0

    const-string/jumbo v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "launchDevicePicker "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x14000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v8, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v8, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_64

    const-string/jumbo v8, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_64
    const-string/jumbo v8, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_73

    const-string/jumbo v8, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_73
    :try_start_73
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_76
    .catch Landroid/content/ActivityNotFoundException; {:try_start_73 .. :try_end_76} :catch_7a

    :goto_76
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void

    :catch_7a
    move-exception v1

    const-string/jumbo v8, "CheckBluetoothStateActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startActivity() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76
.end method

.method private processEnableResult()V
    .registers 7

    const/4 v5, 0x1

    const-string/jumbo v2, "CheckBluetoothStateActivity"

    const-string/jumbo v3, "processEnableResult ::"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CheckBluetoothStateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "productName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string/jumbo v2, "joon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string/jumbo v2, "joshua"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_46
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void

    :cond_50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    if-eqz v2, :cond_74

    sput-boolean v5, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    :goto_73
    return-void

    :cond_74
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_73
.end method

.method private sendBendedPendingIntent()V
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v5, "keyguard"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x8000000

    invoke-static {p0, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "afterKeyguardGone"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "dismissIfInsecure"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "CheckBluetoothStateActivity"

    const-string/jumbo v6, "sendBendedPendingIntent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_4b

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/4 v5, 0x2

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4b
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 22

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "CheckBluetoothStateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v6, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0d0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->setContentView(I)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mExpectingBluetoothOn:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    sget-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    if-eqz v2, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void

    :cond_35
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z

    new-instance v19, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity$5;-><init>(Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->start()V

    const-string/jumbo v2, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "isBluetoothEnabled"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_7c

    :try_start_61
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "isBluetoothEnabled"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_75
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_61 .. :try_end_75} :catch_101
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_61 .. :try_end_75} :catch_e1
    .catchall {:try_start_61 .. :try_end_75} :catchall_121

    move-result v2

    if-eqz v2, :cond_df

    const/4 v15, 0x1

    :goto_79
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7c
    :goto_7c
    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/16 v16, 0x1

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const-string/jumbo v2, "false"

    const/4 v4, 0x0

    aput-object v2, v8, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "isSettingsChangesAllowed"

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_b9

    :try_start_9d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "isSettingsChangesAllowed"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_9d .. :try_end_b1} :catch_149
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_9d .. :try_end_b1} :catch_129
    .catchall {:try_start_9d .. :try_end_b1} :catchall_169

    move-result v2

    if-eqz v2, :cond_126

    const/16 v16, 0x1

    :goto_b6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b9
    :goto_b9
    if-eqz v16, :cond_bf

    xor-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_16e

    :cond_bf
    const-string/jumbo v2, "CheckBluetoothStateActivity"

    const-string/jumbo v4, "onCreate Bluetooth disable"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f1204c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void

    :cond_df
    const/4 v15, 0x0

    goto :goto_79

    :catch_e1
    move-exception v11

    :try_start_e2
    const-string/jumbo v2, "CheckBluetoothStateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CursorIndexOutOfBoundsException"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_e2 .. :try_end_fc} :catchall_121

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7c

    :catch_101
    move-exception v12

    :try_start_102
    const-string/jumbo v2, "CheckBluetoothStateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CursorWindowAllocationException"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_102 .. :try_end_11c} :catchall_121

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7c

    :catchall_121
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_126
    const/16 v16, 0x0

    goto :goto_b6

    :catch_129
    move-exception v11

    :try_start_12a
    const-string/jumbo v2, "CheckBluetoothStateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CursorIndexOutOfBoundsException"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_12a .. :try_end_144} :catchall_169

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b9

    :catch_149
    move-exception v12

    :try_start_14a
    const-string/jumbo v2, "CheckBluetoothStateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CursorWindowAllocationException"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catchall {:try_start_14a .. :try_end_164} :catchall_169

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b9

    :catchall_169
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_16e
    invoke-static/range {p0 .. p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_186

    const-string/jumbo v2, "CheckBluetoothStateActivity"

    const-string/jumbo v4, "Bluetooth is not supported on this device"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.BLUETOOTH_KEYGUARD_UNLOCK"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->isFrpEnabled()Z

    move-result v2

    if-eqz v2, :cond_1cf

    const v2, 0x7f12044a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    return-void

    :cond_1cf
    const-string/jumbo v2, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/KeyguardManager;

    invoke-virtual/range {v17 .. v17}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1f6

    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xc8

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1f6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_206

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V

    :goto_205
    return-void

    :cond_206
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto :goto_205
.end method

.method public onDestroy()V
    .registers 5

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string/jumbo v1, "CheckBluetoothStateActivity"

    const-string/jumbo v2, "onDestroy :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z

    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_28

    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsRegisterKeyGuardReceiver:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mKeyGuardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_28} :catch_2e

    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/CheckBluetoothStateActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28
.end method

.method protected onResume()V
    .registers 3

    const-string/jumbo v0, "CheckBluetoothStateActivity"

    const-string/jumbo v1, "onResume :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method