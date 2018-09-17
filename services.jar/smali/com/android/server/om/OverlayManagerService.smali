.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$1;,
        Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;,
        Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DEFAULT_OVERLAYS_PROP:Ljava/lang/String; = "ro.boot.vendor.overlay.theme"

.field static final TAG:Ljava/lang/String; = "OverlayManager"


# instance fields
.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private mInitCompleteSignal:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

.field private final mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mResetSettings:Z

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/PackageInfo;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService;->isOverlayPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->readResetSettingsValue()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z

    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "overlays.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    new-instance v2, Lcom/android/server/om/IdmapManager;

    invoke-direct {v2, p2}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/pm/Installer;)V

    new-instance v0, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Ljava/util/Set;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$Lambda$Whs3NIaASrs6bpQxTTs9leTDPyo;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$Lambda$Whs3NIaASrs6bpQxTTs9leTDPyo;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v3, "Init OverlayManagerService"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    return-void
.end method

.method private static getDefaultOverlayPackages()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "ro.boot.vendor.overlay.theme"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    return-object v3

    :cond_12
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_20
    if-ge v3, v5, :cond_30

    aget-object v1, v4, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_30
    return-object v0
.end method

.method private initIfNeeded()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v3, :cond_47

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v6

    if-nez v6, :cond_44

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_44

    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, v1}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_49

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_47
    monitor-exit v7

    return-void

    :catchall_49
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private isOverlayPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget v1, p1, Landroid/content/pm/PackageInfo;->overlayFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private readResetSettingsValue()V
    .registers 14

    const/4 v10, 0x0

    const-string/jumbo v0, "reset_setting"

    new-instance v4, Ljava/io/File;

    const-string/jumbo v9, "/data/overlays/preferences/samsung.andorid.themes.component_preference.xml"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_10
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_54
    .catchall {:try_start_10 .. :try_end_15} :catchall_80

    :try_start_15
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v9, 0x4000

    invoke-direct {v2, v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_89
    .catchall {:try_start_15 .. :try_end_1c} :catchall_82

    :try_start_1c
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v8

    move-object v7, v8

    const-string/jumbo v9, "reset_setting"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_30} :catch_8c
    .catchall {:try_start_1c .. :try_end_30} :catchall_85

    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_45
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_3e

    :cond_35
    :goto_35
    if-eqz v6, :cond_3a

    :try_start_37
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_47
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3e

    :cond_3a
    move-object v9, v10

    :cond_3b
    :goto_3b
    if-eqz v9, :cond_51

    :try_start_3d
    throw v9
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v3

    move-object v1, v2

    move-object v5, v6

    :goto_41
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_44
    return-void

    :catch_45
    move-exception v10

    goto :goto_35

    :catch_47
    move-exception v9

    if-eqz v10, :cond_3b

    if-eq v10, v9, :cond_3a

    :try_start_4c
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_3e

    move-object v9, v10

    goto :goto_3b

    :cond_51
    move-object v1, v2

    move-object v5, v6

    goto :goto_44

    :catch_54
    move-exception v9

    :goto_55
    :try_start_55
    throw v9
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_5a
    if-eqz v1, :cond_5f

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_69

    :cond_5f
    move-object v11, v10

    :cond_60
    :goto_60
    if-eqz v5, :cond_65

    :try_start_62
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_75
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_69

    :cond_65
    move-object v10, v11

    :cond_66
    :goto_66
    if-eqz v10, :cond_7f

    :try_start_68
    throw v10

    :catch_69
    move-exception v3

    goto :goto_41

    :catch_6b
    move-exception v11

    if-eqz v10, :cond_60

    if-eq v10, v11, :cond_5f

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v11, v10

    goto :goto_60

    :catch_75
    move-exception v10

    if-eqz v11, :cond_66

    if-eq v11, v10, :cond_65

    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v11

    goto :goto_66

    :cond_7f
    throw v9
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_80} :catch_69

    :catchall_80
    move-exception v9

    goto :goto_5a

    :catchall_82
    move-exception v9

    move-object v5, v6

    goto :goto_5a

    :catchall_85
    move-exception v9

    move-object v1, v2

    move-object v5, v6

    goto :goto_5a

    :catch_89
    move-exception v9

    move-object v5, v6

    goto :goto_55

    :catch_8c
    move-exception v9

    move-object v1, v2

    move-object v5, v6

    goto :goto_55
