.class Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;
.super Ljava/lang/Object;
.source "FingerprintLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_13e

    :cond_b
    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    const/4 v6, 0x0

    if-eqz p0, :cond_cc

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_cc

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint Recognition Success! Enable Fingerprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get5(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get7(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get9(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0, v4}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap1(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    :cond_52
    :goto_52
    if-nez v6, :cond_b

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    goto :goto_b

    :cond_5c
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0, v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap1(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    goto :goto_52

    :cond_64
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get4(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get5(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v0

    if-eqz v0, :cond_92

    :cond_82
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_52

    :cond_92
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get6(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get10(Lcom/android/settings/fingerprint/FingerprintLockSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_52

    :cond_cc
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v0, v7, :cond_52

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_fd

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Sensor Error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const v1, 0x7f120b77

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap3(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)V

    :cond_ec
    :goto_ec
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_52

    :cond_fd
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x79

    if-ne v0, v1, :cond_119

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Service Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const v1, 0x7f120b75

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap3(Lcom/android/settings/fingerprint/FingerprintLockSettings;I)V

    goto :goto_ec

    :cond_119
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_ec

    const/4 v6, 0x1

    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "Database Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get1(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ec

    :pswitch_data_13e
    .packed-switch 0xb
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
