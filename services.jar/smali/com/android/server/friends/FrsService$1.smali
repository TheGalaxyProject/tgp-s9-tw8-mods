.class Lcom/android/server/friends/FrsService$1;
.super Lcom/android/server/friends/FrsServiceLocal;
.source "FrsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/friends/FrsService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/friends/FrsService;


# direct methods
.method constructor <init>(Lcom/android/server/friends/FrsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/friends/FrsService$1;->this$0:Lcom/android/server/friends/FrsService;

    invoke-direct {p0}, Lcom/android/server/friends/FrsServiceLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public accessoryStateChanged(Z[B[B)V
    .registers 8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/friends/FrsService$1;->this$0:Lcom/android/server/friends/FrsService;

    invoke-static {v1}, Lcom/android/server/friends/FrsService;->-get0(Lcom/android/server/friends/FrsService;)Lcom/samsung/android/friends/FrsServiceImpl;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v2

    const-string/jumbo v3, "attached"

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Z)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, p2}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v2

    const-string/jumbo v3, "extraData"

    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x110001

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/friends/FrsService$1;->this$0:Lcom/android/server/friends/FrsService;

    invoke-static {v1}, Lcom/android/server/friends/FrsService;->-get0(Lcom/android/server/friends/FrsService;)Lcom/samsung/android/friends/FrsServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public screenTurnedOff()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/friends/FrsService$1;->this$0:Lcom/android/server/friends/FrsService;

    invoke-static {v1}, Lcom/android/server/friends/FrsService;->-get0(Lcom/android/server/friends/FrsService;)Lcom/samsung/android/friends/FrsServiceImpl;

    move-result-object v1

    const v2, 0x210002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_d
.end method
