.class Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
.super Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field public mStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;-><init>()V

    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 13

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string/jumbo v2, "CryptKeeperSDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEncryptionStatusChanged: operation, volId = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_80

    const-string/jumbo v2, "free"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a8

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get2(Lcom/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CryptKeeperSDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status free: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_76

    const-string/jumbo v2, "ejecting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    :cond_76
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_80
    :goto_80
    iput-object p3, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    return-void

    :cond_83
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get8(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-nez v2, :cond_93

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get4(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-eqz v2, :cond_9d

    :cond_93
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_80

    :cond_9d
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_80

    :cond_a8
    const-string/jumbo v2, "busy"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "status busy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2, p4}, Lcom/android/settings/encryption/CryptSDCardSettings;->-set1(Lcom/android/settings/encryption/CryptSDCardSettings;I)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get6(Lcom/android/settings/encryption/CryptSDCardSettings;)I

    move-result v2

    if-nez v2, :cond_cc

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2, p5}, Lcom/android/settings/encryption/CryptSDCardSettings;->-set2(Lcom/android/settings/encryption/CryptSDCardSettings;I)I

    :cond_cc
    if-ne p2, v6, :cond_d3

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2, v5}, Lcom/android/settings/encryption/CryptSDCardSettings;->-set0(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z

    :cond_d3
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_80

    :cond_dd
    const-string/jumbo v2, "Mount"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13e

    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "status mount"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get8(Lcom/android/settings/encryption/CryptSDCardSettings;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get3(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v2, "MasterClearConfirm"

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-static {v3}, Lcom/android/settings/encryption/CryptSDCardSettings;->-get0(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "MasterClearConfirm Case , Device will be Reset to Factory Default !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_80

    :cond_133
    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "Normal Decryption Success Case"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    :cond_13e
    const-string/jumbo v2, "CryptKeeperSDSettings"

    const-string/jumbo v3, "ignore status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80
.end method
