.class Lcom/android/settings/fingerprint/FingerprintLockSettings$1;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "FingerprintLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLockSettings;->identifyFinger()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p1

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get1(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get1(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/fingerprint/FingerprintLockSettings$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFingerprintEvent: Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
