.class abstract Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClassUuidFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;->matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z

    move-result v0

    return v0
.end method

.method abstract matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
.end method
