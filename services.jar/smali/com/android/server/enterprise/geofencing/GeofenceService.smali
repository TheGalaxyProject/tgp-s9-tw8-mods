.class public Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Lcom/samsung/android/knox/location/IGeofencing$Stub;
.source "GeofenceService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/geofencing/GeofenceService$1;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$2;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
    }
.end annotation


# static fields
.field private static final CHECK_DEVICE_POSITION:I = 0x1

.field private static final DEFAULT_TIME_LIMIT:I = 0xea60

.field private static final REFRESH_GEOFENCING:I = 0x3

.field private static final START_GEOFENCING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GeofenceService"

.field private static mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;


# instance fields
.field private mActiveGeofenceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/location/IGeofencing$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$1;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/geofencing/GeofenceService$2;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->initializeHandlerThread()V

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "enterprise_policy_new"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/BoundingBox;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_61

    new-instance v0, Lcom/samsung/android/knox/location/BoundingBox;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/samsung/android/knox/location/BoundingBox;-><init>(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)V

    const/4 v1, 0x1

    :goto_22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_61

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v3, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3a

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_3a
    iget-wide v4, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v3, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v3, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_46

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_46
    iget-wide v4, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v3, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_52

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_52
    iget-wide v4, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v3, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v3, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_5e

    iput-object v2, v0, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_61
    return-object v0
.end method

.method private checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z
    .registers 10

    const/4 v6, 0x0

    if-eqz p1, :cond_7

    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    if-nez v4, :cond_8

    :cond_7
    return v6

    :cond_8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->top:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_32

    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->bottom:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_32

    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->right:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_32

    iget-object v4, p2, Lcom/samsung/android/knox/location/BoundingBox;->left:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v4, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_32

    const/4 v4, 0x1

    return v4

    :cond_32
    return v6
.end method

.method private checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z
    .registers 31

    const-wide v2, 0x40b8e30000000000L    # 6371.0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    sub-double v26, v16, v14

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->acos(D)D

    move-result-wide v22

    const-wide v24, 0x40b8e30000000000L    # 6371.0

    mul-double v22, v22, v24

    const-wide v24, 0x408f400000000000L    # 1000.0

    mul-double v8, v22, v24

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    move-wide/from16 v22, v0

    cmpg-double v22, v8, v22

    if-gtz v22, :cond_6e

    const/16 v22, 0x1

    return v22

    :cond_6e
    const/16 v22, 0x0

    return v22
.end method

.method private checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z
    .registers 11

    const/4 v7, 0x1

    iget-object v1, p2, Lcom/samsung/android/knox/location/LinearGeofence;->optimizedPoints:Ljava/util/List;

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v7, :cond_17

    const/4 v6, 0x1

    :goto_14
    if-eqz v6, :cond_19

    return v7

    :cond_17
    const/4 v6, 0x0

    goto :goto_14

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_4c

    :try_start_10
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/location/Geofence;

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_38

    goto :goto_1a

    :catchall_38
    move-exception v4

    move-object v2, v3

    :goto_3a
    monitor-exit p0

    throw v4

    :cond_3c
    if-eqz p2, :cond_41

    :try_start_3e
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->sendIntenttoAdmins(Ljava/util/List;)V

    :cond_41
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_38

    move-result v4

    if-eqz v4, :cond_48

    move-object v3, v5

    :cond_48
    monitor-exit p0

    return-object v3

    :cond_4a
    monitor-exit p0

    return-object v5

    :catchall_4c
    move-exception v4

    goto :goto_3a
.end method

