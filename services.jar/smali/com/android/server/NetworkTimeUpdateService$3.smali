.class Lcom/android/server/NetworkTimeUpdateService$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 17

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "NetworkTimeUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive + intent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_128

    const-string/jumbo v9, "enterprise_policy_new"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDateTimePolicy()Lcom/samsung/android/knox/datetime/DateTimePolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getNtpInfo()Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object v3

    if-eqz v3, :cond_de

    invoke-virtual {v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_de

    invoke-virtual {v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v9, v10, v4

    if-eqz v9, :cond_98

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v9, v4, v5}, Lcom/android/server/NetworkTimeUpdateService;->-set4(Lcom/android/server/NetworkTimeUpdateService;J)J

    :goto_53
    invoke-virtual {v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v9, v10, v6

    if-eqz v9, :cond_aa

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v9, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->-set5(Lcom/android/server/NetworkTimeUpdateService;J)J

    :goto_62
    invoke-virtual {v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->getMaxAttempts()I

    move-result v2

    if-eqz v2, :cond_bc

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v9, v2}, Lcom/android/server/NetworkTimeUpdateService;->-set8(Lcom/android/server/NetworkTimeUpdateService;I)I

    :goto_6d
    invoke-virtual {v3}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeErrorThreshold()I

    move-result v8

    int-to-long v10, v8

    const-wide/16 v12, 0x0

    cmp-long v9, v12, v10

    if-eqz v9, :cond_cd

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v9, v8}, Lcom/android/server/NetworkTimeUpdateService;->-set6(Lcom/android/server/NetworkTimeUpdateService;I)I

    :goto_7d
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->-set3(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->-set7(Lcom/android/server/NetworkTimeUpdateService;I)I

    :goto_89
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v9}, Lcom/android/server/NetworkTimeUpdateService;->-get0(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    :cond_97
    :goto_97
    return-void

    :cond_98
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0094

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->-set4(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_53

    :cond_aa
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0095

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->-set5(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_62

    :cond_bc
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0096

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->-set8(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_6d

    :cond_cd
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0097

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->-set6(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_7d

    :cond_de
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->-set3(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0094

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->-set4(Lcom/android/server/NetworkTimeUpdateService;J)J

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0095

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/server/NetworkTimeUpdateService;->-set5(Lcom/android/server/NetworkTimeUpdateService;J)J

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0096

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->-set8(Lcom/android/server/NetworkTimeUpdateService;I)I

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0097

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->-set6(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto/16 :goto_89

    :cond_128
    const-string/jumbo v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->-set0(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    goto/16 :goto_97
.end method