.end method

.method private restoreSettings()V
    .registers 14

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_5
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_87

    move-result v6

    if-nez v6, :cond_13

    monitor-exit v9

    return-void

    :cond_13
    const/4 v4, 0x0

    :try_start_14
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v2, v6, [I

    const/4 v1, 0x0

    :goto_2d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_46

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_46
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v10

    array-length v11, v10

    move v6, v8

    :goto_51
    if-ge v6, v11, :cond_63

    aget v5, v10, v6

    invoke-static {v2, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-gez v8, :cond_60

    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v8, v5}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_60} :catch_79
    .catchall {:try_start_14 .. :try_end_60} :catchall_96

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    :cond_63
    if-eqz v4, :cond_68

    :try_start_65
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_77
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_68} :catch_6b
    .catchall {:try_start_65 .. :try_end_68} :catchall_87

    :cond_68
    :goto_68
    if-eqz v7, :cond_75

    :try_start_6a
    throw v7
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6b} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_6b} :catch_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_87

    :catch_6b
    move-exception v0

    :try_start_6c
    const-string/jumbo v6, "OverlayManager"

    const-string/jumbo v7, "failed to restore overlay state"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_87

    :cond_75
    monitor-exit v9

    return-void

    :catch_77
    move-exception v7

    goto :goto_68

    :catch_79
    move-exception v6

    :try_start_7a
    throw v6
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_7f
    if-eqz v4, :cond_84

    :try_start_81
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_8a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_84} :catch_6b
    .catchall {:try_start_81 .. :try_end_84} :catchall_87

    :cond_84
    :goto_84
    if-eqz v7, :cond_95

    :try_start_86
    throw v7
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_87} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_87} :catch_6b
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception v6

    monitor-exit v9

    throw v6

    :catch_8a
    move-exception v8

    if-nez v7, :cond_8f

    move-object v7, v8

    goto :goto_84

    :cond_8f
    if-eq v7, v8, :cond_84

    :try_start_91
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_84

    :cond_95
    throw v6
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_96} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_96} :catch_6b
    .catchall {:try_start_91 .. :try_end_96} :catchall_87

    :catchall_96
    move-exception v6

    goto :goto_7f
.end method

.method private schedulePersistSettings()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$Lambda$Whs3NIaASrs6bpQxTTs9leTDPyo$1;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$Lambda$Whs3NIaASrs6bpQxTTs9leTDPyo$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAssets(ILjava/lang/String;)V
    .registers 5

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;Z)V

    return-void
.end method

.method private updateAssets(ILjava/lang/String;Z)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;Z)V

    return-void
.end method

.method private updateAssets(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;Z)V

    return-void
.end method

.method private updateAssets(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_7

    iget-boolean v5, p0, Lcom/android/server/om/OverlayManagerService;->mResetSettings:Z

    if-eqz v5, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz p3, :cond_4e

    if-eqz v0, :cond_4e

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Landroid/content/om/OpenThemeConstants;->immortalApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2d
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, p1, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_44

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_4b

    if-eqz v5, :cond_44

    :try_start_3a
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v7, "update-overlay"

    invoke-interface {v0, v3, v5, p1, v7}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_44} :catch_46
    .catchall {:try_start_3a .. :try_end_44} :catchall_4b

    :cond_44
    :goto_44
    monitor-exit v6

    goto :goto_16

    :catch_46
    move-exception v1

    :try_start_47
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_44

    :catchall_4b
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_4e
    if-eqz v0, :cond_53

    :try_start_50
    invoke-interface {v0, p2, p1}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return-void

    :catch_54
    move-exception v1

    goto :goto_53
.end method

