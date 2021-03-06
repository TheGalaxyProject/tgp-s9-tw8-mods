.class final Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnected:Z

.field private final mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGoingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSessionRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field private mUnbindCalled:Z

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    return-void
.end method

.method private cleanLocked()V
    .registers 5

    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    return-void

    :cond_e
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    :cond_17
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    return-void

    :cond_20
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->-get0(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    if-ne v0, p0, :cond_3d

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return-void
.end method

.method private getISpellCheckerSessionLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 8

    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v2, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v4, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    new-instance v5, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v5, p0, p1}, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1a} :catch_1e

    :goto_1a
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    goto :goto_1a
.end method


# virtual methods
.method synthetic -com_android_server_TextServicesManagerService$SpellCheckerBindGroup-mthref-0(Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    return-void
.end method

.method public getISpellCheckerSessionOrQueueLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    return-void
.end method

.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/android/server/-$Lambda$VJcFcAadd3RSApmrCO9EutlNKcw;

    invoke-direct {v2, p0}, Lcom/android/server/-$Lambda$VJcFcAadd3RSApmrCO9EutlNKcw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_35

    if-eqz v2, :cond_d

    monitor-exit v3

    return-void

    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    new-instance v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    iget-object v2, p2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_35

    :try_start_1c
    iget-object v2, p2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {v2, p1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V

    iget-object v2, p2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v2}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_30} :catch_38
    .catchall {:try_start_1c .. :try_end_30} :catchall_35

    :cond_30
    :goto_30
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_35

    monitor-exit v3

    return-void

    :catchall_35
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_38
    move-exception v0

    goto :goto_30
.end method

.method public removeAll()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Remove the spell checker bind unexpectedly."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_f
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_2d

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    iget-object v3, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2d
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_41

    monitor-exit v4

    return-void

    :catchall_41
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 11

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    :try_start_7
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v4, :cond_29

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v3, :cond_48

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    iget-object v6, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v6}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_48
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_4d

    monitor-exit v7

    return-void

    :catchall_4d
    move-exception v6

    monitor-exit v7

    throw v6
.end method