.method private checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z
    .registers 13

    const/4 v9, 0x1

    iget-object v1, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_17

    const/4 v8, 0x1

    :goto_14
    if-eqz v8, :cond_19

    return v9

    :cond_17
    const/4 v8, 0x0

    goto :goto_14

    :cond_19
    iget-object v3, p2, Lcom/samsung/android/knox/location/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_2e

    const/4 v8, 0x1

    :goto_2b
    if-eqz v8, :cond_30

    return v9

    :cond_2e
    const/4 v8, 0x0

    goto :goto_2b

    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method private checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;DD)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [D

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [D

    const/4 v1, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    aput-wide v6, v4, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    aput-wide v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2f
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x1

    :goto_32
    if-ge v1, v3, :cond_68

    aget-wide v6, v5, v1

    cmpl-double v6, v6, p4

    if-lez v6, :cond_62

    const/4 v6, 0x1

    :goto_3b
    aget-wide v8, v5, v2

    cmpl-double v7, v8, p4

    if-lez v7, :cond_64

    const/4 v7, 0x1

    :goto_42
    if-eq v6, v7, :cond_5e

    aget-wide v6, v4, v2

    aget-wide v8, v4, v1

    sub-double/2addr v6, v8

    aget-wide v8, v5, v1

    sub-double v8, p4, v8

    mul-double/2addr v6, v8

    aget-wide v8, v5, v2

    aget-wide v10, v5, v1

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    aget-wide v8, v4, v1

    add-double/2addr v6, v8

    cmpg-double v6, p2, v6

    if-gtz v6, :cond_5e

    if-nez v0, :cond_66

    const/4 v0, 0x1

    :cond_5e
    :goto_5e
    move v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_62
    const/4 v6, 0x0

    goto :goto_3b

    :cond_64
    const/4 v7, 0x0

    goto :goto_42

    :cond_66
    const/4 v0, 0x0

    goto :goto_5e

    :cond_68
    return v0
.end method

.method private checkGeofenceInsideOrOutside(Landroid/location/Location;Lcom/samsung/android/knox/location/Geofence;)Z
    .registers 6

    const/4 v2, 0x1

    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    if-ne v0, v2, :cond_e

    check-cast p2, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Lcom/samsung/android/knox/location/CircularGeofence;)Z

    move-result v0

    if-eqz v0, :cond_40

    return v2

    :cond_e
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iget-object v0, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_40

    check-cast p2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Lcom/samsung/android/knox/location/PolygonalGeofence;)Z

    move-result v0

    if-eqz v0, :cond_40

    return v2

    :cond_27
    iget v0, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/knox/location/LinearGeofence;

    iget-object v0, v0, Lcom/samsung/android/knox/location/LinearGeofence;->boundingBox:Lcom/samsung/android/knox/location/BoundingBox;

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Lcom/samsung/android/knox/location/BoundingBox;)Z

    move-result v0

    if-eqz v0, :cond_40

    check-cast p2, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Lcom/samsung/android/knox/location/LinearGeofence;)Z

    move-result v0

    if-eqz v0, :cond_40

    return v2

    :cond_40
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized checkMonitoring()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    :cond_8
    sget-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    :cond_16
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_7b

    move-result v1

    if-eqz v1, :cond_20

    monitor-exit p0

    return-void

    :cond_20
    :try_start_20
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    new-instance v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;)V

    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinTimeParameter()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEffectiveMinDistanceParameter()F

    move-result v4

    sget-object v6, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_56} :catch_58
    .catchall {:try_start_20 .. :try_end_56} :catchall_7b

    :goto_56
    monitor-exit p0

    return-void

    :catch_58
    move-exception v0

    :try_start_59
    const-string/jumbo v1, "GeofenceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkMonitoring - EX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_7b

    goto :goto_56

    :catchall_7b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/location/LinearGeofence;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    add-int/lit8 v1, v3, -0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_f
    div-int/lit8 v9, v3, 0x2

    if-ge v0, v9, :cond_52

    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v4, v10, v12

    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v10, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-object v9, p1, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v6, v10, v12

    new-instance v2, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_52
    return-object v8
.end method

.method private createGracePoints(Ljava/util/List;D)Ljava/util/List;
    .registers 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v32, 0x0

    const-wide/16 v8, 0x0

    const-wide v18, 0x3f747ae147ae147bL    # 0.005

    const-wide v20, 0x3f747ae147ae147bL    # 0.005

    const-wide v40, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double p2, p2, v40

    const/4 v15, 0x0

    :goto_25
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v15, v0, :cond_1e1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    if-ne v15, v0, :cond_140

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    const/16 v40, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    :goto_4b
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v40, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-nez v40, :cond_74

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-ltz v40, :cond_156

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v40, v0

    const-wide v42, 0x3f747ae147ae147bL    # 0.005

    sub-double v40, v40, v42

    move-wide/from16 v0, v40

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    :cond_74
    :goto_74
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-nez v40, :cond_9d

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-ltz v40, :cond_167

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    const-wide v42, 0x3f747ae147ae147bL    # 0.005

    sub-double v40, v40, v42

    move-wide/from16 v0, v40

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    :cond_9d
    :goto_9d
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    sub-double v40, v40, v42

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v44, v0

    sub-double v42, v42, v44

    div-double v30, v40, v42

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v26, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v40, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    add-double v40, v40, v42

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    div-double v40, v40, v42

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v44, v0

    add-double v42, v42, v44

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    div-double v42, v42, v44

    move-object/from16 v0, v26

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    div-double v40, v40, v30

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v32, v0

    mul-double v40, v32, v32

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    add-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v40

    div-double v8, p2, v40

    const-wide/16 v40, 0x0

    cmpl-double v40, v30, v40

    if-lez v40, :cond_178

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    cmpg-double v40, v40, v42

    if-gez v40, :cond_178

    :cond_10c
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    mul-double v42, v32, v8

    add-double v36, v40, v42

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    sub-double v40, v36, v40

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    mul-double v42, v42, v32

    add-double v40, v40, v42

    div-double v34, v40, v32

    new-instance v40, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v40

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13c
    :goto_13c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_25

    :cond_140
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v40, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    goto/16 :goto_4b

    :cond_156
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v40, v0

    const-wide v42, 0x3f747ae147ae147bL    # 0.005

    add-double v40, v40, v42

    move-wide/from16 v0, v40

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto/16 :goto_74

    :cond_167
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    const-wide v42, 0x3f747ae147ae147bL    # 0.005

    add-double v40, v40, v42

    move-wide/from16 v0, v40

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto/16 :goto_9d

    :cond_178
    const-wide/16 v40, 0x0

    cmpg-double v40, v30, v40

    if-gez v40, :cond_18a

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    cmpl-double v40, v40, v42

    if-gtz v40, :cond_10c

    :cond_18a
    const-wide/16 v40, 0x0

    cmpl-double v40, v30, v40

    if-lez v40, :cond_1ce

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    cmpl-double v40, v40, v42

    if-lez v40, :cond_1ce

    :goto_19c
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    mul-double v42, v32, v8

    sub-double v36, v40, v42

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    sub-double v40, v36, v40

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    mul-double v42, v42, v32

    add-double v40, v40, v42

    div-double v34, v40, v32

    new-instance v40, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v40

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13c

    :cond_1ce
    const-wide/16 v40, 0x0

    cmpg-double v40, v30, v40

    if-gez v40, :cond_13c

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    cmpg-double v40, v40, v42

    if-gez v40, :cond_13c

    goto :goto_19c

    :cond_1e1
    const/16 v38, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v39, v40, -0x1

    const/4 v15, 0x0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v16, v40, -0x1

    :goto_1f0
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    if-ge v15, v0, :cond_278

    move-object/from16 v0, v29

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Double;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Double;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v40, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v42, v0

    mul-double v42, v42, v24

    sub-double v40, v40, v42

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v22

    sub-double v42, v42, v44

    sub-double v40, v40, v42

    sub-double v42, v22, v24

    div-double v10, v40, v42

    mul-double v40, v22, v10

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v42, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v44, v0

    mul-double v44, v44, v22

    sub-double v42, v42, v44

    add-double v12, v40, v42

    new-instance v40, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v40

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v39, v38

    add-int/lit8 v38, v38, 0x1

    move/from16 v16, v15

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1f0

    :cond_278
    return-object v14
