.class public Lcom/android/systemui/infinity/GalaxyWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/GalaxyWallpaperService$1;,
        Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;
    }
.end annotation


# static fields
.field private static ACTION_AOD_BG_OFF:Ljava/lang/String; = null

.field private static AOD_OFF_DELAY:J = 0x0L

.field protected static final RES_TYPE_HOME_BG:I = 0x2

.field protected static final RES_TYPE_LOCK_BG:I = 0x1

.field protected static final RES_TYPE_SHAPE:I


# instance fields
.field private mAODBgOffIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field protected mEngine:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

.field private mPlugged:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()J
    .registers 2

    sget-wide v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->AOD_OFF_DELAY:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPlugged:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPlugged:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/infinity/GalaxyWallpaperService;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->setAODBgOffIntent(J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/infinity/GalaxyWallpaperService;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->wakeLock(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "com.android.systemui.infinity.ACTION_AOD_BG_OFF"

    sput-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->AOD_OFF_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPlugged:Z

    new-instance v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;-><init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private listenForBroadcasts(Z)V
    .registers 5

    if-eqz p1, :cond_25

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    :goto_24
    return-void

    :cond_25
    iget-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    goto :goto_24
.end method

.method private setAODBgOffIntent(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAODBgOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPlugged:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAODBgOffIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_18
    return-void
.end method

.method private wakeLock(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method


# virtual methods
.method protected getGroupDataInner()[[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getResIdInner(I)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/systemui/infinity/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAODBgOffIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->listenForBroadcasts(Z)V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 2

    new-instance v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;-><init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mEngine:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mEngine:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->listenForBroadcasts(Z)V

    return-void
.end method
