.class Lcom/android/server/desktopmode/StateNotifier;
.super Ljava/lang/Object;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;,
        Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;,
        Lcom/android/server/desktopmode/StateNotifier$ListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDesktopModeListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDesktopModeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mEventListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/StateNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/desktopmode/StateNotifier;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/StateNotifier;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/StateNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/StateNotifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/desktopmode/StateNotifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/android/server/desktopmode/StateNotifier;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v4, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v4

    :try_start_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mEventListeners ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_2a .. :try_end_6a} :catchall_6b

    goto :goto_5b

    :catchall_6b
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_6e
    :try_start_6e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6b

    monitor-exit v4

    iget-object v4, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    monitor-enter v4

    :try_start_75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDesktopModeListeners ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_b5
    .catchall {:try_start_75 .. :try_end_b5} :catchall_b6

    goto :goto_a6

    :catchall_b6
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_b9
    :try_start_b9
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_b6

    monitor-exit v4

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method notifyDesktopDockConnectionChanged(Z)V
    .registers 8

    iget-object v5, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v5

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    monitor-exit v5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;

    :try_start_1f
    iget-object v4, v2, Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;->listener:Lcom/samsung/android/desktopmode/IEventListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/desktopmode/IEventListener;->onDesktopDockConnectionChanged(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :catchall_2a
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2d
    return-void
.end method

.method notifyDesktopModeChanged(Z)V
    .registers 9

    iget-object v5, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v5

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    monitor-exit v5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;

    :try_start_1f
    iget-object v4, v2, Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;->listener:Lcom/samsung/android/desktopmode/IEventListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/desktopmode/IEventListener;->onDesktopModeChanged(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :catchall_2a
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2d
    iget-object v5, p0, Lcom/android/server/desktopmode/StateNotifier;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    if-eqz p1, :cond_44

    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    :goto_35
    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000000

    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_44
    sget-object v4, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    goto :goto_35
.end method

.method notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 8

    iget-object v5, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    monitor-enter v5

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    monitor-exit v5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;

    :try_start_1f
    iget-object v4, v2, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :catchall_2a
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2d
    return-void
.end method

.method registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z
    .registers 13

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    monitor-enter v8

    :try_start_4
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_27

    move-result-object v6

    :try_start_8
    new-instance v0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;-><init>(Lcom/android/server/desktopmode/StateNotifier;Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_21} :catch_24
    .catchall {:try_start_8 .. :try_end_21} :catchall_27

    const/4 v1, 0x1

    monitor-exit v8

    return v1

    :catch_24
    move-exception v7

    monitor-exit v8

    return v9

    :catchall_27
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method registerEventListener(Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;)Z
    .registers 13

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v8

    :try_start_4
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IEventListener;->asBinder()Landroid/os/IBinder;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_27

    move-result-object v6

    :try_start_8
    new-instance v0, Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;-><init>(Lcom/android/server/desktopmode/StateNotifier;Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_21} :catch_24
    .catchall {:try_start_8 .. :try_end_21} :catchall_27

    const/4 v1, 0x1

    monitor-exit v8

    return v1

    :catch_24
    move-exception v7

    monitor-exit v8

    return v9

    :catchall_27
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/desktopmode/StateNotifier;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/android/server/desktopmode/StateNotifier$DesktopModeListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_21

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_1f
    monitor-exit v2

    return v4

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method unregisterEventListener(Lcom/samsung/android/desktopmode/IEventListener;)Z
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/desktopmode/StateNotifier;->mEventListeners:Ljava/util/Map;

    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/android/server/desktopmode/StateNotifier$EventListenerInfo;->listener:Lcom/samsung/android/desktopmode/IEventListener;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_21

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_1f
    monitor-exit v2

    return v4

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method