.end method

.method private declared-synchronized deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 8

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "GEOFENCING"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_2e

    move-result v2

    if-nez v2, :cond_22

    monitor-exit p0

    return v4

    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2e

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized deleteGeofenceActiveListByAdmin(I)V
    .registers 10

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v5, 0x1

    :try_start_3
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v0, v6

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "GEOFENCING"

    invoke-virtual {v5, v6, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_57

    :goto_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    const-string/jumbo v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_30} :catch_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_5f
    .catchall {:try_start_3 .. :try_end_30} :catchall_73

    goto :goto_16

    :catch_31
    move-exception v4

    :try_start_32
    const-string/jumbo v5, "GeofenceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception occurred accessing Enterprise db "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_73

    if-eqz v1, :cond_55

    :try_start_52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_71
    .catchall {:try_start_52 .. :try_end_55} :catchall_7a

    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :cond_57
    if-eqz v1, :cond_55

    :try_start_59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d
    .catchall {:try_start_59 .. :try_end_5c} :catchall_7a

    goto :goto_55

    :catch_5d
    move-exception v3

    goto :goto_55

    :catch_5f
    move-exception v2

    :try_start_60
    const-string/jumbo v5, "GeofenceService"

    const-string/jumbo v6, "deleteGeofenceActiveListByAdmin - EX"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_73

    if-eqz v1, :cond_55

    :try_start_6b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_6f
    .catchall {:try_start_6b .. :try_end_6e} :catchall_7a

    goto :goto_55

    :catch_6f
    move-exception v3

    goto :goto_55

    :catch_71
    move-exception v3

    goto :goto_55

    :catchall_73
    move-exception v5

    if-eqz v1, :cond_79

    :try_start_76
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7d
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    :cond_79
    :goto_79
    :try_start_79
    throw v5
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_7d
    move-exception v3

    goto :goto_79
.end method

