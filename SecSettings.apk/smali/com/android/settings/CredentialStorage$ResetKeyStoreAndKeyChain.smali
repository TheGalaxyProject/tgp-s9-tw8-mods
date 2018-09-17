.class Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 12

    const/4 v9, 0x0

    const/4 v6, 0x1

    :try_start_2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-direct {v1, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v7, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const-string/jumbo v8, "knox_ccm_policy"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/CredentialStorage;->-set0(Lcom/android/settings/CredentialStorage;Lcom/samsung/android/knox/keystore/IClientCertificateManager;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v7, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v7}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v7

    if-eqz v7, :cond_83

    iget-object v7, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v7}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    const-string/jumbo v7, "3.0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    iget-object v7, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v7}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v7

    if-eqz v7, :cond_9b

    iget-object v7, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v7}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_5f

    iget-object v7, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v7}, Lcom/android/settings/CredentialStorage;->-get0(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_85

    const-string/jumbo v7, "CredentialStorage"

    const-string/jumbo v8, "Successfully deleted certificates from CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5f} :catch_8f

    :cond_5f
    :goto_5f
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->resetKeyStore(I)V

    :try_start_6d
    iget-object v7, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v7}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6d .. :try_end_72} :catch_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_72} :catch_c2

    move-result-object v5

    :try_start_73
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v7

    invoke-interface {v7}, Landroid/security/IKeyChainService;->reset()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7e} :catch_a6
    .catchall {:try_start_73 .. :try_end_7e} :catchall_b0

    move-result-object v7

    :try_start_7f
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_82} :catch_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_82} :catch_c2

    return-object v7

    :cond_83
    const/4 v0, 0x0

    goto :goto_2d

    :cond_85
    :try_start_85
    const-string/jumbo v7, "CredentialStorage"

    const-string/jumbo v8, "Error deleting certificates from CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8e} :catch_8f

    goto :goto_5f

    :catch_8f
    move-exception v2

    const/4 v6, 0x0

    const-string/jumbo v7, "CredentialStorage"

    const-string/jumbo v8, "Failed at ClientCertificateManager reset API"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :cond_9b
    const/4 v6, 0x0

    :try_start_9c
    const-string/jumbo v7, "CredentialStorage"

    const-string/jumbo v8, "CCM Service is NOT available on this device"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a5} :catch_8f

    goto :goto_5f

    :catch_a6
    move-exception v2

    const/4 v7, 0x0

    :try_start_a8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_b0

    move-result-object v7

    :try_start_ac
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    return-object v7

    :catchall_b0
    move-exception v7

    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v7
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_ac .. :try_end_b5} :catch_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ac .. :try_end_b5} :catch_c2

    :catch_b5
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    :catch_c2
    move-exception v3

    const-string/jumbo v7, "CredentialStorage"

    const-string/jumbo v8, "CredentialStorage is destroyed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f12066c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->-wrap1(Lcom/android/settings/CredentialStorage;)V

    :goto_18
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f12066f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
