.class Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;
.super Landroid/database/ContentObserver;
.source "SmartBondingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "toddler_mode_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    goto :goto_1a
.end method
