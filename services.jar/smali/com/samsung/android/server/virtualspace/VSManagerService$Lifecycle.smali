.class public Lcom/samsung/android/server/virtualspace/VSManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "VSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/virtualspace/VSManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 5

    :try_start_0
    new-instance v1, Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/server/virtualspace/VSManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "virtualspace"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v2, "VSManagerService"

    const-string/jumbo v3, "No permission to add the VirtualSpace service:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
