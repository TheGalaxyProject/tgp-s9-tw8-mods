.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap8(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 3

    const-string/jumbo v0, "enterprise_policy"

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap4(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap9(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-wrap9(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method
