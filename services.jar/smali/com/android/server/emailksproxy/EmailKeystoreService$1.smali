.class Lcom/android/server/emailksproxy/EmailKeystoreService$1;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/emailksproxy/EmailKeystoreService;->grantAccessForAKS(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$uidscep:I


# direct methods
.method constructor <init>(Lcom/android/server/emailksproxy/EmailKeystoreService;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

    iput p2, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    iput-object p3, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v4, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->this$0:Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-static {v6}, Lcom/android/server/emailksproxy/EmailKeystoreService;->-get0(Lcom/android/server/emailksproxy/EmailKeystoreService;)Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    invoke-static {v6, v7}, Lcom/android/server/emailksproxy/EmailKeystoreService;->bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    const-string/jumbo v6, "EmailKeystoreService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "grantAccessForAKS call setGrant : uidscep = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " alias = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$uidscep:I

    iget-object v7, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$alias:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_42} :catch_66
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_42} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_52
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_42} :catch_48
    .catchall {:try_start_1 .. :try_end_42} :catchall_70

    if-eqz v4, :cond_47

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    :cond_47
    :goto_47
    return-void

    :catch_48
    move-exception v1

    :try_start_49
    invoke-virtual {v1}, Ljava/lang/AssertionError;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_70

    if-eqz v4, :cond_47

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_47

    :catch_52
    move-exception v2

    :try_start_53
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_70

    if-eqz v4, :cond_47

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_47

    :catch_5c
    move-exception v0

    :try_start_5d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_70

    if-eqz v4, :cond_47

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_47

    :catch_66
    move-exception v3

    :try_start_67
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_70

    if-eqz v4, :cond_47

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    goto :goto_47

    :catchall_70
    move-exception v6

    if-eqz v4, :cond_76

    invoke-virtual {v4}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->close()V

    :cond_76
    throw v6
.end method
