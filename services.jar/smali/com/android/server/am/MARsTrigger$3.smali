.class Lcom/android/server/am/MARsTrigger$3;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    const-string/jumbo v8, "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    const-string/jumbo v8, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    :cond_1f
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    const-string/jumbo v8, "FIRST_ALARM_APPLOCKER"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    const-string/jumbo v8, "REPEAT_ALARM_APPLOCKER"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    :cond_40
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v8

    if-nez v8, :cond_2d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->isActiveAudioMode()Z

    move-result v8

    if-nez v8, :cond_62

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V

    :cond_62
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "REPEAT_ALARM_APPLOCKER"

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v10, Lcom/android/server/am/MARsTrigger;->mAppLockerRepeatAlarmInterval:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto :goto_2d

    :cond_6f
    const-string/jumbo v8, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V

    goto :goto_2d

    :cond_87
    const-string/jumbo v8, "FIRST_ALARM_AUTORUN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_99

    const-string/jumbo v8, "REPEAT_ALARM_AUTORUN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d5

    :cond_99
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v8

    if-nez v8, :cond_2d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->isActiveAudioMode()Z

    move-result v8

    if-nez v8, :cond_c3

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStats(Z)V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V

    :cond_c3
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v8, v8, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    new-instance v9, Lcom/android/server/am/MARsTrigger$3$1;

    invoke-direct {v9, p0}, Lcom/android/server/am/MARsTrigger$3$1;-><init>(Lcom/android/server/am/MARsTrigger$3;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/MARsHandler$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2d

    :cond_d5
    const-string/jumbo v8, "FIRST_ALARM_AUTORUN_TRAFFIC_STAT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_105

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v8

    if-nez v8, :cond_2d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStats(Z)V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->updateLocationStat()V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "FIRST_ALARM_AUTORUN"

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v10, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_2d

    :cond_105
    const-string/jumbo v8, "REPEAT_ALARM_AUTORUN_TRAFFIC_STAT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_135

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v8

    if-nez v8, :cond_2d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStats(Z)V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->updateLocationStat()V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "REPEAT_ALARM_AUTORUN"

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v10, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_2d

    :cond_135
    const-string/jumbo v8, "com.samsung.intent.action.SET_RUNNING_LOCATION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_147

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8, p2}, Lcom/android/server/am/MARsPolicyManager;->updateRunningLocationPackages(Landroid/content/Intent;)V

    goto/16 :goto_2d

    :cond_147
    const-string/jumbo v8, "PRELOAD_POLICY_ALARM"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_166

    sget-boolean v8, Lcom/android/server/am/MARsPolicyManager;->RESPRELOAD_ENABLE:Z

    if-eqz v8, :cond_2d

    const-string/jumbo v8, "MARsTrigger"

    const-string/jumbo v9, "preload  begin..."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->preloadHotProcess()V

    goto/16 :goto_2d

    :cond_166
    const-string/jumbo v8, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_199

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2d

    const-string/jumbo v8, "POLICY_NAME"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8, v6}, Lcom/android/server/am/MARsTrigger;->-wrap1(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "PACKAGE_NAME"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v7, :cond_2d

    if-eqz v5, :cond_2d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v8, v7, v5}, Lcom/android/server/am/MARsHandler;->sendRunPolicySepcificPkgMsgToMainHandler(ILjava/util/ArrayList;)V

    goto/16 :goto_2d

    :cond_199
    const-string/jumbo v8, "FIRST_ALARM_ARES_TRAFFIC_STAT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d6

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "force"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/am/MARsTrigger;->-set1(Lcom/android/server/am/MARsTrigger;Z)Z

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v8

    if-eqz v8, :cond_2d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStats(Z)V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->updateLocationStat()V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "ALARM_ARES_MEMORY_NOT_ENOUGH"

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v10, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_2d

    :cond_1d6
    const-string/jumbo v8, "com.android.server.am.ACTION_UI_SET_ARES"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ef

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9, v0}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V

    goto/16 :goto_2d

    :cond_1ef
    const-string/jumbo v8, "com.android.server.am.ACTION_MEMORY_NOT_ENOUGH_ARES"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_218

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v8

    if-nez v8, :cond_2d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStats(Z)V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "ALARM_ARES_MEMORY_NOT_ENOUGH"

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v10, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_2d

    :cond_218
    const-string/jumbo v8, "ALARM_ARES_MEMORY_NOT_ENOUGH"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_242

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/android/server/am/MARsTrigger;->-set2(Lcom/android/server/am/MARsTrigger;J)J

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStats(Z)V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mHandlerManager:Lcom/android/server/am/MARsHandler;

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get2(Lcom/android/server/am/MARsTrigger;)Z

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/MARsHandler;->sendAREsMemoryNotEnoughMsgToMainHandler(IZ)V

    goto/16 :goto_2d

    :cond_242
    const-string/jumbo v8, "ACTION_MARS_UPDATE_ARES_SETTING"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2d

    const-string/jumbo v8, "coolTime"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_277

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v8, v8, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v8, :cond_277

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v8, v8, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v8, :cond_277

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v8, v8, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v8, v1}, Lcom/android/server/am/DynamicHiddenApp;->setAREsCoolTimeForSluggishAging(I)V

    :cond_277
    const-string/jumbo v8, "lastUsedTime"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_28d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v8, :cond_28d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$3;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8, v4}, Lcom/android/server/am/MARsPolicyManager;->setUnusedAREsTimeForSluggishAging(I)V

    :cond_28d
    :try_start_28d
    const-string/jumbo v8, "sys.config.mars_ares_setting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28d .. :try_end_2b3} :catch_2b5

    goto/16 :goto_2d

    :catch_2b5
    move-exception v2

    const-string/jumbo v8, "MARsTrigger"

    const-string/jumbo v9, "init(), we cannot set system property"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d
.end method
