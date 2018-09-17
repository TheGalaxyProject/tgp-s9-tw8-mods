.class Lcom/android/server/IcccManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "IcccManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IcccManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IcccManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/IcccManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "receive intent action is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8b

    :try_start_26
    const-string/jumbo v9, "status"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_74

    const-string/jumbo v9, "status"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SysScope scanning finished"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_74

    const-string/jumbo v9, "Result"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/IcccManagerService;->-set0(I)I

    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mSysScopeResult: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/IcccManagerService;->-get1()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-static {v9}, Lcom/android/server/IcccManagerService;->-wrap0(Lcom/android/server/IcccManagerService;)Z

    move-result v9

    if-eqz v9, :cond_75

    iget-object v9, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-static {v9}, Lcom/android/server/IcccManagerService;->-wrap3(Lcom/android/server/IcccManagerService;)V

    :cond_74
    :goto_74
    return-void

    :cond_75
    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Not System UID. Only system UID caller can change status"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_7d} :catch_7e

    goto :goto_74

    :catch_7e
    move-exception v4

    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onReceive:ACTION_SYSSCOPESTATUS-exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_74

    :cond_8b
    const-string/jumbo v9, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_102

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_b0

    :try_start_9a
    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "data is null "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_a2} :catch_a3

    goto :goto_74

    :catch_a3
    move-exception v4

    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onReceive:ACTION_BCS_REQUEST-exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_74

    :cond_b0
    :try_start_b0
    const-string/jumbo v9, "command"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_74

    const-string/jumbo v9, "command"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "command: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "AT+ICCCINFO=1,0,0"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_74

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "AT+ICCCINFO=1,0,0\r\n+ICCCINFO:1,1,"

    iget-object v9, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-static {v9, v7}, Lcom/android/server/IcccManagerService;->-wrap2(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "response"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/IcccManagerService;->-get0()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_100
    .catch Ljava/lang/RuntimeException; {:try_start_b0 .. :try_end_100} :catch_a3

    goto/16 :goto_74

    :cond_102
    const-string/jumbo v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_74

    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "ACTION_BOOT_COMPLETED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "/data/misc/tz_iccc/"

    const-string/jumbo v10, "key.dat"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_74

    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Create ICCC key"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-static {v9}, Lcom/android/server/IcccManagerService;->-wrap1(Lcom/android/server/IcccManagerService;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_156

    :try_start_134
    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Call getDeviceStatus to generate key"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Lcom/android/server/IcccManagerService;->getDeviceStatus(I[B)[B
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_134 .. :try_end_146} :catch_148

    goto/16 :goto_74

    :catch_148
    move-exception v3

    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onReceive:ACTION_BOOT_COMPLETED-exception: getDeviceStatus failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_74

    :cond_156
    :try_start_156
    sget-object v9, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Nonce is null, not possible to getDeviceStatus"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_15e} :catch_148

    goto/16 :goto_74
.end method
