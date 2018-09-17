.class Lcom/android/settings/encryption/CryptSDCardSettings$2;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 7

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "BixbyManger is null, cannot execute bixby request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Failed to get stateId, cannot execute bixby request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bixby Request stateId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "StartEncryptSDcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "SD card isn\'t mounted, cannot encrypt SD card"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "SDCard"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    return-void

    :cond_8a
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap0(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-eqz v2, :cond_c3

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Sdcard is already encrypted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Encrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b9
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    return-void

    :cond_c3
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_e1

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Encrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    :goto_ea
    return-void

    :cond_eb
    const-string/jumbo v2, "StartDecryptSDcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18e

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12c

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "SD card isn\'t mounted, cannot decrypt SD card"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "SDCard"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    return-void

    :cond_12c
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-wrap0(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-nez v2, :cond_165

    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "Sdcard is already decrypted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_15b

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Decrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15b
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    return-void

    :cond_165
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_183

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    const-string/jumbo v3, "Decrypted"

    const-string/jumbo v4, "Already"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->makeNlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_183
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendSuccess()V

    goto/16 :goto_ea

    :cond_18e
    const-string/jumbo v2, "CryptKeeperSDSettings_Bixby"

    const-string/jumbo v3, "There isn\'t stateId matched with request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get1(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings$BixbyManager;->sendFailure()V

    goto/16 :goto_ea
.end method
