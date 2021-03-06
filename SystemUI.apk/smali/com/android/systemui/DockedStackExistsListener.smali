.class public Lcom/android/systemui/DockedStackExistsListener;
.super Ljava/lang/Object;
.source "DockedStackExistsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DockedStackExistsListener$1;
    }
.end annotation


# static fields
.field private static mLastExists:Z

.field private static sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/systemui/DockedStackExistsListener;->onDockedStackExistsChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    :try_start_7
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/DockedStackExistsListener$1;

    invoke-direct {v2}, Lcom/android/systemui/DockedStackExistsListener$1;-><init>()V

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string/jumbo v1, "DockedStackExistsListener"

    const-string/jumbo v2, "Failed registering docked stack exists listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_DockedStackExistsListener_2817(ZLjava/lang/ref/WeakReference;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    if-eqz v0, :cond_f

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_f
    if-nez v0, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static onDockedStackExistsChanged(Z)V
    .registers 4

    sput-boolean p0, Lcom/android/systemui/DockedStackExistsListener;->mLastExists:Z

    sget-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/-$Lambda$hrhGgnBZlI4TxBMU92uUeesjggg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$hrhGgnBZlI4TxBMU92uUeesjggg;-><init>(Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static register(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/systemui/DockedStackExistsListener;->mLastExists:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_c
    sget-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_18

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method
