.class Lcom/android/settings/applications/RunningState$2;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    :goto_d
    iput v1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    goto :goto_7

    :cond_10
    const/4 v1, 0x1

    goto :goto_d

    :pswitch_12
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v2, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_17
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningState;->mResumed:Z
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_3e

    if-nez v1, :cond_1f

    monitor-exit v2

    return-void

    :cond_1f
    monitor-exit v2

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/RunningState$2;->removeMessages(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/RunningState$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/applications/RunningState$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget v2, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    invoke-interface {v1, v2}, Lcom/android/settings/applications/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    iput v4, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    goto :goto_7

    :catchall_3e
    move-exception v1

    monitor-exit v2

    throw v1

    nop

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method