.method private static deserializeGeoFence([B)Ljava/lang/Object;
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v3

    :catch_13
    move-exception v2

    return-object v5

    :catch_15
    move-exception v0

    return-object v5
.end method

.method private deviceLocationUnavailableMessage(I)V
    .registers 9

    const/4 v6, -0x1

    const-string/jumbo v3, "GeofenceService"

    const-string/jumbo v4, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.DEVICE_LOCATION_UNAVAILABLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "admin_uid"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq p1, v6, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2b
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "edm.intent.action.device.location.unavailable"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "edm.intent.extra.geofence.user.id"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "admin_uid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eq p1, v6, :cond_63

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_63
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 7

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_GEOFENCING"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private findCollinear(Ljava/util/List;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    :goto_1a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_aa

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v12, v9, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v14, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v0, v11, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    iget-wide v14, v10, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v0, v11, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iget-wide v14, v11, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v0, v9, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v10, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double v2, v12, v14

    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_8a

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_71

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_71
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7a

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7a
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_83

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_83
    :goto_83
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_8a
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_83

    :cond_a6
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_aa
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/location/LatLongPoint;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8
.end method

.method private findFirst(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    const/4 v1, 0x1

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_30

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v4, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_30

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_33
    return-object v0
.end method

.method private findLast(Ljava/util/List;)Lcom/samsung/android/knox/location/LatLongPoint;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)",
            "Lcom/samsung/android/knox/location/LatLongPoint;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    const/4 v0, 0x1

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_30

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v2, v2, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_30

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_33
    return-object v1
.end method

.method private getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    return-object v9

    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    :try_start_e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v10, "adminUid"

    const/4 v11, 0x0

    aput-object v10, v0, v11

    const-string/jumbo v10, "_id"

    const/4 v11, 0x1

    aput-object v10, v0, v11

    iget-object v10, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "GEOFENCING"

    invoke-virtual {v10, v11, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2f
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v10, "_id"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v10, "adminUid"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p2, :cond_2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_66} :catch_67

    goto :goto_2f

    :catch_67
    move-exception v1

    const-string/jumbo v10, "GeofenceService"

    const-string/jumbo v11, "getActiveGeofenceIdsbyAdmin - EX"

    invoke-static {v10, v11, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v9

    :cond_72
    :try_start_72
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_67

    move-result v10

    if-eqz v10, :cond_79

    move-object v6, v9

    :cond_79
    return-object v6
.end method

.method private getEffectiveMinDistanceParameter()F
    .registers 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v7, "distance"

    aput-object v7, v0, v8

    const-string/jumbo v7, "state"

    const/4 v8, 0x1

    aput-object v7, v0, v8

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "GEOFENCINGSETTINGS"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v7, "state"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_1e

    :cond_39
    const-string/jumbo v7, "distance"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v5

    cmpl-float v7, v4, v9

    if-nez v7, :cond_4a

    move v4, v5

    goto :goto_1e

    :cond_4a
    cmpl-float v7, v5, v9

    if-eqz v7, :cond_1e

    cmpl-float v7, v4, v5

    if-lez v7, :cond_1e

    move v4, v5

    goto :goto_1e

    :cond_54
    return v4
.end method

.method private getEffectiveMinTimeParameter()J
    .registers 15

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v4, 0x0

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v9, "time"

    aput-object v9, v0, v10

    const-string/jumbo v9, "state"

    const/4 v10, 0x1

    aput-object v9, v0, v10

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "GEOFENCINGSETTINGS"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v9, "state"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_20

    :cond_3b
    const-string/jumbo v9, "time"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v9, v4, v12

    if-nez v9, :cond_4c

    move-wide v4, v6

    goto :goto_20

    :cond_4c
    cmp-long v9, v6, v12

    if-eqz v9, :cond_20

    cmp-long v9, v4, v6

    if-lez v9, :cond_20

    move-wide v4, v6

    goto :goto_20

    :cond_56
    cmp-long v9, v4, v12

    if-nez v9, :cond_5d

    const-wide/32 v4, 0xea60

    :cond_5d
    return-wide v4
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@getPackageNameForUid - uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_34

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_27

    const/16 v2, 0x4e1f

    if-le p1, v2, :cond_34

    :cond_27
    const-string/jumbo v2, "GeofenceService"

    const-string/jumbo v3, "@getPackageNameForUid - returning UMC PACKAGENAME"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    return-object v2

    :cond_34
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ADMIN_INFO"

    const-string/jumbo v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4c

    const-string/jumbo v2, "GeofenceService"

    const-string/jumbo v3, "@getPackageNameForUid - returning null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_4c
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string/jumbo v2, "GeofenceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@getPackageNameForUid - returning compName.getPackageName() --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initializeHandlerThread()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "GeofenceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-void
.end method

.method private isAdminHasGeofence(I)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    :try_start_3
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v0, v5

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "GEOFENCING"

    invoke-virtual {v4, v5, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_17} :catch_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_20
    .catchall {:try_start_3 .. :try_end_17} :catchall_59

    move-result v4

    if-eqz v1, :cond_1d

    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return v4

    :catch_1e
    move-exception v2

    goto :goto_1d

    :catch_20
    move-exception v2

    :try_start_21
    const-string/jumbo v4, "GeofenceService"

    const-string/jumbo v5, "isAdminHasGeofence - EX"

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_59

    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return v7

    :catch_30
    move-exception v2

    goto :goto_2f

    :catch_32
    move-exception v3

    :try_start_33
    const-string/jumbo v4, "GeofenceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception occurred accessing Enterprise db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_33 .. :try_end_51} :catchall_59

    if-eqz v1, :cond_2f

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_2f

    :catch_57
    move-exception v2

    goto :goto_2f

    :catchall_59
    move-exception v4

    if-eqz v1, :cond_5f

    :try_start_5c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    throw v4

    :catch_60
    move-exception v2

    goto :goto_5f
.end method

.method private isDeviceInsideGeofence(I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v8, "GeofenceService"

    const-string/jumbo v9, "isDeviceInsideGeofence"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v1, v11}, Landroid/location/Criteria;->setPowerRequirement(I)V

    :try_start_25
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocation:Landroid/location/Location;

    if-nez v4, :cond_43

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_43

    const-string/jumbo v8, "passive"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_43

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_42} :catch_4c

    move-result-object v4

    :cond_43
    :goto_43
    if-nez v4, :cond_5b

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage(I)V

    :goto_48
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catch_4c
    move-exception v2

    const-string/jumbo v8, "GeofenceService"

    const-string/jumbo v9, "isDeviceInsideGeofence - EX"

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_43

    :cond_5b
    invoke-direct {p0, v4, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    goto :goto_48
.end method

.method private declared-synchronized loadGeofenceActiveList(I)V
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_14
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_7a

    :try_start_20
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "GEOFENCINGSETTINGS"

    const-string/jumbo v10, "adminUid"

    iget v11, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "GEOFENCINGSETTINGS"

    const-string/jumbo v10, "state"

    invoke-virtual {v8, v1, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_37

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_59} :catch_5a
    .catchall {:try_start_20 .. :try_end_59} :catchall_7a

    goto :goto_37

    :catch_5a
    move-exception v0

    :try_start_5b
    const-string/jumbo v8, "GeofenceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadGeofenceActiveList - EX"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_5b .. :try_end_79} :catchall_7a

    goto :goto_14

    :catchall_7a
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_7d
    monitor-exit p0

    return-void
.end method

.method private parseStringToFloat(Ljava/lang/String;)F
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private parseStringToLong(Ljava/lang/String;)J
    .registers 6

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v2

    return-wide v2

    :catch_5
    move-exception v0

    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private sendIntenttoAdmins(Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v18, "GeofenceService"

    const-string/jumbo v19, "sendIntenttoAdmins"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_20
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_21b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v18

    if-eqz v18, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string/jumbo v19, "ADMIN"

    const-string/jumbo v20, "adminUid"

    iget v0, v14, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4e
    :goto_4e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_20

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getActiveGeofenceIdsbyAdmin(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_160

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v5, v0, [I

    const/4 v4, 0x0

    :goto_7b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_92

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    :cond_92
    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.ID"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "admin_uid"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v8

    const-string/jumbo v18, "GeofenceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "@sendIntenttoAdmins - ownerUid = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v18, "GeofenceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "@sendIntenttoAdmins - thePackageNameFortheUID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v20, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.device.inside"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "edm.intent.extra.geofence.id"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.extra.geofence.user.id"

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "admin_uid"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v20, "android.permission.sec.MDM_GEOFENCING"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_4e

    :cond_160
    :try_start_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string/jumbo v19, "GEOFENCINGSETTINGS"

    const-string/jumbo v20, "state"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4e

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v18, "com.samsung.android.knox.intent.action.DEVICE_OUTSIDE_GEOFENCE"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "admin_uid"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v20, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.device.outside"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "edm.intent.extra.geofence.user.id"

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "admin_uid"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v20, "android.permission.sec.MDM_GEOFENCING"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_216} :catch_218

    goto/16 :goto_4e

    :catch_218
    move-exception v3

    goto/16 :goto_4e

    :cond_21b
    return-void
.end method

.method private serializeGeoFence(Ljava/lang/Object;)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v2, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_15

    move-result-object v3

    return-object v3

    :catch_15
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method private setLocationManager()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private declared-synchronized updateGeofenceActiveListbyAdmin(I)V
    .registers 16

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v11, 0x3

    :try_start_3
    new-array v1, v11, [Ljava/lang/String;

    const-string/jumbo v11, "_id"

    const/4 v12, 0x0

    aput-object v11, v1, v12

    const-string/jumbo v11, "type"

    const/4 v12, 0x1

    aput-object v11, v1, v12

    const-string/jumbo v11, "blobdata"

    const/4 v12, 0x2

    aput-object v11, v1, v12

    iget-object v11, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "GEOFENCING"

    invoke-virtual {v11, v12, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_db

    :cond_22
    :goto_22
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_db

    const-string/jumbo v11, "_id"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iget-object v11, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_22

    const-string/jumbo v11, "type"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string/jumbo v11, "blobdata"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_92

    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iput v5, v8, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    iput v10, v8, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    iget-object v11, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_6b} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_aa
    .catchall {:try_start_3 .. :try_end_6b} :catchall_d1

    goto :goto_22

    :catch_6c
    move-exception v9

    :try_start_6d
    const-string/jumbo v11, "GeofenceService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception occurred accessing Enterprise db "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_6d .. :try_end_8b} :catchall_d1

    if-eqz v2, :cond_90

    :try_start_8d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_e3
    .catchall {:try_start_8d .. :try_end_90} :catchall_d8

    :cond_90
    :goto_90
    monitor-exit p0

    return-void

    :cond_92
    const/4 v11, 0x3

    if-ne v10, v11, :cond_bc

    :try_start_95
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LinearGeofence;

    iput v5, v7, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    iput v10, v7, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    iget-object v11, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a8
    .catch Landroid/database/SQLException; {:try_start_95 .. :try_end_a8} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a8} :catch_aa
    .catchall {:try_start_95 .. :try_end_a8} :catchall_d1

    goto/16 :goto_22

    :catch_aa
    move-exception v4

    :try_start_ab
    const-string/jumbo v11, "GeofenceService"

    const-string/jumbo v12, "updateGeofenceActiveList - EX"

    invoke-static {v11, v12, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_d1

    if-eqz v2, :cond_90

    :try_start_b6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_ba
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_d8

    goto :goto_90

    :catch_ba
    move-exception v6

    goto :goto_90

    :cond_bc
    :try_start_bc
    invoke-static {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/location/CircularGeofence;

    iput v5, v0, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    iput v10, v0, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    iget-object v11, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cf
    .catch Landroid/database/SQLException; {:try_start_bc .. :try_end_cf} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_cf} :catch_aa
    .catchall {:try_start_bc .. :try_end_cf} :catchall_d1

    goto/16 :goto_22

    :catchall_d1
    move-exception v11

    if-eqz v2, :cond_d7

    :try_start_d4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_e5
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d8

    :cond_d7
    :goto_d7
    :try_start_d7
    throw v11
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d8

    :catchall_d8
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_db
    if-eqz v2, :cond_90

    :try_start_dd
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_e1
    .catchall {:try_start_dd .. :try_end_e0} :catchall_d8

    goto :goto_90

    :catch_e1
    move-exception v6

    goto :goto_90

    :catch_e3
    move-exception v6

    goto :goto_90

    :catch_e5
    move-exception v6

    goto :goto_d7
.end method

.method private validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z
    .registers 10

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    cmpg-double v1, p2, v2

    if-gtz v1, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-wide v2, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_1f

    iget-wide v2, p1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_21

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    goto :goto_8

    :cond_21
    iget-wide v2, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_1f

    iget-wide v2, p1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_8

    goto :goto_1f
.end method

.method private validatePolygonalGeofence(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3f

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_24

    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_26

    :cond_24
    const/4 v2, 0x0

    return v2

    :cond_26
    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_24

    iget-wide v4, v1, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3f
    return v2
.end method

.method private writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I
    .registers 9

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-nez p3, :cond_6

    const/4 v3, -0x1

    return v3

    :cond_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "blobdata"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "GEOFENCING"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    return v1
.end method


# virtual methods
.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I
    .registers 12

    const/4 v8, 0x1

    const-string/jumbo v4, "GeofenceService"

    const-string/jumbo v5, "createGeofence"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, -0x1

    iget-object v4, p2, Lcom/samsung/android/knox/location/CircularGeofence;->center:Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v6, p2, Lcom/samsung/android/knox/location/CircularGeofence;->radius:D

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validateCircularGeofence(Lcom/samsung/android/knox/location/LatLongPoint;D)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v3

    if-nez v3, :cond_22

    return v1

    :cond_22
    invoke-direct {p0, p1, v8, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3f
    return v1
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/Geofence;)I
    .registers 6

    const/4 v0, -0x1

    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    check-cast p2, Lcom/samsung/android/knox/location/CircularGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/CircularGeofence;)I

    move-result v0

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    check-cast p2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I

    move-result v0

    goto :goto_c

    :cond_19
    iget v1, p2, Lcom/samsung/android/knox/location/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    check-cast p2, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I

    move-result v0

    goto :goto_c
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/LinearGeofence;)I
    .registers 19

    const-string/jumbo v12, "GeofenceService"

    const-string/jumbo v13, "createGeofence"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v9, -0x1

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_59

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    :cond_2b
    :goto_2b
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v15}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_a5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_a4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_57

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_70

    :cond_57
    const/4 v12, -0x1

    return v12

    :cond_59
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    const-wide v14, 0x412e848000000000L    # 1000000.0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2b

    const-wide v12, 0x412e847e00000000L    # 999999.0

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/samsung/android/knox/location/LinearGeofence;->width:D

    goto :goto_2b

    :cond_70
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v5

    new-instance v2, Lcom/samsung/android/knox/location/LinearGeofence;

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/knox/location/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;D)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v11

    const/4 v12, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v12

    if-eqz v12, :cond_a4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a4
    return v9

    :cond_a5
    return v9
