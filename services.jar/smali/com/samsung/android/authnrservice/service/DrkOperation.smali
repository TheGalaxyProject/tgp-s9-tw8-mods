.class final Lcom/samsung/android/authnrservice/service/DrkOperation;
.super Ljava/lang/Object;
.source "DrkOperation.java"


# static fields
.field private static final AUTHNR_SERVICE_NAME:Ljava/lang/String; = "AUTHNR"

.field private static final TAG:Ljava/lang/String; = "DO"

.field private static sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;


# instance fields
.field private mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;
    .registers 2

    const-class v1, Lcom/samsung/android/authnrservice/service/DrkOperation;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    if-nez v0, :cond_e

    new-instance v0, Lcom/samsung/android/authnrservice/service/DrkOperation;

    invoke-direct {v0}, Lcom/samsung/android/authnrservice/service/DrkOperation;-><init>()V

    sput-object v0, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;

    :cond_e
    sget-object v0, Lcom/samsung/android/authnrservice/service/DrkOperation;->sDrkOperation:Lcom/samsung/android/authnrservice/service/DrkOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized getDrkKeyHandle()[B
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string/jumbo v4, "DO"

    const-string/jumbo v5, "getDrkKeyHandle"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v4, :cond_1c

    const-string/jumbo v4, "DO"

    const-string/jumbo v5, "not initialized"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_67

    monitor-exit p0

    return-object v4

    :cond_1c
    :try_start_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const-string/jumbo v5, "AUTHNR"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_33

    array-length v4, v0

    if-nez v4, :cond_65

    :cond_33
    const-string/jumbo v4, "DO"

    const-string/jumbo v5, "createServiceKeySession failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3f} :catch_41
    .catchall {:try_start_1c .. :try_end_3f} :catchall_67

    monitor-exit p0

    return-object v4

    :catch_41
    move-exception v1

    :try_start_42
    const-string/jumbo v4, "DO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get drk fail. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [B
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_67

    monitor-exit p0

    return-object v4

    :cond_65
    monitor-exit p0

    return-object v0

    :catchall_67
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized initialize(Landroid/content/Context;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_3
    const-string/jumbo v4, "DO"

    const-string/jumbo v5, "initialize"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v4, :cond_17

    new-instance v4, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {v4, p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    :cond_17
    iget-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v4

    if-nez v4, :cond_2a

    const-string/jumbo v4, "DO"

    const-string/jumbo v5, "isAliveDeviceRootKeyService failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_68

    monitor-exit p0

    return v7

    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_66

    const-string/jumbo v4, "DO"

    const-string/jumbo v5, "isExistDeviceRootKey failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_43} :catch_45
    .catchall {:try_start_2a .. :try_end_43} :catchall_68

    monitor-exit p0

    return v7

    :catch_45
    move-exception v0

    :try_start_46
    const-string/jumbo v4, "DO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "drk init failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_46 .. :try_end_64} :catchall_68

    monitor-exit p0

    return v7

    :cond_66
    monitor-exit p0

    return v6

    :catchall_68
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized terminate()Z
    .registers 9

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v4, "DO"

    const-string/jumbo v5, "terminate"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v4, :cond_1a

    const-string/jumbo v4, "DO"

    const-string/jumbo v5, "not initialized"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_5b

    monitor-exit p0

    return v7

    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_34

    const-string/jumbo v4, "DO"

    const-string/jumbo v5, "releaseServiceKeySession failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_3a
    .catchall {:try_start_1a .. :try_end_32} :catchall_5b

    monitor-exit p0

    return v7

    :cond_34
    const/4 v4, 0x0

    :try_start_35
    iput-object v4, p0, Lcom/samsung/android/authnrservice/service/DrkOperation;->mDrkServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_37} :catch_3a
    .catchall {:try_start_35 .. :try_end_37} :catchall_5b

    const/4 v4, 0x1

    monitor-exit p0

    return v4

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string/jumbo v4, "DO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "drk terminate failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_5b

    monitor-exit p0

    return v7

    :catchall_5b
    move-exception v4

    monitor-exit p0

    throw v4
.end method
