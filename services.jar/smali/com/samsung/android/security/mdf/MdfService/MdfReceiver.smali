.class public Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdfReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-direct {v1, p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "com.samsung.android.security.mdf.MDF_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->updateNotification()V

    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "Update Notification"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void

    :cond_28
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;-><init>(Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;)V

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27

    :cond_42
    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "Invalid action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method
