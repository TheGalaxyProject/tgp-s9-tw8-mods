.class final Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
.super Ljava/lang/Object;
.source "SdpManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SdpManagerServiceBinderListener"
.end annotation


# instance fields
.field caller:I

.field mAlias:Ljava/lang/String;

.field final mListener:Landroid/os/ISdpListener;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Landroid/os/ISdpListener;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->caller:I

    iput-object p3, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    iput-object p2, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "An ISdpListener has died!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->-get1(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_10
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->-get1(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mAlias:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Landroid/os/ISdpListener;

    invoke-interface {v1}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->-get1(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mAlias:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3e

    :cond_3c
    monitor-exit v2

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getCaller()I
    .registers 2

    iget v0, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->caller:I

    return v0
.end method

.method setCaller(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->caller:I

    return-void
.end method
