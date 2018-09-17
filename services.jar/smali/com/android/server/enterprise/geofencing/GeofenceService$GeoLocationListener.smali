.class final Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;
.super Ljava/lang/Object;
.source "GeofenceService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeoLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-set0(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)Landroid/location/Location;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-wrap1(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-set0(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
