.class Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->grantAccessForAKS(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$uidscep:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    iput p2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    iput-object p3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v3, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-static {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->-get0(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    iget-object v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_19} :catch_33
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_29
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_19} :catch_1f
    .catchall {:try_start_1 .. :try_end_19} :catchall_3d

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v1

    :try_start_20
    invoke-virtual {v1}, Ljava/lang/AssertionError;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_3d

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_1e

    :catch_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3d

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_1e

    :catch_33
    move-exception v2

    :try_start_34
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3d

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_1e

    :catchall_3d
    move-exception v5

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_43
    throw v5
.end method
