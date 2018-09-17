.class Lcom/android/settings/development/DevelopmentSettings$3;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettings$3;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$3;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettings;->-get0(Lcom/android/settings/development/DevelopmentSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$3;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/settings/development/DevelopmentSettings;->-set0(Lcom/android/settings/development/DevelopmentSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    monitor-exit v1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$3;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettings;->-wrap4(Lcom/android/settings/development/DevelopmentSettings;)V

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$3;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettings;->-get0(Lcom/android/settings/development/DevelopmentSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$3;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/settings/development/DevelopmentSettings;->-set0(Lcom/android/settings/development/DevelopmentSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_14

    monitor-exit v1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings$3;->this$0:Lcom/android/settings/development/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettings;->-wrap4(Lcom/android/settings/development/DevelopmentSettings;)V

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method
