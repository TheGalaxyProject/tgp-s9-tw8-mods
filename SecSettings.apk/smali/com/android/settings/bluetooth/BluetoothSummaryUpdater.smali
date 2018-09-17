.class public final Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;
.super Lcom/android/settings/widget/SummaryUpdater;
.source "BluetoothSummaryUpdater.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field private final mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mConnectionState:I

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    :cond_10
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-void
.end method

.method private getDevices()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method private updateConnected()V
    .registers 9

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_6

    return-void

    :cond_6
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v4

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mConnectionState:I

    if-eq v4, v5, :cond_13

    iput v4, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mConnectionState:I

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->getDevices()Ljava/util/Collection;

    move-result-object v3

    if-nez v3, :cond_1c

    iput v7, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mConnectionState:I

    return-void

    :cond_1c
    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mConnectionState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3d

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_26

    move-object v0, v1

    :cond_39
    if-nez v0, :cond_3d

    iput v7, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mConnectionState:I

    :cond_3d
    return-void
.end method


# virtual methods
.method getConnectedDeviceSummary()Ljava/lang/String;
    .registers 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    return-object v7

    :cond_13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    if-le v0, v6, :cond_17

    :cond_31
    if-le v0, v6, :cond_3d

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v6, 0x7f120401

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3c
    return-object v5

    :cond_3d
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const v7, 0x7f120406

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3c
.end method

.method public getSummary()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mEnabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v1, 0x7f120429

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mConnectionState:I

    packed-switch v0, :pswitch_data_36

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v1, 0x7f120880

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->getConnectedDeviceSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_22
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v1, 0x7f120407

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2c
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v1, 0x7f120433

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1d
        :pswitch_2c
    .end packed-switch
.end method

.method public onBluetoothStateChanged(I)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_9

    const/16 v1, 0xb

    if-ne p1, v1, :cond_f

    :cond_9
    :goto_9
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->notifyChangeIfNeeded()V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mConnectionState:I

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->updateConnected()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 2

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 2

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public register(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mEnabled:Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mConnectionState:I

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->notifyChangeIfNeeded()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    goto :goto_23
.end method
