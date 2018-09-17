.class Lcom/android/server/policy/LegacyGlobalActions$22;
.super Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V
    .registers 13

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap6(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onPress()V
    .registers 5

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get1()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "LegacyGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in onPress of DataModeToggle ro.config.donot_nosim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.config.donot_nosim"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v2, "isSettingsChangesAllowed"

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get55(Lcom/android/server/policy/LegacyGlobalActions;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap19(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get1()Z

    move-result v0

    if-eqz v0, :cond_52

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "restricted by MDM "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void

    :cond_53
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap10(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap34(Lcom/android/server/policy/LegacyGlobalActions;)V

    :cond_60
    return-void
.end method

.method onToggle(Z)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v2, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    const-string/jumbo v3, "checkEnableUseOfPacketData"

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-get55(Lcom/android/server/policy/LegacyGlobalActions;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap19(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v3, "isCellularDataAllowed"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap19(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_31
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get1()Z

    move-result v1

    if-eqz v1, :cond_40

    const-string/jumbo v1, "LegacyGlobalActions"

    const-string/jumbo v2, "Mobile data is restricted by MDM "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void

    :cond_41
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get1()Z

    move-result v1

    if-eqz v1, :cond_61

    const-string/jumbo v1, "LegacyGlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in onToggle of DataModeToggle on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get54(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->semSetDataEnabled(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.NETWORK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
