.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;
.super Landroid/os/Handler;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_128

    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    const-string/jumbo v7, "UcmService"

    const-string/jumbo v8, "MSG_REFRESH_APPLET_INFO is called..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-get1(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_1a
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-wrap9(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-wrap5(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_26

    monitor-exit v8

    goto :goto_9

    :catchall_26
    move-exception v7

    monitor-exit v8

    throw v7

    :pswitch_29
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v7, v10, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-wrap6(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V

    goto :goto_9

    :pswitch_2f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v7, "packageName"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "status"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "errorCode"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-wrap3(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MSG_PACKAGE_LICENSE_UPDATE packageName-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", errorCode-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_d5

    const-string/jumbo v7, "success"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d5

    if-nez v2, :cond_d5

    const-string/jumbo v7, "event"

    invoke-virtual {v0, v7, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v6, :cond_b2

    const/4 v7, 0x1

    :try_start_94
    invoke-interface {v6, v7, v4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v3

    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  notifyLicenseStatus Activate status- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b2} :catch_b9

    :cond_b2
    :goto_b2
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v7, v10, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-wrap6(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V

    goto/16 :goto_9

    :catch_b9
    move-exception v1

    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :cond_d5
    const/16 v7, 0x12d

    if-ne v2, v7, :cond_e4

    const-string/jumbo v7, "UcmService"

    const-string/jumbo v8, "skip network error case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_e4
    const-string/jumbo v7, "event"

    invoke-virtual {v0, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v6, :cond_b2

    const/4 v7, 0x2

    :try_start_ed
    invoke-interface {v6, v7, v4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v3

    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  notifyLicenseStatus expire status- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_10b} :catch_10c

    goto :goto_b2

    :catch_10c
    move-exception v1

    const-string/jumbo v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_29
        :pswitch_9
        :pswitch_9
        :pswitch_2f
        :pswitch_a
    .end packed-switch
.end method
