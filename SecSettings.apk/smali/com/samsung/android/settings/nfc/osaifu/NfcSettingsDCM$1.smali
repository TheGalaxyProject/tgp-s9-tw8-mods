.class Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettingsDCM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    invoke-static {v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->-get0(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    invoke-static {v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->-get0(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v3

    const-string/jumbo v6, "[NfcSettingsDCM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive - Action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "com.sec.android.intent.action.EF_LOCK_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    const-string/jumbo v6, "com.sec.android.intent.action.EF_LOCK_UPDATED_INTERNAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    :cond_45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "responseType"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "efLockUser"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "efLockRemote"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v6, "[NfcSettingsDCM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UIM lock state is updated. Type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", User Lock : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Remote Lock : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_9b

    if-nez v2, :cond_a0

    :cond_9b
    if-nez v4, :cond_a6

    if-nez v5, :cond_a6

    const/4 v3, 0x0

    :cond_a0
    :goto_a0
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    invoke-static {v6, v1, v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->-wrap0(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;II)V

    return-void

    :cond_a6
    if-ne v4, v9, :cond_ac

    if-ne v5, v9, :cond_ac

    const/4 v3, 0x3

    goto :goto_a0

    :cond_ac
    if-nez v4, :cond_b2

    if-ne v5, v9, :cond_b2

    const/4 v3, 0x1

    goto :goto_a0

    :cond_b2
    if-ne v4, v9, :cond_a0

    if-nez v5, :cond_a0

    const/4 v3, 0x2

    goto :goto_a0
.end method
