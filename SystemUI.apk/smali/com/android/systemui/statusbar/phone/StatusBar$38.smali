.class Lcom/android/systemui/statusbar/phone/StatusBar$38;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLevelChanged(IZZIIIIZ)V
    .registers 9

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get4(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get15(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get15(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->firePowerSaveChanged(Z)V

    :cond_20
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set9(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_55

    :goto_3e
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set11(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get23(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get26(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePowerSaver(ZZ)V

    :cond_54
    return-void

    :cond_55
    move v0, v1

    goto :goto_3e
.end method