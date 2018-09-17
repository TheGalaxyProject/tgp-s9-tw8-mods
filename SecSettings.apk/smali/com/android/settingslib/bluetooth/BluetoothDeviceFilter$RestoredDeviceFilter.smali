.class final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestoredDeviceFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    return v0
.end method
