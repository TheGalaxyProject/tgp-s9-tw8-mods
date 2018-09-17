.class public Lcom/android/server/location/FlpHardwareProvider;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"


# static fields
.field private static final DEBUG:Z

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final TAG:Ljava/lang/String; = "FlpHardwareProvider"

.field private static sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    const-string/jumbo v0, "FlpHardwareProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/FlpHardwareProvider;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;
    .registers 3

    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0}, Lcom/android/server/location/FlpHardwareProvider;-><init>()V

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    sget-boolean v0, Lcom/android/server/location/FlpHardwareProvider;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "getInstance() created empty provider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    return-object v0
.end method

.method public static isSupported()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/location/FlpHardwareProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "isSupported() returning false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cleanup()V
    .registers 3

    sget-boolean v0, Lcom/android/server/location/FlpHardwareProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "empty cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
