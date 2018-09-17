.class public Lcom/android/settings/TetherService;
.super Landroid/app/Service;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherService$1;,
        Lcom/android/settings/TetherService$UsageStatsManagerWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EXTRA_RESULT:Ljava/lang/String; = "EntitlementResult"


# instance fields
.field private mCurrentTethers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTypeIndex:I

.field private mHotspotReceiver:Lcom/android/settings/HotspotOffReceiver;

.field private mInProvisionCheck:Z

.field private mPendingCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ResultReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUsageManagerWrapper:Lcom/android/settings/TetherService$UsageStatsManagerWrapper;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/TetherService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/TetherService;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/TetherService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/TetherService;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/TetherService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/TetherService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/TetherService;->disableBtTethering()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/TetherService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/TetherService;->disableUsbTethering()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/TetherService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/TetherService;->disableWifiTethering()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/TetherService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/TetherService;->fireCallbacksForType(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/TetherService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/TetherService;->startProvisioning(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "TetherService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/TetherService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/settings/TetherService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherService$1;-><init>(Lcom/android/settings/TetherService;)V

    iput-object v0, p0, Lcom/android/settings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extraRemTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private disableBtTethering()V
    .registers 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v1, Lcom/android/settings/TetherService$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/TetherService$2;-><init>(Lcom/android/settings/TetherService;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_f
    return-void
.end method

.method private disableUsbTethering()V
    .registers 3

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    return-void
.end method

.method private disableWifiTethering()V
    .registers 3

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method

.method private fireCallbacksForType(II)V
    .registers 11

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_10

    return-void

    :cond_10
    const/4 v4, -0x1

    if-ne p2, v4, :cond_4d

    const/4 v3, 0x0

    :goto_14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    sget-boolean v4, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v4, :cond_49

    const-string/jumbo v4, "TetherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Firing result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to callback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    invoke-virtual {v0, v3, v7}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_18

    :cond_4d
    const/16 v3, 0xb

    goto :goto_14

    :cond_50
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getProvisionBroadcastIntent(I)Landroid/content/Intent;
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "TETHER_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x11000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private removeTypeAtIndex(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "TetherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentTypeIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget v0, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    if-gt p1, v0, :cond_33

    iget v0, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    if-lez v0, :cond_33

    iget v0, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    :cond_33
    return-void
.end method

.method private setEntitlementAppActive(I)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/TetherService;->getProvisionBroadcastIntent(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v6, 0x20000

    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string/jumbo v6, "TetherService"

    const-string/jumbo v7, "No found BroadcastReceivers for provision intent."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/TetherService;->mUsageManagerWrapper:Lcom/android/settings/TetherService$UsageStatsManagerWrapper;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/settings/TetherService$UsageStatsManagerWrapper;->setAppInactive(Ljava/lang/String;Z)V

    goto :goto_22

    :cond_43
    return-void
.end method

.method private startProvisioning(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_48

    invoke-direct {p0, p1}, Lcom/android/settings/TetherService;->getProvisionBroadcastIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherService;->setEntitlementAppActive(I)V

    sget-boolean v1, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v1, :cond_42

    const-string/jumbo v1, "TetherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending provisioning broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    invoke-virtual {p0, v0}, Lcom/android/settings/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    :cond_48
    return-void
.end method

.method private stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v1

    :cond_c
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_27

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_27
    return-object v1
.end method

.method private tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1d

    if-eqz v2, :cond_13

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method cancelAlarmIfNecessary()V
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_17

    sget-boolean v3, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v3, :cond_16

    const-string/jumbo v3, "TetherService"

    const-string/jumbo v4, "Tethering still active, not cancelling alarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void

    :cond_17
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/TetherService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-boolean v3, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v3, :cond_3b

    const-string/jumbo v3, "TetherService"

    const-string/jumbo v4, "Tethering no longer active, canceling recheck"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v3, p0, Lcom/android/settings/TetherService;->mHotspotReceiver:Lcom/android/settings/HotspotOffReceiver;

    invoke-virtual {v3}, Lcom/android/settings/HotspotOffReceiver;->unregister()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "TetherService"

    const-string/jumbo v3, "Creating TetherService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040218

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/settings/TetherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v2, "tetherPrefs"

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "currentTethers"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/TetherService;->stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    iput v5, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/settings/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/TetherService;->mUsageManagerWrapper:Lcom/android/settings/TetherService$UsageStatsManagerWrapper;

    if-nez v2, :cond_82

    new-instance v2, Lcom/android/settings/TetherService$UsageStatsManagerWrapper;

    invoke-direct {v2, p0}, Lcom/android/settings/TetherService$UsageStatsManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/TetherService;->mUsageManagerWrapper:Lcom/android/settings/TetherService$UsageStatsManagerWrapper;

    :cond_82
    new-instance v2, Lcom/android/settings/HotspotOffReceiver;

    invoke-direct {v2, p0}, Lcom/android/settings/HotspotOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/TetherService;->mHotspotReceiver:Lcom/android/settings/HotspotOffReceiver;

    return-void
.end method

.method public onDestroy()V
    .registers 6

    iget-boolean v1, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    if-eqz v1, :cond_26

    const-string/jumbo v1, "TetherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TetherService getting destroyed while mid-provisioning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const-string/jumbo v1, "tetherPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "currentTethers"

    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/settings/TetherService;->tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-boolean v1, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v1, :cond_4f

    const-string/jumbo v1, "TetherService"

    const-string/jumbo v2, "Destroying TetherService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    iget-object v1, p0, Lcom/android/settings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 15

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v4, "extraAddTetherType"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    const-string/jumbo v4, "extraAddTetherType"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "extraProvisionCallback"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_31

    iget-object v4, p0, Lcom/android/settings/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_d7

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v4, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    sget-boolean v4, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v4, :cond_5b

    const-string/jumbo v4, "TetherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding tether "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    iget-object v4, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    const-string/jumbo v4, "extraRemTetherType"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b3

    iget-boolean v4, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    if-nez v4, :cond_de

    const-string/jumbo v4, "extraRemTetherType"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sget-boolean v4, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v4, :cond_ab

    const-string/jumbo v4, "TetherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing tether "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    if-ltz v2, :cond_b0

    invoke-direct {p0, v2}, Lcom/android/settings/TetherService;->removeTypeAtIndex(I)V

    :cond_b0
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->cancelAlarmIfNecessary()V

    :cond_b3
    :goto_b3
    const-string/jumbo v4, "extraSetAlarm"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c7

    iget-object v4, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v9, :cond_c7

    invoke-virtual {p0}, Lcom/android/settings/TetherService;->scheduleAlarm()V

    :cond_c7
    const-string/jumbo v4, "extraRunProvision"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_ec

    iget v4, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    invoke-direct {p0, v4}, Lcom/android/settings/TetherService;->startProvisioning(I)V

    :cond_d5
    const/4 v4, 0x3

    return v4

    :cond_d7
    invoke-virtual {v0, v9, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/TetherService;->stopSelf()V

    return v10

    :cond_de
    sget-boolean v4, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v4, :cond_b3

    const-string/jumbo v4, "TetherService"

    const-string/jumbo v5, "Don\'t cancel alarm during provisioning"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    :cond_ec
    iget-boolean v4, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    if-nez v4, :cond_d5

    sget-boolean v4, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v4, :cond_10e

    const-string/jumbo v4, "TetherService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Stopping self.  startid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10e
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->stopSelf()V

    return v10
.end method

.method scheduleAlarm()V
    .registers 13

    const/4 v10, 0x0

    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/TetherService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extraRunProvision"

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v10, v7, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x10e0082

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v1, 0x36ee80

    mul-int/2addr v1, v8

    int-to-long v4, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long v2, v10, v4

    sget-boolean v1, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v1, :cond_50

    const-string/jumbo v1, "TetherService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Scheduling alarm at interval "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/settings/TetherService;->mHotspotReceiver:Lcom/android/settings/HotspotOffReceiver;

    invoke-virtual {v1}, Lcom/android/settings/HotspotOffReceiver;->register()V

    return-void
.end method

.method setHotspotOffReceiver(Lcom/android/settings/HotspotOffReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/TetherService;->mHotspotReceiver:Lcom/android/settings/HotspotOffReceiver;

    return-void
.end method

.method setUsageStatsManagerWrapper(Lcom/android/settings/TetherService$UsageStatsManagerWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/TetherService;->mUsageManagerWrapper:Lcom/android/settings/TetherService$UsageStatsManagerWrapper;

    return-void
.end method
