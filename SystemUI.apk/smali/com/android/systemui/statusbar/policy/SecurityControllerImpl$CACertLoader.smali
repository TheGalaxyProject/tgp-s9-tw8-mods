.class public Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;
.super Landroid/os/AsyncTask;
.source "SecurityControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CACertLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    new-instance v4, Landroid/util/Pair;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_36} :catch_74
    .catchall {:try_start_3 .. :try_end_36} :catchall_98

    if-eqz v0, :cond_3b

    :try_start_38
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_71
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3f
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_3f
    .catch Ljava/lang/AssertionError; {:try_start_38 .. :try_end_3b} :catch_3f

    :cond_3b
    move-object v3, v5

    :goto_3c
    if-eqz v3, :cond_73

    :try_start_3e
    throw v3
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3f} :catch_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_3f} :catch_3f
    .catch Ljava/lang/AssertionError; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v1

    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8e

    const-string/jumbo v3, "SecurityController"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    new-instance v4, Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/android/systemui/statusbar/policy/-$Lambda$6oxuQKCLfr_gb0BOhbDcbDNap-0;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$6oxuQKCLfr_gb0BOhbDcbDNap-0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Landroid/util/Pair;

    aget-object v4, p1, v8

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :catch_71
    move-exception v3

    goto :goto_3c

    :cond_73
    return-object v4

    :catch_74
    move-exception v3

    :try_start_75
    throw v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :goto_7a
    if-eqz v0, :cond_7f

    :try_start_7c
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_82
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_3f
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_7f} :catch_3f
    .catch Ljava/lang/AssertionError; {:try_start_7c .. :try_end_7f} :catch_3f

    :cond_7f
    :goto_7f
    if-eqz v4, :cond_8d

    :try_start_81
    throw v4

    :catch_82
    move-exception v6

    if-nez v4, :cond_87

    move-object v4, v6

    goto :goto_7f

    :cond_87
    if-eq v4, v6, :cond_7f

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7f

    :cond_8d
    throw v3
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8e} :catch_3f
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_8e} :catch_3f
    .catch Ljava/lang/AssertionError; {:try_start_81 .. :try_end_8e} :catch_3f

    :cond_8e
    const-string/jumbo v3, "SecurityController"

    const-string/jumbo v4, "doInBackground : Exception is occured. But error meessage is null."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :catchall_98
    move-exception v3

    move-object v4, v5

    goto :goto_7a
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->doInBackground([Ljava/lang/Integer;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_policy_SecurityControllerImpl$CACertLoader_15284([Ljava/lang/Integer;)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    aget-object v2, p1, v3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "SecurityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    :cond_3a
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
