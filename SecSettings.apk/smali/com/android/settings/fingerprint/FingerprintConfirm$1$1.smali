.class Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm$1;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v1, :sswitch_data_d4

    :cond_a
    :goto_a
    :sswitch_a
    return-void

    :sswitch_b
    if-eqz p0, :cond_a

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v6}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_a

    :sswitch_1c
    if-eqz p0, :cond_47

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_47

    const-string/jumbo v1, "FpstFingerprintConfirm"

    const-string/jumbo v2, "Fingerprint Recognition Success! Start screen lock type"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "identifyFingerprint"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_a

    :cond_47
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_86

    const-string/jumbo v1, "FpstFingerprintConfirm"

    const-string/jumbo v2, "Sensor Error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->-get0(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const v3, 0x7f120b77

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerprintConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_75
    :goto_75
    if-eqz p0, :cond_a

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v6}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_a

    :cond_86
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_b0

    const-string/jumbo v1, "FpstFingerprintConfirm"

    const-string/jumbo v2, "Service Failure"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->-get0(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const v3, 0x7f120b75

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerprintConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_75

    :cond_b0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_75

    const-string/jumbo v1, "FpstFingerprintConfirm"

    const-string/jumbo v2, "Database Failure"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->-get1(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_75

    :sswitch_data_d4
    .sparse-switch
        0xb -> :sswitch_a
        0xc -> :sswitch_a
        0xd -> :sswitch_1c
        0x186a0 -> :sswitch_b
    .end sparse-switch
.end method
