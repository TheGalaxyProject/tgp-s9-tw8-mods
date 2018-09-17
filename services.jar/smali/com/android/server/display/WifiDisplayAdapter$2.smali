.class Lcom/android/server/display/WifiDisplayAdapter$2;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WifiDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
    .registers 5

    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap4(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_4f
    .catchall {:try_start_10 .. :try_end_4f} :catchall_51

    :cond_4f
    monitor-exit v1

    return-void

    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 14

    const/4 v7, 0x2

    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    :try_start_11
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    if-eqz p2, :cond_76

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    :goto_27
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_37

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-nez v0, :cond_98

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSideSyncMode()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isMirrorLinkMode()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_4f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set7(Lcom/android/server/display/WifiDisplayAdapter;I)I

    :cond_55
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_65
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V
    :try_end_6b
    .catchall {:try_start_11 .. :try_end_6b} :catchall_95

    monitor-exit v6

    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "connected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_76
    :try_start_76
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap9(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_90
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V
    :try_end_94
    .catchall {:try_start_76 .. :try_end_94} :catchall_95

    goto :goto_27

    :catchall_95
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isEmptySurface()Z
    :try_end_af
    .catchall {:try_start_98 .. :try_end_af} :catchall_95

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_37
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
    .registers 7

    const/4 v3, 0x1

    const-string/jumbo v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayConnecting  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_26
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v3, :cond_40

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-nez v0, :cond_6c

    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/display/WifiDisplay;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_61
    .catchall {:try_start_26 .. :try_end_61} :catchall_7b

    :cond_61
    monitor-exit v1

    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "connecting"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6c
    :try_start_6c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_7b

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_61

    goto :goto_40

    :catchall_7b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .registers 4

    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_3b

    :cond_20
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v2, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v2}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set3(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDeviceInfo;)Landroid/hardware/display/SemDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_46

    :cond_3b
    monitor-exit v1

    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayDisconnected()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "onDisplayDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_11
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap3(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_6d

    :cond_26
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSideSyncMode()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isMirrorLinkMode()Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_3e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set7(Lcom/android/server/display/WifiDisplayAdapter;I)I

    :cond_44
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v2, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v2}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set3(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDeviceInfo;)Landroid/hardware/display/SemDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_6d
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V
    :try_end_73
    .catchall {:try_start_11 .. :try_end_73} :catchall_8e

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "wlan.wfd.status"

    const-string/jumbo v1, "disconnected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_8e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set10(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onFeatureStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_19

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set7(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onScanFinished()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get11(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v2, "onScanFinished"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set9(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onScanResults([Landroid/hardware/display/WifiDisplay;)V
    .registers 7

    const-string/jumbo v2, "WifiDisplayAdapter"

    const-string/jumbo v3, "onScanResults"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3

    :try_start_10
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get10(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get2(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    :goto_27
    if-nez v0, :cond_46

    array-length v2, p1

    if-ge v1, v2, :cond_46

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v2

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayAdapter;->-get2(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v4

    if-eq v2, v4, :cond_44

    const/4 v0, 0x1

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_44
    const/4 v0, 0x0

    goto :goto_41

    :cond_46
    if-eqz v0, :cond_5c

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap1(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap7(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_5c
    .catchall {:try_start_10 .. :try_end_5c} :catchall_5e

    :cond_5c
    monitor-exit v3

    return-void

    :catchall_5e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onScanStarted()V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get11(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, v2, :cond_3d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v2, "onScanStarted in counnected status"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/display/WifiDisplay;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    :goto_32
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set9(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_50

    :cond_3d
    monitor-exit v1

    return-void

    :cond_3f
    :try_start_3f
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v2, "onScanStarted"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_50

    goto :goto_32

    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method