.method private updateOverlayPaths(ILjava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v15, "android"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    sget-boolean v15, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v15, :cond_38

    const-string/jumbo v15, "OverlayManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Updating overlay assets contains overlay for android ? "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const-class v15, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_48
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string/jumbo v17, "android"

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_88

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_88

    const/4 v4, 0x0

    :goto_62
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_88

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    if-eqz v9, :cond_ef

    invoke-virtual {v9}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_ef

    iget-object v15, v9, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-eqz v15, :cond_ef

    iget-object v15, v9, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    const-string/jumbo v17, "/data/overlays/currentstyle"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_84
    .catchall {:try_start_48 .. :try_end_84} :catchall_f3

    move-result v15

    if-eqz v15, :cond_ef

    const/4 v5, 0x1

    :cond_88
    monitor-exit v16

    if-eqz v14, :cond_93

    if-nez v5, :cond_f6

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object p2

    :cond_93
    :goto_93
    new-instance v11, Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v11, v15}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_a3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string/jumbo v17, "android"

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_b7
    if-ge v4, v2, :cond_16b

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v15, "android"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_120

    if-eqz v5, :cond_d9

    sget-object v15, Landroid/content/om/OpenThemeConstants;->changeableApps:Ljava/util/HashSet;

    invoke-virtual {v15, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_120

    :cond_d9
    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_dc
    :goto_dc
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    move/from16 v0, p1

    invoke-virtual {v15, v13, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ec
    .catchall {:try_start_a3 .. :try_end_ec} :catchall_165

    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    :cond_ef
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_62

    :catchall_f3
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_f6
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManagerInternal;->getOpenThemeTargetPackageNames(I)Ljava/util/List;

    move-result-object p2

    sget-boolean v15, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v15, :cond_93

    const-string/jumbo v15, "OverlayManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateAssetsLocked for fwk, targets "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93

    :cond_120
    if-eqz v5, :cond_dc

    const/4 v6, 0x0

    :try_start_123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    move/from16 v0, p1

    invoke-virtual {v15, v13, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_15e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_15e

    const/4 v7, 0x0

    :goto_138
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_15e

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    if-eqz v9, :cond_168

    invoke-virtual {v9}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_168

    iget-object v15, v9, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-eqz v15, :cond_168

    iget-object v15, v9, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    const-string/jumbo v17, "/data/overlays/currentstyle"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_168

    const/4 v6, 0x1

    :cond_15e
    if-eqz v6, :cond_dc

    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_163
    .catchall {:try_start_123 .. :try_end_163} :catchall_165

    goto/16 :goto_dc

    :catchall_165
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_168
    add-int/lit8 v7, v7, 0x1

    goto :goto_138

    :cond_16b
    monitor-exit v16

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_171
    if-ge v4, v2, :cond_1fd

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-boolean v15, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v15, :cond_1ca

    const-string/jumbo v16, "OverlayManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "-> Updating overlay: target="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, " overlays=["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ","

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, "] userId="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ca
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13, v15}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z

    move-result v15

    if-nez v15, :cond_1f9

    const-string/jumbo v15, "OverlayManager"

    const-string/jumbo v16, "Failed to change enabled overlays for %s user %d"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_171

    :cond_1fd
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_om_OverlayManagerService_10396()V
    .registers 16

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$PackageReceiver;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v6, p0, v4}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$UserReceiver;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;

    invoke-direct {v10, p0, v4}, Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$ThemeAppliedReceiver;)V

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v13, v4

    move-object v14, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    const-string/jumbo v0, "overlay"

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_om_OverlayManagerService_40618()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-boolean v2, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "OverlayManager"

    const-string/jumbo v3, "Writing overlay settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_17
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_27} :catch_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_27} :catch_29
    .catchall {:try_start_17 .. :try_end_27} :catchall_39

    :goto_27
    monitor-exit v3

    return-void

    :catch_29
    move-exception v0

    :try_start_2a
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v2, "OverlayManager"

    const-string/jumbo v4, "failed to persist overlay state"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_39

    goto :goto_27

    :catchall_39
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    const-string/jumbo v1, "Wait for OverlayManagerService init"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    :cond_f
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    monitor-exit v2

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method
