.class Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
.super Ljava/lang/Object;
.source "GenericSSOService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SSOServiceConnection"
.end annotation


# instance fields
.field private mService:Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;)I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    return v0
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mService:Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "onServiceConnected SSOServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mService:Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get5()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get5()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get0()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get0()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_36
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v0, "GenericSSOService"

    const-string/jumbo v1, "onServiceDisConnected SSOServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mService:Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get5()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get0()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get0()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_26
    return-void
.end method
