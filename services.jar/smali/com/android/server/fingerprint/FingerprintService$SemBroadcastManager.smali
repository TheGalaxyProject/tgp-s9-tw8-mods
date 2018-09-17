.class Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemBroadcastManager"
.end annotation


# static fields
.field public static final BR_ENROLL:I = 0x1

.field public static final BR_GESTURE:I = 0x2


# instance fields
.field mBrAlways:Landroid/content/BroadcastReceiver;

.field mBrScreenOff:Landroid/content/BroadcastReceiver;

.field mBrScreenOn:Landroid/content/BroadcastReceiver;

.field private mH:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrAlways:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrAlways:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method private setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 8

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_29

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemBroadcastManager : setReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-nez p2, :cond_35

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "SemBroadcastManager : setReceiver : receiver is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    if-eqz p1, :cond_41

    :try_start_37
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_40
    return-void

    :cond_41
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_4b

    goto :goto_40

    :catch_4b
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "SemBroadcastManager : failed to set receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method


# virtual methods
.method declared-synchronized add(I)V
    .registers 6

    const/4 v1, 0x1

    monitor-enter p0

    if-ne p1, v1, :cond_1f

    :try_start_4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_61

    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    :cond_1f
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1d

    :try_start_22
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_41

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_41
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_60
    .catchall {:try_start_22 .. :try_end_60} :catchall_61

    goto :goto_1d

    :catchall_61
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method handleAction(Landroid/content/Intent;)V
    .registers 11

    const/16 v8, 0x11

    const/16 v7, -0x2710

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SemBroadcastManager : onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string/jumbo v3, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    :cond_35
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get16(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_5d

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v3, v6}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    const/4 v1, 0x1

    :cond_48
    :goto_48
    if-eqz v1, :cond_5c

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-wrap2(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v4}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get17(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get17(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v1, 0x1

    goto :goto_48

    :cond_73
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    const-string/jumbo v3, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    :cond_85
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get16(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get17(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get17(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-wrap2(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get7(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v8, v4}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    goto :goto_5c

    :cond_ba
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_e8

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_USER_REMOVED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    if-eq v2, v7, :cond_5c

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get9(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$12;

    invoke-direct {v4, v2, p0}, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$12;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5c
.end method

.method synthetic lambda$-com_android_server_fingerprint_FingerprintService$SemBroadcastManager_137690(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap5(Lcom/android/server/fingerprint/FingerprintService;II)I

    return-void
.end method

.method declared-synchronized remove(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    :try_start_4
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap2(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_38

    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    :try_start_1b
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get10(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOff:Landroid/content/BroadcastReceiver;

    :cond_2d
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->setReceiver(ZLandroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->mBrScreenOn:Landroid/content/BroadcastReceiver;
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_38

    goto :goto_16

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method
