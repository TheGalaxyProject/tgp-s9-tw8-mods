.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    }
.end annotation


# static fields
.field private static final IS_EMULATOR:Z

.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private GENERIC_CATEGORY_END:I

.field private GENERIC_CATEGORY_START:I

.field private GOOD_CATEGORY:I

.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

.field private mHostMonitorThread:Ljava/lang/Thread;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/IUserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/clipboard/ClipboardService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/clipboard/ClipboardService;->GENERIC_CATEGORY_END:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/clipboard/ClipboardService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/clipboard/ClipboardService;->GENERIC_CATEGORY_START:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/clipboard/ClipboardService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/clipboard/ClipboardService;->GOOD_CATEGORY:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/clipboard/ClipboardService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/clipboard/ClipboardService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/HostClipboardMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/clipboard/ClipboardService;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/IUserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/clipboard/ClipboardService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/clipboard/ClipboardService;Lcom/samsung/android/knox/SemPersonaManager;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;I)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.kernel.qemu"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    const/16 v2, 0x66

    iput v2, p0, Lcom/android/server/clipboard/ClipboardService;->GOOD_CATEGORY:I

    const/16 v2, 0xc9

    iput v2, p0, Lcom/android/server/clipboard/ClipboardService;->GENERIC_CATEGORY_START:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/android/server/clipboard/ClipboardService;->GENERIC_CATEGORY_END:I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IUserManager;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_4c
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string/jumbo v3, "clipboard"

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_54} :catch_79

    move-result-object v1

    :goto_55
    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    sget-boolean v2, Lcom/android/server/clipboard/ClipboardService;->IS_EMULATOR:Z

    if-eqz v2, :cond_75

    new-instance v2, Lcom/android/server/clipboard/HostClipboardMonitor;

    new-instance v3, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v3, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {v2, v3}, Lcom/android/server/clipboard/HostClipboardMonitor;-><init>(Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;)V

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mHostClipboardMonitor:Lcom/android/server/clipboard/HostClipboardMonitor;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mHostMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_75
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    return-void

    :catch_79
    move-exception v0

    const-string/jumbo v2, "clipboard"

    const-string/jumbo v3, "AM dead"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 15

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v9, 0x0

    :try_start_d
    invoke-interface {v7, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_5c

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_8b

    :catch_2d
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_31
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_99

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_99

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_4a
    if-ge v3, v0, :cond_94

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {p0, v9, p2, v10}, Lcom/android/server/clipboard/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_5c
    :try_start_5c
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-nez v9, :cond_90

    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " does not own package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_8b} :catch_2d
    .catchall {:try_start_5c .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_90
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    :cond_94
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_99
    return-void
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_20
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .registers 13

    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_12
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x1

    move v1, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_2a
    .catchall {:try_start_12 .. :try_end_26} :catchall_2f

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_29
    return-void

    :catch_2a
    move-exception v6

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    :catchall_2f
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private clipboardAccessAllowed(ILjava/lang/String;I)Z
    .registers 9

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, p1, p3, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_a

    return v4

    :cond_a
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    return v1

    :cond_1a
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1, p3}, Landroid/app/IActivityManager;->isAppForeground(I)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1f} :catch_21

    move-result v1

    return v1

    :catch_21
    move-exception v0

    const-string/jumbo v1, "clipboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get Instant App status for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 5

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    if-nez v0, :cond_17

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v2

    return-object v0

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    :cond_20
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 16

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_4
    invoke-static {p1, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    move v7, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1f
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1e
    return-void

    :catch_1f
    move-exception v8

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :catchall_24
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_20
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_10
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v6, 0x3

    invoke-interface {v4, v5, p1, v6, v1}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_20
    .catchall {:try_start_10 .. :try_end_1c} :catchall_25

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :catchall_25
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 5

    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/clipboard/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-void
.end method


# virtual methods
.method getRelatedProfiles(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_f
    .catchall {:try_start_4 .. :try_end_a} :catchall_2f

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catch_f
    move-exception v0

    :try_start_10
    const-string/jumbo v4, "ClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remote Exception calling UserManager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2f

    const/4 v4, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_2f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onCleanupUser(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .registers 4

    const-string/jumbo v0, "clipboard"

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V
    .registers 13

    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    if-nez p2, :cond_c

    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v7, :cond_c

    return-void

    :cond_c
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/content/ClipDescription;->setTimestamp(J)V

    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v6, :cond_4c

    :try_start_2a
    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object v7, v3, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    const/16 v9, 0x1d

    invoke-direct {p0, v9, v7, v8}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_49

    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v7}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_49} :catch_5f
    .catchall {:try_start_2a .. :try_end_49} :catchall_55

    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_4c
    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_55
    move-exception v7

    iget-object v8, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :catch_5f
    move-exception v1

    goto :goto_49
.end method
