.class public Lcom/android/systemui/keyguard/DismissCallbackWrapper;
.super Ljava/lang/Object;
.source "DismissCallbackWrapper.java"


# instance fields
.field private mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    return-void
.end method


# virtual methods
.method public notifyDismissCancelled()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissCancelled()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "DismissCallbackWrapper"

    const-string/jumbo v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public notifyDismissError()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "DismissCallbackWrapper"

    const-string/jumbo v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public notifyDismissSucceeded()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/DismissCallbackWrapper;->mCallback:Lcom/android/internal/policy/IKeyguardDismissCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissSucceeded()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "DismissCallbackWrapper"

    const-string/jumbo v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
