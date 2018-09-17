.class public Lcom/android/server/am/EnsureDockedViewManager;
.super Ljava/lang/Object;
.source "EnsureDockedViewManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "EnsureDockedView"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mEnsureDockedMode:Z

.field private mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EnsureDockedViewManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/EnsureDockedViewManager;->mEnsureDockedMode:Z

    iput-object p1, p0, Lcom/android/server/am/EnsureDockedViewManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/EnsureDockedViewManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/EnsureDockedViewManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/am/EnsureDockedViewManager;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    return-void
.end method


# virtual methods
.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .registers 11

    iget-object v7, p0, Lcom/android/server/am/EnsureDockedViewManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/EnsureDockedViewManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    sget-boolean v0, Lcom/android/server/am/EnsureDockedViewManager;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "EnsureDockedView"

    const-string/jumbo v1, "ensureDockedResize called, but orientation is changed to landscape"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_67

    :cond_1e
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_23
    const/4 v0, 0x1

    :try_start_24
    iput-boolean v0, p0, Lcom/android/server/am/EnsureDockedViewManager;->mEnsureDockedMode:Z
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_67

    :try_start_26
    iget-object v0, p0, Lcom/android/server/am/EnsureDockedViewManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    sget-boolean v0, Lcom/android/server/am/EnsureDockedViewManager;->DEBUG:Z

    if-eqz v0, :cond_5a

    const-string/jumbo v0, "EnsureDockedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjustForIme : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ensureBounds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_26 .. :try_end_5a} :catchall_62

    :cond_5a
    const/4 v0, 0x0

    :try_start_5b
    iput-boolean v0, p0, Lcom/android/server/am/EnsureDockedViewManager;->mEnsureDockedMode:Z
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_67

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_62
    move-exception v0

    const/4 v1, 0x0

    :try_start_64
    iput-boolean v1, p0, Lcom/android/server/am/EnsureDockedViewManager;->mEnsureDockedMode:Z

    throw v0
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isEnsureDockedMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/EnsureDockedViewManager;->mEnsureDockedMode:Z

    return v0
.end method
