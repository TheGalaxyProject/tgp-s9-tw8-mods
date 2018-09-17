.class public final Lcom/android/server/SamsungCoreServices;
.super Ljava/lang/Object;
.source "SamsungCoreServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;,
        Lcom/android/server/SamsungCoreServices$ServiceTag;
    }
.end annotation


# static fields
.field private static final SAMSUNG_CORE_SERVICES_CREATOR_CLASS_NAME:Ljava/lang/String; = "com.android.server.SamsungCoreServicesCreator"

.field private static final TAG:Ljava/lang/String; = "SamsungCoreServices"

.field private static final sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    :try_start_0
    const-string/jumbo v4, "com.android.server.SamsungCoreServicesCreator"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sput-object v4, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_f} :catch_24
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_f} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "com.android.server.SamsungCoreServicesCreator could not be instantiated"

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1a
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "com.android.server.SamsungCoreServicesCreator could not be instantiated"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_24
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "com.android.server.SamsungCoreServicesCreator could not be loaded"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createActivityManagerServiceBridge(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActivityManagerServiceBridge;
    .registers 3

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0, p1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->createActivityManagerServiceBridge(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v0

    return-object v0
.end method

.method public static createAlarmManagerServiceBridge(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)Lcom/android/server/IAlarmManagerServiceBridge;
    .registers 3

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0, p1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->createAlarmManagerServiceBridge(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)Lcom/android/server/IAlarmManagerServiceBridge;

    move-result-object v0

    return-object v0
.end method

.method public static createService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/SamsungCoreServices$ServiceTag;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0, p1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->createService(Lcom/android/server/SamsungCoreServices$ServiceTag;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;
    .registers 2

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_AOD_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/AODWindowPolicy;

    return-object v0
.end method

.method public static getDssController()Lcom/android/server/DssController;
    .registers 2

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_DSS_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DssController;

    return-object v0
.end method

.method public static getEdgeWindowPolicy()Lcom/android/server/policy/EdgeWindowPolicy;
    .registers 2

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_EDGE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/EdgeWindowPolicy;

    return-object v0
.end method

.method public static getMultitapKeyManager()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTITAPKEY_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageConfigurationController()Lcom/android/server/PackageConfigurationController;
    .registers 2

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_PACKAGE_CONFIGURATION_CONTROLLER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationController;

    return-object v0
.end method

.method public static getSamsungPhoneWindowManager()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_PHONE_WINDOW_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;
    .registers 2

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    sget-object v1, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_TSP_STATE_MANAGER:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-interface {v0, v1}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/TspStateManagerPolicy;

    return-object v0
.end method

.method public static isAvailable(Lcom/android/server/SamsungCoreServices$ServiceTag;)Z
    .registers 2

    sget-object v0, Lcom/android/server/SamsungCoreServices;->sCoreServicesCreator:Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;

    invoke-interface {v0, p0}, Lcom/android/server/SamsungCoreServices$ISamsungCoreServicesCreator;->isAvailable(Lcom/android/server/SamsungCoreServices$ServiceTag;)Z

    move-result v0

    return v0
.end method
