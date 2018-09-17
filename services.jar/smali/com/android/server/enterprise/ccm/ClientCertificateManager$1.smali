.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "android.intent.extra.user_handle"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Intent received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " user id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const-string/jumbo v7, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    const-string/jumbo v7, "android.intent.extra.USER"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    if-nez v2, :cond_5d

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "managedProfileUserHandle is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return-void

    :cond_5d
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "managedProfileUserId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v7, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap5(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v7

    if-eqz v7, :cond_92

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    sget-object v8, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-static {v7, v3, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap9(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    :cond_91
    :goto_91
    return-void

    :cond_92
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    sget-object v8, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-static {v7, v3, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap9(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    goto :goto_91

    :cond_9a
    const-string/jumbo v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v7, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap5(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v7

    if-nez v7, :cond_91

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v8, -0x1

    invoke-static {v7, v8, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v7, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap3(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v7, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap1(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v7, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap0(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    goto :goto_91

    :cond_c1
    const-string/jumbo v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_dc

    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_dc

    const-string/jumbo v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_114

    :cond_dc
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap4(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Z

    move-result v7

    if-eqz v7, :cond_91

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get3()Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_108

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Send message MSG_UPDATE_LOCK_STATUS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->what:I

    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get3()Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x14

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_91

    :cond_108
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "update lock status Failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    :cond_114
    const-string/jumbo v7, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    if-nez v5, :cond_132

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_131

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "onReceive ACTION_DEVICE_OWNER_CHANGED userHandle is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_131
    return-void

    :cond_132
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    sget-object v8, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-static {v7, v0, v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap9(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    goto/16 :goto_91
.end method