.end method

.method public createGeofence(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/location/PolygonalGeofence;)I
    .registers 19

    const-string/jumbo v3, "GeofenceService"

    const-string/jumbo v4, "createGeofence"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v9, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v10, -0x1

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_85

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_85

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_3e

    :cond_3c
    const/4 v3, -0x1

    return v3

    :cond_3e
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Lcom/samsung/android/knox/location/BoundingBox;

    move-result-object v8

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    const-wide/16 v14, 0x0

    cmpl-double v3, v4, v14

    if-nez v3, :cond_86

    move-object v7, v6

    :goto_4f
    new-instance v2, Lcom/samsung/android/knox/location/PolygonalGeofence;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->points:Ljava/util/List;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/location/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Lcom/samsung/android/knox/location/BoundingBox;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v12

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(Lcom/samsung/android/knox/ContextInfo;I[B)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_85
    return v10

    :cond_86
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/samsung/android/knox/location/PolygonalGeofence;->graceDistance:D

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    goto :goto_4f
.end method

.method public createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;
    .registers 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/LatLongPoint;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v40, 0x0

    const-wide/16 v8, 0x0

    const-wide v24, 0x3f747ae147ae147bL    # 0.005

    const-wide v28, 0x3f747ae147ae147bL    # 0.005

    const/16 v43, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide v54, 0x3ee2cc82c7677f8dL    # 8.964E-6

    mul-double p2, p2, v54

    const/16 v22, 0x0

    :goto_34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    move/from16 v0, v22

    move/from16 v1, v53

    if-ge v0, v1, :cond_384

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_205

    add-int/lit8 v53, v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    :goto_60
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    sub-double v54, v54, v56

    const-wide/16 v56, 0x0

    cmpl-double v53, v54, v56

    if-nez v53, :cond_89

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmpl-double v53, v54, v56

    if-ltz v53, :cond_21d

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    const-wide v56, 0x3f747ae147ae147bL    # 0.005

    sub-double v54, v54, v56

    move-wide/from16 v0, v54

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    :cond_89
    :goto_89
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    sub-double v54, v54, v56

    const-wide/16 v56, 0x0

    cmpl-double v53, v54, v56

    if-nez v53, :cond_b2

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmpl-double v53, v54, v56

    if-ltz v53, :cond_22e

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    const-wide v56, 0x3f747ae147ae147bL    # 0.005

    sub-double v54, v54, v56

    move-wide/from16 v0, v54

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    :cond_b2
    :goto_b2
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    sub-double v54, v54, v56

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    sub-double v56, v56, v58

    div-double v38, v54, v56

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v53

    move-object/from16 v0, v42

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v27, Lcom/samsung/android/knox/location/LatLongPoint;

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    div-double v54, v54, v56

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v58, v0

    add-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-object/from16 v0, v27

    move-wide/from16 v1, v54

    move-wide/from16 v3, v56

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    div-double v54, v54, v38

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v40, v0

    mul-double v54, v40, v40

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v54, v54, v56

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    div-double v8, p2, v54

    const-wide/16 v54, 0x0

    cmpl-double v53, v38, v54

    if-lez v53, :cond_23f

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    cmpg-double v53, v54, v56

    if-gez v53, :cond_23f

    :cond_121
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    add-double v48, v54, v56

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v48, v54

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v44, v54, v40

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v44

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    sub-double v50, v54, v56

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v50, v54

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v46, v54, v40

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v46

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v22, :cond_185

    move-object/from16 v43, v6

    :cond_185
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_193

    move-object/from16 v43, v7

    :cond_193
    if-eqz v22, :cond_1a1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_201

    :cond_1a1
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    add-double v48, v54, v56

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v48, v54

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v44, v54, v40

    if-nez v22, :cond_345

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v44

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d1
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    sub-double v50, v54, v56

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v50, v54

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v46, v54, v40

    if-nez v22, :cond_350

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v46

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_201
    :goto_201
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_34

    :cond_205
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v53, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/location/LatLongPoint;

    goto/16 :goto_60

    :cond_21d
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    const-wide v56, 0x3f747ae147ae147bL    # 0.005

    add-double v54, v54, v56

    move-wide/from16 v0, v54

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    goto/16 :goto_89

    :cond_22e
    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    const-wide v56, 0x3f747ae147ae147bL    # 0.005

    add-double v54, v54, v56

    move-wide/from16 v0, v54

    iput-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    goto/16 :goto_b2

    :cond_23f
    const-wide/16 v54, 0x0

    cmpg-double v53, v38, v54

    if-gez v53, :cond_251

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    cmpl-double v53, v54, v56

    if-gtz v53, :cond_121

    :cond_251
    const-wide/16 v54, 0x0

    cmpl-double v53, v38, v54

    if-lez v53, :cond_35b

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    cmpl-double v53, v54, v56

    if-lez v53, :cond_35b

    :goto_263
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    sub-double v48, v54, v56

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v48, v54

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v44, v54, v40

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v44

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v23

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    add-double v50, v54, v56

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v50, v54

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v46, v54, v40

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v46

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v22, :cond_2c7

    move-object/from16 v43, v6

    :cond_2c7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_2d5

    move-object/from16 v43, v7

    :cond_2d5
    if-eqz v22, :cond_2e3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x1

    move/from16 v0, v22

    move/from16 v1, v53

    if-ne v0, v1, :cond_201

    :cond_2e3
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    sub-double v48, v54, v56

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v48, v54

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v44, v54, v40

    if-nez v22, :cond_36f

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v44

    move-wide/from16 v3, v48

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_313
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    mul-double v56, v40, v8

    add-double v50, v54, v56

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v54, v50, v54

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v40

    add-double v54, v54, v56

    div-double v46, v54, v40

    if-nez v22, :cond_379

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v46

    move-wide/from16 v3, v50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_201

    :cond_345
    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v0, v44

    move-wide/from16 v2, v48

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    goto/16 :goto_1d1

    :cond_350
    new-instance v11, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v0, v46

    move-wide/from16 v2, v50

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    goto/16 :goto_201

    :cond_35b
    const-wide/16 v54, 0x0

    cmpg-double v53, v38, v54

    if-gez v53, :cond_201

    iget-wide v0, v6, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v7, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    cmpg-double v53, v54, v56

    if-gez v53, :cond_201

    goto/16 :goto_263

    :cond_36f
    new-instance v10, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v0, v44

    move-wide/from16 v2, v48

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    goto :goto_313

    :cond_379
    new-instance v11, Lcom/samsung/android/knox/location/LatLongPoint;

    move-wide/from16 v0, v46

    move-wide/from16 v2, v50

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    goto/16 :goto_201

    :cond_384
    const/16 v52, 0x0

    const/16 v22, 0x0

    :goto_388
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v53, v53, -0x2

    move/from16 v0, v22

    move/from16 v1, v53

    if-ge v0, v1, :cond_476

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Double;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    add-int/lit8 v53, v22, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Double;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v53, v52, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v32

    sub-double v54, v54, v56

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    mul-double v58, v58, v30

    sub-double v56, v56, v58

    sub-double v54, v54, v56

    sub-double v56, v30, v32

    div-double v14, v54, v56

    mul-double v54, v30, v14

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    mul-double v58, v58, v30

    sub-double v56, v56, v58

    add-double v18, v54, v56

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v18

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/knox/location/LatLongPoint;

    add-int/lit8 v53, v52, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v53

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v32

    sub-double v54, v54, v56

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    mul-double v58, v58, v30

    sub-double v56, v56, v58

    sub-double v54, v54, v56

    sub-double v56, v30, v32

    div-double v16, v54, v56

    mul-double v54, v30, v16

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    move-wide/from16 v58, v0

    mul-double v58, v58, v30

    sub-double v56, v56, v58

    add-double v20, v54, v56

    new-instance v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    move-wide/from16 v1, v16

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/location/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v53

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v52, v52, 0x1

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_388

    :cond_476
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v53

    add-int/lit8 v22, v53, -0x1

    :goto_482
    if-ltz v22, :cond_494

    move/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/samsung/android/knox/location/LatLongPoint;

    move-object/from16 v0, v53

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v22, v22, -0x1

    goto :goto_482

    :cond_494
    return-object v13
.end method

.method public declared-synchronized destroyGeofence(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string/jumbo v3, "GeofenceService"

    const-string/jumbo v4, "destroyGeofence"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_53

    :cond_3a
    :goto_3a
    monitor-exit p0

    return v2

    :cond_3c
    if-eqz v2, :cond_3a

    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_53

    goto :goto_3a

    :catchall_53
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public findDistance(Lcom/samsung/android/knox/location/LatLongPoint;Lcom/samsung/android/knox/location/LatLongPoint;)D
    .registers 23

    const-wide v2, 0x40aeed880a82edb3L    # 3958.765705195919

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->latitude:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/samsung/android/knox/location/LatLongPoint;->longitude:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v18, v12, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    const-wide v16, 0x40aeed880a82edb3L    # 3958.765705195919

    mul-double v4, v14, v16

    return-wide v4
.end method

.method public getGeofences(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/location/Geofence;",
            ">;"
        }
    .end annotation

    const-string/jumbo v14, "GeofenceService"

    const-string/jumbo v15, "getGeofences"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v14, 0x3

    :try_start_18
    new-array v3, v14, [Ljava/lang/String;

    const-string/jumbo v14, "_id"

    const/4 v15, 0x0

    aput-object v14, v3, v15

    const-string/jumbo v14, "type"

    const/4 v15, 0x1

    aput-object v14, v3, v15

    const-string/jumbo v14, "blobdata"

    const/4 v15, 0x2

    aput-object v14, v3, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v15, "GEOFENCING"

    invoke-virtual {v14, v15, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_de

    :goto_39
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_de

    const-string/jumbo v14, "_id"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v14, "type"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string/jumbo v14, "blobdata"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9d

    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/location/PolygonalGeofence;

    iput v7, v10, Lcom/samsung/android/knox/location/PolygonalGeofence;->id:I

    iput v13, v10, Lcom/samsung/android/knox/location/PolygonalGeofence;->type:I

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_70} :catch_71
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_70} :catch_b6
    .catchall {:try_start_18 .. :try_end_70} :catchall_d7

    goto :goto_39

    :catch_71
    move-exception v12

    :try_start_72
    const-string/jumbo v14, "GeofenceService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception occurred accessing Enterprise db "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_72 .. :try_end_90} :catchall_d7

    if-eqz v4, :cond_95

    :try_start_92
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_e6

    :cond_95
    :goto_95
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9c

    const/4 v11, 0x0

    :cond_9c
    return-object v11

    :cond_9d
    const/4 v14, 0x3

    if-ne v13, v14, :cond_c8

    :try_start_a0
    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/location/LinearGeofence;

    iput v7, v9, Lcom/samsung/android/knox/location/LinearGeofence;->id:I

    iput v13, v9, Lcom/samsung/android/knox/location/LinearGeofence;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Lcom/samsung/android/knox/location/LinearGeofence;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v9, Lcom/samsung/android/knox/location/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b5
    .catch Landroid/database/SQLException; {:try_start_a0 .. :try_end_b5} :catch_71
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b5} :catch_b6
    .catchall {:try_start_a0 .. :try_end_b5} :catchall_d7

    goto :goto_39

    :catch_b6
    move-exception v6

    :try_start_b7
    const-string/jumbo v14, "GeofenceService"

    const-string/jumbo v15, "getGeofences - EX"

    invoke-static {v14, v15, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_d7

    if-eqz v4, :cond_95

    :try_start_c2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_95

    :catch_c6
    move-exception v8

    goto :goto_95

    :cond_c8
    :try_start_c8
    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/location/CircularGeofence;

    iput v7, v1, Lcom/samsung/android/knox/location/CircularGeofence;->id:I

    iput v13, v1, Lcom/samsung/android/knox/location/CircularGeofence;->type:I

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d5
    .catch Landroid/database/SQLException; {:try_start_c8 .. :try_end_d5} :catch_71
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d5} :catch_b6
    .catchall {:try_start_c8 .. :try_end_d5} :catchall_d7

    goto/16 :goto_39

    :catchall_d7
    move-exception v14

    if-eqz v4, :cond_dd

    :try_start_da
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_e8

    :cond_dd
    :goto_dd
    throw v14

    :cond_de
    if-eqz v4, :cond_95

    :try_start_e0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_e4

    goto :goto_95

    :catch_e4
    move-exception v8

    goto :goto_95

    :catch_e6
    move-exception v8

    goto :goto_95

    :catch_e8
    move-exception v8

    goto :goto_dd
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object v0
.end method

