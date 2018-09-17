.class final Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;
.super Landroid/os/Handler;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnterpriseIDHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    if-eqz p1, :cond_9

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_88

    :cond_9
    :goto_9
    :sswitch_9
    return-void

    :pswitch_a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;

    invoke-virtual {v4}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-static {v8, v7, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v1

    const-string/jumbo v8, "EnterpriseIdentity"

    const-string/jumbo v9, "In handleMessage: USERAUTHENTICATION"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3e

    const-string/jumbo v8, "EnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "In handleMessage: The authenticator value is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    :try_start_3e
    invoke-interface {v1, v4}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;->acquireToken(Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v5

    if-eqz v5, :cond_7e

    invoke-virtual {v5}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v8, Lcom/samsung/android/knox/container/AuthenticationConfig;->AUTHENTICATION_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v8, "EnterpriseIdentity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "In handleMessage: acquireToken(): status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v6, :sswitch_data_8e

    goto :goto_9

    :sswitch_6c
    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIDHandler;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    const/4 v9, 0x1

    invoke-static {v8, v9, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ZI)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_72} :catch_73

    goto :goto_9

    :catch_73
    move-exception v2

    const-string/jumbo v8, "EnterpriseIdentity"

    const-string/jumbo v9, "In handleMessage: RemoteException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :cond_7e
    :try_start_7e
    const-string/jumbo v8, "EnterpriseIdentity"

    const-string/jumbo v9, "In handleMessage: acquireToken returns null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_87} :catch_73

    goto :goto_9

    :pswitch_data_88
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch

    :sswitch_data_8e
    .sparse-switch
        -0x12 -> :sswitch_9
        -0xf -> :sswitch_9
        -0x2 -> :sswitch_6c
        -0x1 -> :sswitch_6c
        0x0 -> :sswitch_9
    .end sparse-switch
.end method
