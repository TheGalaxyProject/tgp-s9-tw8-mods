.class Lcom/android/server/LocationManagerService$5;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LocationManagerService$5;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/LocationManagerService$5;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get17(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Lcom/android/server/LocationManagerService$5;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get20(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    goto :goto_15

    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/LocationManagerService$5;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-wrap6(Lcom/android/server/LocationManagerService;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    monitor-exit v3

    return-void
.end method