.method public getMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;)F
    .registers 6

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "distance"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 6

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "GEOFENCINGSETTINGS"

    const-string/jumbo v3, "time"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->parseStringToLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public isDeviceInsideGeofence(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v5, "GEOFENCINGSETTINGS"

    const-string/jumbo v6, "state"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_6 .. :try_end_13} :catch_19

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_16
    return v1

    :cond_17
    move v1, v2

    goto :goto_16

    :catch_19
    move-exception v0

    return v2
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMinDistanceParameter(Lcom/samsung/android/knox/ContextInfo;F)Z
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_d

    const/4 v3, 0x0

    return v3

    :cond_d
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "distance"

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2f
    return v2
.end method

.method public setMinTimeParameter(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gez v3, :cond_e

    const/4 v3, 0x0

    return v3

    :cond_e
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_30
    return v2
.end method

.method public startGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 10

    const/4 v7, 0x1

    const-string/jumbo v4, "GeofenceService"

    const-string/jumbo v5, "startGeofencing"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x0

    return v4

    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    monitor-enter p0

    if-eqz v1, :cond_25

    :try_start_1f
    sget-object v4, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Lcom/android/server/enterprise/geofencing/GeofenceService$GeoLocationListener;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_48

    if-eqz v4, :cond_25

    monitor-exit p0

    return v7

    :cond_25
    monitor-exit p0

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "GEOFENCINGSETTINGS"

    const-string/jumbo v6, "state"

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_47
    return v3

    :catchall_48
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public stopGeofencing(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v3, "GeofenceService"

    const-string/jumbo v4, "stopGeofencing"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isAdminHasGeofence(I)Z

    move-result v3

    if-nez v3, :cond_17

    return v6

    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    return v3

    :cond_1f
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "GEOFENCINGSETTINGS"

    const-string/jumbo v5, "state"

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_40
    return v2
.end method

.method public systemReady()V
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
