.class Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smart_bonding"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_38

    const/4 v0, 0x1

    :goto_15
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get1(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get1(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_26
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get2(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get2(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_37
    return-void

    :cond_38
    const/4 v0, 0x0

    goto :goto_15
.end method
