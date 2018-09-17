.class Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;
.super Ljava/lang/Object;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v1, :sswitch_data_ee

    :cond_9
    :goto_9
    :sswitch_9
    return-void

    :sswitch_a
    if-eqz p0, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->overridePendingTransition(II)V

    goto :goto_9

    :sswitch_22
    if-eqz p0, :cond_55

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_55

    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Fingerprint Recognition Success! Start screen lock type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "identifyFingerprint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->overridePendingTransition(II)V

    goto :goto_9

    :cond_55
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8e

    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Sensor Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const v2, 0x7f120b77

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap6(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V

    :cond_75
    :goto_75
    if-eqz p0, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->overridePendingTransition(II)V

    goto/16 :goto_9

    :cond_8e
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_aa

    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Service Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const v2, 0x7f120b75

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap6(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V

    goto :goto_75

    :cond_aa
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_ce

    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Database Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-get1(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_75

    :cond_ce
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_de

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap3(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    return-void

    :cond_de
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_75

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap5(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    return-void

    :sswitch_data_ee
    .sparse-switch
        0xb -> :sswitch_9
        0xc -> :sswitch_9
        0xd -> :sswitch_22
        0x186a0 -> :sswitch_a
    .end sparse-switch
.end method
