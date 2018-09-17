.class Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;
.super Ljava/lang/Thread;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiftFingerMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-wide/16 v2, 0x5dc

    :try_start_2
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->sleep(J)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get19(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get24(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "LiftFingerMessage : Interrupted after start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set13(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;)Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get31(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->start()V

    goto :goto_f

    :cond_42
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "LiftFingerMessage : Interrupted "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
