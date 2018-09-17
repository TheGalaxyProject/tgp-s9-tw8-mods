.class public Lcom/samsung/android/rlc/receiver/SPPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SPPReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_8
    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "intent or intent.getAction() is null"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[onReceive] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "eb850acb179b3447"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {p1}, Lcom/samsung/android/rlc/util/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "received push msg from server"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "CHECKPOINT1 - RECEIVED PUSH MESSAGE WITH SPP"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearDeliveryBackoff(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->handlePushMsg(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_50
    :goto_50
    return-void

    :cond_51
    const-string/jumbo v2, "com.sec.spp.RegistrationChangedAction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "received Registration or Deregistration rusult"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "appId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "eb850acb179b3447"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {p1, p2}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_50

    :cond_76
    const-string/jumbo v2, "com.sec.spp.ServiceAbnormallyStoppedAction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Lcom/samsung/android/rlc/receiver/SPPReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SPP Push Service is stopped abnormally!!"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method
