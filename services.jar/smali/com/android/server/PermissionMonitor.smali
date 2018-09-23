.class public Lcom/android/server/PermissionMonitor;
.super Landroid/os/IPermissionMonitor$Stub;
.source "PermissionMonitor.java"


# static fields
.field public static final ACTION_NOTIFY_APP_BGACCESS:Ljava/lang/String; = "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

.field public static final APM_CHECK_PROPERTY:Ljava/lang/String; = "persist.app.permission.monitor"

.field public static final APM_FLAG_ALL_APP_OFF:I = 0x4000000

.field public static final APM_FLAG_APM_IS_OFF:I = 0x40000000

.field private static final APP_UID:I = 0x2710

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG_FLAG:Z

.field public static final DEFAULT_MONITOR:Ljava/lang/String; = "5242951"

.field public static final INTENT_EXTRA_APM_CURRTIME:Ljava/lang/String; = "com.samsung.intent.extra.APM_CURRTIME"

.field public static final INTENT_EXTRA_APM_MODULE_NAME:Ljava/lang/String; = "com.samsung.intent.extra.APM_MODULE_NAME"

.field public static final INTENT_EXTRA_APM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.intent.extra.APM_PACKAGE_NAME"

.field private static final LOCATION_FLAG:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "PermissionMonitor"

.field public static final PERMISSION_APP_PERMISSION_MONITOR:Ljava/lang/String; = "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

.field private static final TIME_INTERVAL:J = 0xea60L

