.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;
.super Ljava/lang/Object;
.source "WifiApDeviceInfo.java"


# instance fields
.field private mDeviceMac:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->mDeviceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->mDeviceMac:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->mDeviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method