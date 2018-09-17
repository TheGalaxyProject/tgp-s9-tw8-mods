.class public Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
.super Ljava/lang/Object;
.source "SharedDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_SHARED_DEVICE_SERVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SHARED_DEVICE_INTERNAL"

.field private static final ERROR_API_CALL:Ljava/lang/String; = "API Call Failed."

.field private static final ERROR_APP_BIND:Ljava/lang/String; = "Unable to bind to shared device agent."

.field private static final ERROR_SERVICE_CONNECTION:Ljava/lang/String; = "Service Connection Not Available."

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final SHARED_DEVICE_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.SharedDeviceService"

.field private static final SHARED_DEVICE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final TAG:Ljava/lang/String;

.field private static sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindToService()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    const/4 v7, 0x1

    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Executing bindToService()..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_12

    return-void

    :cond_12
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.SHARED_DEVICE_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.enterprise.knox.shareddevice"

    const-string/jumbo v4, "com.sec.enterprise.knox.shareddevice.SharedDeviceService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.KNOX_SD_ONESDK_INTERNAL"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Binding to the service..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4, v7, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_8b

    :try_start_44
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v3, v6, v7, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_64

    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "In bindToService: CoutnDownLatch returns false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_64} :catch_65

    :cond_64
    :goto_64
    return-void

    :catch_65
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "InterruptedException : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_8b
    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v4, "Unable to bind to shared device agent."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    .registers 3

    const-class v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    :cond_e
    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private releaseService()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unbinding from the service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1c
    iput-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    return-void
.end method


# virtual methods
.method public declared-synchronized notifyUserSignedIn(Lcom/samsung/android/knox/shareddevice/UserCredentials;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Executing notifyUserSignedIn()..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_5e

    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_61

    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v3, "Service Connection Not Available."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_23} :catch_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_51

    :catch_23
    move-exception v0

    :try_start_24
    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v3, "API Call Failed."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_51
    .catchall {:try_start_24 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v2

    :try_start_52
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_5d
    throw v2
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_61
    :try_start_61
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    move-result-object v1

    if-nez v1, :cond_72

    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v3, "Service Connection Not Available."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_72
    invoke-interface {v1, p1}, Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;->notifyUserSignedIn(Lcom/samsung/android/knox/shareddevice/UserCredentials;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_75} :catch_23
    .catchall {:try_start_61 .. :try_end_75} :catchall_51

    :try_start_75
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_5e

    :cond_80
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized performUserAuthentication(Lcom/samsung/android/knox/shareddevice/UserCredentials;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Executing performUserAuthentication()..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_5f

    :try_start_a
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_62

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_24} :catch_24
    .catchall {:try_start_a .. :try_end_24} :catchall_52

    :catch_24
    move-exception v1

    :try_start_25
    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v4, "API Call Failed."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_52
    .catchall {:try_start_25 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v3

    :try_start_53
    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_5e
    throw v3
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_62
    :try_start_62
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    move-result-object v2

    if-nez v2, :cond_73

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_73
    invoke-interface {v2, p1}, Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;->performUserAuthentication(Lcom/samsung/android/knox/shareddevice/UserCredentials;)I
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_76} :catch_24
    .catchall {:try_start_62 .. :try_end_76} :catchall_52

    move-result v0

    :try_start_77
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_5f

    :cond_82
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized signOutUser(Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Executing signOutUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_77

    :try_start_22
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_7a

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_3c} :catch_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_6a

    :catch_3c
    move-exception v0

    :try_start_3d
    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v4, "API Call Failed."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6a
    .catchall {:try_start_3d .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception v3

    :try_start_6b
    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_76
    throw v3
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_7a
    :try_start_7a
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    move-result-object v1

    if-nez v1, :cond_8b

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string/jumbo v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8b
    invoke-interface {v1, p1}, Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;->signOutUser(Z)Z
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_8e} :catch_3c
    .catchall {:try_start_7a .. :try_end_8e} :catchall_6a

    move-result v2

    :try_start_8f
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_9a
    .catchall {:try_start_8f .. :try_end_9a} :catchall_77

    :cond_9a
    monitor-exit p0

    return v2
.end method
