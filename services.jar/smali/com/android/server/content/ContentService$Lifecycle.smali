.class public Lcom/android/server/content/ContentService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/content/ContentService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0}, Lcom/android/server/content/ContentService;->systemReady()V

    :cond_9
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-static {v0}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-static {v0}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .registers 4

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    const/4 v0, 0x1

    :goto_8
    new-instance v1, Lcom/android/server/content/ContentService;

    invoke-virtual {p0}, Lcom/android/server/content/ContentService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/content/ContentService;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    const-string/jumbo v1, "content"

    iget-object v2, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/ContentService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_8
.end method
