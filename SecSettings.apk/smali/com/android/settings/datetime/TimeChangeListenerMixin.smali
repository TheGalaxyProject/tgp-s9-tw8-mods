.class public Lcom/android/settings/datetime/TimeChangeListenerMixin;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeListenerMixin.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object v1, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_b
    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
