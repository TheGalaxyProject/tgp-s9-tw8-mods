.class public Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
.super Ljava/lang/Object;
.source "BluetoothDevicePreferenceGroup.java"


# instance fields
.field private mChildIdCounter:I

.field private mContext:Landroid/content/Context;

.field private mIsVisibleDivider:Z

.field private mLayout:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mLayout:I

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mChildIdCounter:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mProgress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mIsVisibleDivider:Z

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPreference(ILcom/android/settings/bluetooth/BluetoothDevicePreference;)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    monitor-enter p0

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mChildIdCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mChildIdCounter:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setChildId(J)V
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2e

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_31
    const-string/jumbo v0, "BluetoothDevicePreferenceGroup"

    const-string/jumbo v1, "addPreference :: contains preference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3b
    const-string/jumbo v0, "BluetoothDevicePreferenceGroup"

    const-string/jumbo v1, "addPreference :: mList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public findDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method public getLayoutResource()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mLayout:I

    return v0
.end method

.method public getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    return-object v0

    :cond_e
    return-object v1
.end method

.method public getPreferenceCount()I
    .registers 3

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPreferenceList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isVisibleDivider()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mIsVisibleDivider:Z

    return v0
.end method

.method public remove(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public remove(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public removeAll()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_9
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mLayout:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    return-void
.end method