.field private static final mHiddenBehaviorOnly:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private monitoredAppList:Landroid/util/LruCache;
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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/IPermissionMonitor$Stub;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PermissionMonitor;->monitoredAppList:Landroid/util/LruCache;

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_19

    const-string/jumbo v0, "PermissionMonitor"

    const-string/jumbo v1, "initialize permission monitor service"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iput-object p1, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPackageNameByUid(I)Ljava/lang/String;
    .registers 7

    iget-object v3, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x0

    aget-object v3, v1, v3

    return-object v3

    :cond_14
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    return-object v0

    :cond_1b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private isAppWhitelisted(Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/PermissionMonitor;->isSystemAppWhitelistApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isBackgroundApp(IILjava/lang/String;)Z
    .registers 15

    const/4 v7, 0x0

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_7
    iget-object v8, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v8, p1, :cond_1a

    sget-boolean v8, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v8, :cond_60

    const-string/jumbo v8, "PermissionMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "We found matching pid. (uid, pid) : ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") ... importance: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-ge v8, v1, :cond_66

    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    :cond_66
    const/16 v8, 0x64

    if-eq v1, v8, :cond_6e

    const/16 v8, 0x96

    if-ne v1, v8, :cond_9c

    :cond_6e
    :goto_6e
    sget-boolean v8, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v8, :cond_97

    const-string/jumbo v8, "PermissionMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " App has at least one process in foreground. uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_97} :catch_a1
    .catchall {:try_start_7 .. :try_end_97} :catchall_c4

    :cond_97
    const/4 v7, 0x1

    :cond_98
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_9b
    return v7

    :cond_9c
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_1a

    goto :goto_6e

    :catch_a1
    move-exception v2

    :try_start_a2
    const-string/jumbo v8, "PermissionMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Exception occus in isBackgroundApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_a2 .. :try_end_c0} :catchall_c4

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9b

    :catchall_c4
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private isCalledPackage(Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PermissionMonitor;->isExpired(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/PermissionMonitor;->monitoredAppList:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    return v2

    :cond_15
    const/4 v2, 0x1

    return v2
.end method

.method private isExpired(Ljava/lang/String;J)Z
    .registers 12

    const-wide/32 v6, 0xea60

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/PermissionMonitor;->monitoredAppList:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sget-boolean v2, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v2, :cond_40

    const-string/jumbo v2, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calling = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", currentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", lastTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_4d

    :cond_4c
    :goto_4c
    return v1

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p2

    cmp-long v2, v2, v6

    if-gez v2, :cond_4c

    const/4 v1, 0x0

    goto :goto_4c
.end method

.method private isHiddenApp(IILjava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PermissionMonitor;->isBackgroundApp(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSystemAppWhitelistApp(Ljava/lang/String;I)Z
    .registers 12

    const/4 v4, 0x0

    const-string/jumbo v6, "SEAMService"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/SEAMService;

    if-nez v5, :cond_15

    const-string/jumbo v6, "PermissionMonitor"

    const-string/jumbo v7, "isSystemAppWhitelistApp , sseams is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_19
    iget-object v6, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_e4

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v7, "platform"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_37

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    if-eqz v6, :cond_8d

    :cond_37
    sget-boolean v6, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v6, :cond_60

    const-string/jumbo v6, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calling app is pre-installed on system partition. pkgName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", UserId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const/4 v4, 0x1

    :cond_61
    :goto_61
    if-nez v4, :cond_89

    invoke-virtual {v5, p1}, Lcom/android/server/SEAMService;->isAPMWhiteListAPP(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_89

    sget-boolean v6, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v6, :cond_88

    const-string/jumbo v6, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is whitelistapp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_88} :catch_b7
    .catchall {:try_start_19 .. :try_end_88} :catchall_10f

    :cond_88
    const/4 v4, 0x1

    :cond_89
    :goto_89
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_8c
    return v4

    :cond_8d
    :try_start_8d
    sget-boolean v6, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v6, :cond_61

    const-string/jumbo v6, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calling app is not pre-installed on system. Ignore its notification. pkgName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", UserId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8d .. :try_end_b6} :catch_b7
    .catchall {:try_start_8d .. :try_end_b6} :catchall_10f

    goto :goto_61

    :catch_b7
    move-exception v1

    :try_start_b8
    const-string/jumbo v6, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(NameNotFoundException) ApplicationInfo for ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is null! UserId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e0
    .catchall {:try_start_b8 .. :try_end_e0} :catchall_10f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8c

    :cond_e4
    :try_start_e4
    sget-boolean v6, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v6, :cond_89

    const-string/jumbo v6, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ApplicationInfo for ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is null! UserId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e4 .. :try_end_10d} :catch_b7
    .catchall {:try_start_e4 .. :try_end_10d} :catchall_10f

    goto/16 :goto_89

    :catchall_10f
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method


# virtual methods
.method public sendAPMNotification(III)V
    .registers 28

    sget-boolean v21, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v21, :cond_40

    const-string/jumbo v21, "PermissionMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "we received permission notification for rUid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", rPid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "from rModuleFlag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 v14, 0x0

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    const/16 v20, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 v21, 0x2710

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_92

    const-string/jumbo v21, "PermissionMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Ignore apps with uid less than 10000. Incoming rUid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", rPid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", from rModuleFlag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_92
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x2710

    move/from16 v21, v0

    div-int/lit8 v20, v21, 0xa

    sget-boolean v21, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v21, :cond_be

    const-string/jumbo v21, "PermissionMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Binder.getCallingUid(): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PermissionMonitor;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v21, 0x0

    aget-object v14, v17, v21

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-boolean v21, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v21, :cond_106

    const-string/jumbo v21, "PermissionMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "packageName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/server/PermissionMonitor;->isAppWhitelisted(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_11a

    const-string/jumbo v21, "PermissionMonitor"

    const-string/jumbo v22, "App is whitelisted. Ignore"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11a
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/PermissionMonitor;->isHiddenApp(IILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_130

    const-string/jumbo v21, "PermissionMonitor"

    const-string/jumbo v22, "App is not in hidden status (background/etc). Ignore"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_130
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/PermissionMonitor;->isCalledPackage(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_142

    const-string/jumbo v21, "PermissionMonitor"

    const-string/jumbo v22, "isCalledPkg is in effect. Ignore."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_142
    and-int/lit8 v21, p3, 0x8

    if-lez v21, :cond_178

    const-string/jumbo v21, "persist.app.permission.monitor"

    const-string/jumbo v22, "5242951"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_150
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_153
    .catch Ljava/lang/NumberFormatException; {:try_start_150 .. :try_end_153} :catch_159

    move-result v21

    and-int/lit8 v21, v21, 0x8

    if-gtz v21, :cond_178

    return-void

    :catch_159
    move-exception v13

    const-string/jumbo v21, "PermissionMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception notify permission monitor service about access from LOCATION_FLAG nfe = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_178
    const-string/jumbo v21, "5242951"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v21, "SEAMService"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Lcom/android/server/SEAMService;

    if-eqz v15, :cond_21c

    :try_start_18a
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/server/SEAMService;->getAPMStatusAsUser(I)I

    move-result v16

    const-string/jumbo v21, "PermissionMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "s getAPMStatusAsUser"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1b6} :catch_211

    :goto_1b6
    if-lez v16, :cond_210

    const/high16 v21, 0x40000000    # 2.0f

    and-int v21, v21, v16

    if-nez v21, :cond_210

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v21, "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v21, "com.samsung.intent.extra.APM_PACKAGE_NAME"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v21, "com.samsung.intent.extra.APM_MODULE_NAME"

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v21, 0x10000000

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    :try_start_1e5
    sget-boolean v21, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v21, :cond_1f2

    const-string/jumbo v21, "PermissionMonitor"

    const-string/jumbo v22, "All conditions are satisfied, report app access now."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v23, "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_20d
    .catchall {:try_start_1e5 .. :try_end_20d} :catchall_23c

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_210
    return-void

    :catch_211
    move-exception v7

    const-string/jumbo v21, "PermissionMonitor"

    const-string/jumbo v22, "failed to getAPMStatusAsUser "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b6

    :cond_21c
    const-string/jumbo v21, "PermissionMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "seams is null, userId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b6

    :catchall_23c
    move-exception v21

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
.end method
