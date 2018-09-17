.class public Lcom/android/server/pm/KnoxTimeoutHandler;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxTimeoutHandler$1;,
        Lcom/android/server/pm/KnoxTimeoutHandler$2;,
        Lcom/android/server/pm/KnoxTimeoutHandler$3;,
        Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;,
        Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;,
        Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_LOCK_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

.field private static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "knox.power_button_instantly_locks"

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaManagerService::Timeout"

.field private static final MSG_CANCEL_LOCK_TIMEOUT:I = 0x3

.field private static final MSG_FOREGROUND_PROFILE_SWITCH:I = 0x1

.field private static final MSG_RESET_LOCK_TIMEOUT:I = 0x2

.field private static final PERSONA_ID:Ljava/lang/String; = "personaId"


# instance fields
.field private isKnox:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentId:I

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mForegroudnUserLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLatestTouchedTime:J

.field private final mService:Lcom/android/server/pm/PersonaManagerService;

.field private mStateReceiver:Landroid/os/ContainerStateReceiver;

.field private mTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserSwitchObserver:Landroid/app/UserSwitchObserver;

.field private final mWakeLockHeldArr:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/KnoxTimeoutHandler;)I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/KnoxTimeoutHandler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mForegroudnUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/app/KeyguardManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/pm/KnoxTimeoutHandler;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/KnoxTimeoutHandler;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    return p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I

    iput-boolean v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->isKnox:Z

    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mLatestTouchedTime:J

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mForegroudnUserLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$1;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$2;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$3;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mTimeoutReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;

    invoke-direct {v0, p0, v4}, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;)V

    invoke-virtual {v8, v0}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mStateReceiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v0, v1}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    :try_start_8b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    const-class v2, Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_9a} :catch_b6

    :goto_9a
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mTimeoutReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catch_b6
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9a
.end method


# virtual methods
.method declared-synchronized getForegroundUser()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mCurrentId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScreenOffTimeoutLocked(I)I
    .registers 11

    const/4 v8, -0x1

    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "knox_screen_off_timeout"

    invoke-static {v3, v6, v8, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_56

    const v0, 0x7fffffff

    :goto_1e
    if-lez v0, :cond_58

    const v3, 0x7fffffff

    if-ge v0, v3, :cond_58

    const/4 v1, 0x1

    :goto_26
    if-eqz v1, :cond_5a

    if-lez v2, :cond_5a

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_2e
    :goto_2e
    if-eqz v2, :cond_3b

    if-eq v2, v8, :cond_3b

    const/4 v3, -0x2

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3b
    const-string/jumbo v3, "PersonaManagerService::Timeout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getScreenOffTimeoutLocked final: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_56
    long-to-int v0, v4

    goto :goto_1e

    :cond_58
    const/4 v1, 0x0

    goto :goto_26

    :cond_5a
    if-eqz v1, :cond_5e

    move v2, v0

    goto :goto_2e

    :cond_5e
    if-gtz v2, :cond_2e

    return v2
.end method

.method postTimeoutCancel(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method postTimeoutReset(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setWakeLockAcquired(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method
