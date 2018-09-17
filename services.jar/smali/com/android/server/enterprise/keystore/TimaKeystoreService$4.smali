.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;
.super Ljava/lang/Object;
.source "TimaKeystoreService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;->getDKSService(I)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    iput p2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "In DKS onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {p2}, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-set0(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_32

    :try_start_14
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->val$val:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;->startTimaKeystoreServices(I)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2b} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_2b} :catch_2d
    .catchall {:try_start_14 .. :try_end_2b} :catchall_32

    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    :catch_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_2b

    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_35
    move-exception v0

    :try_start_36
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_32

    goto :goto_2b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "In DKS onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-set0(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap7(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    return-void
.end method
