.class Lcom/android/systemui/globalactions/GlobalActionsDialog$25;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFirstEmergency:Z

.field private mIsVT:Z

.field private mIsVoLTE:Z

.field private mShowConditionalEmergency:Z

.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V
    .registers 14

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mIsFirstEmergency:Z

    iput-boolean v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mShowConditionalEmergency:Z

    iput-boolean v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mIsVT:Z

    iput-boolean v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mIsVoLTE:Z

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 5

    const-string/jumbo v0, "GlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in changeStateFromPress of LongLifeMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get52(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mIsVT:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get52(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string/jumbo v1, "volte"

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mIsVoLTE:Z

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mIsVT:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mIsVoLTE:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->isEnabled()Z

    move-result v0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public onPress()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v1, "GlobalActionsDialog"

    const-string/jumbo v2, "in onPress of LongLifeMode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v2, "0002"

    const-string/jumbo v3, "EmergencyMode"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap31(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v2, 0x10403ce

    invoke-static {v1, v2, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap37(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void

    :cond_27
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "isBikeMode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_57

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "safety_care_user_agree"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v4, :cond_57

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v2, 0x10403c2

    invoke-static {v1, v2, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap37(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void

    :cond_57
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "enabled"

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method onToggle(Z)V
    .registers 5

    const-string/jumbo v0, "GlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in onToggle of LongLifeMode on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mIsFirstEmergency:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->showConditionalInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mShowConditionalEmergency:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mIsFirstEmergency:Z

    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->mShowConditionalEmergency:Z

    return v0
.end method

.method public showConditionalInternal()Z
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v5, "ril.domesticOtaStart"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get1()Z

    move-result v5

    if-eqz v5, :cond_21

    const-string/jumbo v5, "GlobalActionsDialog"

    const-string/jumbo v6, "EmergencyMode is disable on OTA mode"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return v10

    :cond_22
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_100

    const-string/jumbo v5, "lock"

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "missing_phone_lock"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    return v10

    :cond_4a
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get50(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    if-eqz v5, :cond_f6

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v6, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v7, "isKioskModeEnabled"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, ""

    aput-object v9, v8, v10

    const-string/jumbo v9, "emergency"

    aput-object v9, v8, v11

    invoke-static {v5, v6, v7, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "kids_home_mode"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v11, :cond_f2

    const/4 v3, 0x1

    :goto_86
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get50(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_f4

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get50(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    const/16 v6, 0x600

    invoke-virtual {v5, v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v4

    :goto_9e
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$25;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get50(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->canSetMode()Z

    move-result v0

    const-string/jumbo v5, "GlobalActionsDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kioskModeEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "kidsModeEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "upsmModeEnabled ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "canSetMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_ff

    xor-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_ff

    xor-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_ff

    xor-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_ff

    return v11

    :cond_f2
    const/4 v3, 0x0

    goto :goto_86

    :cond_f4
    const/4 v4, 0x0

    goto :goto_9e

    :cond_f6
    const-string/jumbo v5, "GlobalActionsDialog"

    const-string/jumbo v6, "mEmergency : mSemEmergencyManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ff
    :goto_ff
    return v10

    :cond_100
    const-string/jumbo v5, "GlobalActionsDialog"

    const-string/jumbo v6, "mEmergency : SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE is false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff
.end method

.method public showDuringKeyguard()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
