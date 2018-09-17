.class public Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;
.super Ljava/lang/Object;
.source "EnterpriseCertEnrollPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCEPConnection"
.end annotation


# instance fields
.field mCepProtocol:Ljava/lang/String;

.field mContainerUid:I

.field private mService:Landroid/os/IBinder;

.field mWithThread:Z

.field final synthetic this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iput-boolean p4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 11

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "In Binder Died death receipient"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "containerID"

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "protocol"

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string/jumbo v7, "EnterpriseCertEnrollPolicy"

    const-string/jumbo v8, "cepAgentUid"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v7, "com.samsung.android.knox.intent.CEP_SERVICE_DISCONNECTED"

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-wrap4(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v7, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-wrap4(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5f} :catch_60

    goto :goto_37

    :catch_60
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Exception in binderDied:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    return-void

    :cond_6c
    :try_start_6c
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] and PackageName["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_6b

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6b

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d0

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d0
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_6b

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_e3} :catch_60

    goto :goto_6b
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get0()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onServiceConnected["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] and PackageName["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] thread["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    invoke-static {p2}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_91

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5d

    :try_start_4e
    iget-boolean v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mWithThread:Z

    if-eqz v4, :cond_65

    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v6, v7, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_5d} :catch_84
    .catchall {:try_start_4e .. :try_end_5d} :catchall_91

    :cond_5d
    :goto_5d
    if-eqz v0, :cond_63

    const/4 v4, 0x0

    :try_start_60
    invoke-interface {p2, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_94
    .catchall {:try_start_60 .. :try_end_63} :catchall_91

    :cond_63
    :goto_63
    monitor-exit p0

    return-void

    :cond_65
    :try_start_65
    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v6, v7, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get0()Z

    move-result v4

    if-eqz v4, :cond_5d

    if-eqz v3, :cond_5d

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "offer interface in blocking queue"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_83} :catch_84
    .catchall {:try_start_65 .. :try_end_83} :catchall_91

    goto :goto_5d

    :catch_84
    move-exception v2

    :try_start_85
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_85 .. :try_end_90} :catchall_91

    goto :goto_5d

    :catchall_91
    move-exception v4

    monitor-exit p0

    throw v4

    :catch_94
    move-exception v1

    :try_start_95
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Exception in onServiceDisconneted:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_91

    goto :goto_63
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 13

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "containerID"

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "protocol"

    iget-object v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-static {v7}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v7

    const-string/jumbo v8, "EnterpriseCertEnrollPolicy"

    const-string/jumbo v9, "cepAgentUid"

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v8, "com.samsung.android.knox.intent.CEP_SERVICE_DISCONNECTED"

    iget v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v10, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v7, v8, v2, v9, v10}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-wrap4(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->this$0:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v8, "com.samsung.action.knox.certenroll.CEP_SERVICE_DISCONNECTED"

    iget v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    iget-object v10, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-static {v7, v8, v2, v9, v10}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-wrap4(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_2d

    :cond_56
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get0()Z

    move-result v7

    if-eqz v7, :cond_8f

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SCEP Service has unexpectedly disconnected details:ContainerUid["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] and PackageName["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_db

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_db

    :try_start_a5
    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mService:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-interface {v7, p0, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ab} :catch_dc

    :goto_ab
    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c8

    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mCepProtocol:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_db

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get3()Ljava/util/Map;

    move-result-object v7

    iget v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;->mContainerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_db
    return-void

    :catch_dc
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->-get1()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Death link does not exist \t"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab
.end method
