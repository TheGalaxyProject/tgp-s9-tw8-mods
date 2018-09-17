.class Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;
.super Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UcmMonitor"
.end annotation


# instance fields
.field private final UCM_SERVICE_NAME:Ljava/lang/String;

.field private mUCMVendor:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;-><init>()V

    const-string/jumbo v0, "com.samsung.ucs.ucsservice"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->UCM_SERVICE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->registerCallback()V

    return-void
.end method

.method private registerCallback()V
    .registers 5

    const-string/jumbo v2, "com.samsung.ucs.ucsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-nez v1, :cond_17

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "UcmMonitor failed to get UCM System service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    :try_start_17
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "UcmMonitor failed to be registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method


# virtual methods
.method public getUCMVendor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-object v0
.end method

.method public setUCMKeyguardVendor(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-void
.end method
