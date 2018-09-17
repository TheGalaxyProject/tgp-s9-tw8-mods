.class final Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EphemeralResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/EphemeralResolverConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    invoke-static {}, Lcom/android/server/pm/EphemeralResolverConnection;->-get1()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "PackageManager"

    const-string/jumbo v2, "Connected to instant app resolver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v1}, Lcom/android/server/pm/EphemeralResolverConnection;->-get3(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {p2}, Landroid/app/IInstantAppResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstantAppResolver;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/EphemeralResolverConnection;->-set1(Lcom/android/server/pm/EphemeralResolverConnection;Landroid/app/IInstantAppResolver;)Landroid/app/IInstantAppResolver;

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v1}, Lcom/android/server/pm/EphemeralResolverConnection;->-get2(Lcom/android/server/pm/EphemeralResolverConnection;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2e

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/pm/EphemeralResolverConnection;->-set0(Lcom/android/server/pm/EphemeralResolverConnection;I)I
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_46

    :cond_2e
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    const/4 v3, 0x0

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_34} :catch_3f
    .catchall {:try_start_2e .. :try_end_34} :catchall_46

    :goto_34
    :try_start_34
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v1}, Lcom/android/server/pm/EphemeralResolverConnection;->-get3(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_46

    monitor-exit v2

    return-void

    :catch_3f
    move-exception v0

    :try_start_40
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v1}, Lcom/android/server/pm/EphemeralResolverConnection;->-wrap0(Lcom/android/server/pm/EphemeralResolverConnection;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_46

    goto :goto_34

    :catchall_46
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Lcom/android/server/pm/EphemeralResolverConnection;->-get1()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Disconnected from instant app resolver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-get3(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_16
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-wrap0(Lcom/android/server/pm/EphemeralResolverConnection;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
