.class Lcom/samsung/android/settings/TRoamingSettings$1;
.super Landroid/database/ContentObserver;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/TRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/TRoamingSettings;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get7(Lcom/samsung/android/settings/TRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap3(Lcom/samsung/android/settings/TRoamingSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get1(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->-get5(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v0, "TRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KKK mUseDataRoamingObserver DATA_ROAMING is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap3(Lcom/samsung/android/settings/TRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap3(Lcom/samsung/android/settings/TRoamingSettings;)Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get8(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get8(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap1(Lcom/samsung/android/settings/TRoamingSettings;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap0(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lte_roaming_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_72
    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get3(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get3(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap0(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hd_voice_roaming_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_90
    return-void

    :cond_91
    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get8(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v0, "TRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Data roaming enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportLTERoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "TRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Data roaming enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-static {}, Lcom/android/settings/Utils;->isSupportLTERoaming()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_128

    const-string/jumbo v0, "TRoamingSettings"

    const-string/jumbo v1, "Data roaming enable:auto enable LTE/HD voice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get8(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap0(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lte_roaming_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get3(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get3(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap0(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hd_voice_roaming_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_90

    :cond_128
    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap1(Lcom/samsung/android/settings/TRoamingSettings;)Z

    move-result v0

    if-nez v0, :cond_144

    const-string/jumbo v0, "TRoamingSettings"

    const-string/jumbo v1, "KKK mUseDataRoamingObserver LTE_ROAMING is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get3(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_90

    :cond_144
    iget-object v0, p0, Lcom/samsung/android/settings/TRoamingSettings$1;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/TRoamingSettings;->-get3(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_90
.end method