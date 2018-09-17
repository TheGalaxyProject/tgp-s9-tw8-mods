.class public Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;
.super Ljava/lang/Object;
.source "AppPermissionMonitorPhoneWindow.java"


# static fields
.field private static final APM_FLAG_OVERLAY:I = 0x400000

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEFAULT_MONITOR:Ljava/lang/String; = "5242951"

.field private static final LOG_TAG_APM:Ljava/lang/String; = "PhoneWindow_APM : "

.field private static final TIME_INTERVAL:J = 0xea60L


# instance fields
.field private mAPM:Landroid/os/IPermissionMonitor;

.field private mAppPermMonitor:Ljava/lang/String;

.field private mCallingCacheDisplay:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAppPermissionMonitorSupported:Z

.field private mIsMonitoredFeature:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mCallingCacheDisplay:Landroid/util/LruCache;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAPM:Landroid/os/IPermissionMonitor;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mIsAppPermissionMonitorSupported:Z

    return-void
.end method

.method private isCalledPackage(Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->isExpired(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "PhoneWindow_APM : "

    const-string/jumbo v3, "isCalledPackage return false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1e
    const-string/jumbo v2, "PhoneWindow_APM : "

    const-string/jumbo v3, "isCalledPackage return true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method private isExpired(Ljava/lang/String;J)Z
    .registers 10

    const-wide/32 v4, 0xea60

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_19

    :cond_18
    :goto_18
    return v1

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    const/4 v1, 0x0

    goto :goto_18
.end method


# virtual methods
.method public sendNotificationForAppPermissionMonitor(II)V
    .registers 12

    const/high16 v8, 0x400000

    const/4 v4, 0x0

    const-string/jumbo v5, "PhoneWindow_APM : "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendNotificationForAppPermissionMonitor callingPid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mIsAppPermissionMonitorSupported:Z

    if-eqz v5, :cond_c9

    const-string/jumbo v5, "PhoneWindow_APM : "

    const-string/jumbo v6, "sendNotificationForAppPermissionMonitor 2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "PhoneWindow_APM : "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendNotificationForAppPermissionMonitor 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->isCalledPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c9

    const-string/jumbo v5, "persist.app.permission.monitor"

    const-string/jumbo v6, "5242951"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAppPermMonitor:Ljava/lang/String;

    :try_start_81
    iget-object v5, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAppPermMonitor:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    and-int/2addr v5, v8

    if-lez v5, :cond_8b

    const/4 v4, 0x1

    :cond_8b
    iput-boolean v4, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mIsMonitoredFeature:Z
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_8d} :catch_ca

    :goto_8d
    const-string/jumbo v4, "PhoneWindow_APM : "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendNotificationForAppPermissionMonitor mIsMonitoredFeature = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mIsMonitoredFeature:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mIsMonitoredFeature:Z

    if-eqz v4, :cond_c9

    const/16 v4, 0x2710

    if-lt p2, v4, :cond_c9

    :try_start_b1
    iget-object v4, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAPM:Landroid/os/IPermissionMonitor;

    if-nez v4, :cond_c2

    const-string/jumbo v4, "permission.monitor"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPermissionMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAPM:Landroid/os/IPermissionMonitor;

    :cond_c2
    iget-object v4, p0, Lcom/android/server/policy/AppPermissionMonitorPhoneWindow;->mAPM:Landroid/os/IPermissionMonitor;

    const/high16 v5, 0x400000

    invoke-interface {v4, p2, p1, v5}, Landroid/os/IPermissionMonitor;->sendAPMNotification(III)V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_c9} :catch_10a
    .catch Ljava/lang/NullPointerException; {:try_start_b1 .. :try_end_c9} :catch_ea

    :cond_c9
    :goto_c9
    return-void

    :catch_ca
    move-exception v1

    const-string/jumbo v4, "PhoneWindow_APM : "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception notify permission monitor service about access from APM_FLAG_OVERLAY nfe = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :catch_ea
    move-exception v2

    const-string/jumbo v4, "PhoneWindow_APM : "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception notify permission monitor service about access from APM_FLAG_OVERLAY ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    :catch_10a
    move-exception v3

    const-string/jumbo v4, "PhoneWindow_APM : "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception notify permission monitor service about access from APM_FLAG_OVERLAY re = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9
.end method
