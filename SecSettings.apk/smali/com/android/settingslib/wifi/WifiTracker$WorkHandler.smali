.class final Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static synthetic -wrap0(Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removePendingMessages()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .registers 9
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiTracker;->-get10(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    const-string/jumbo v4, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WorkHandler - handleMessage : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    :goto_25
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_c8

    :goto_35
    return-void

    :cond_36
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_25

    :pswitch_3d
    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_54

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v1, v6}, Lcom/android/settingslib/wifi/WifiTracker;->-set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x1

    :cond_49
    :goto_49
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_69

    move v1, v2

    :goto_50
    invoke-static {v4, v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap5(Lcom/android/settingslib/wifi/WifiTracker;ZZ)V

    goto :goto_35

    :cond_54
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_49

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settingslib/wifi/WifiTracker;->-set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x1

    goto :goto_49

    :cond_69
    move v1, v3

    goto :goto_50

    :pswitch_6b
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-static {v2, v1}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap6(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_35

    :pswitch_75
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap3(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_35

    :pswitch_7b
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_9b

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    :cond_8d
    :goto_8d
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_35

    :cond_9b
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v1, v6}, Lcom/android/settingslib/wifi/WifiTracker;->-set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v1, v6}, Lcom/android/settingslib/wifi/WifiTracker;->-set3(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_ac
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiTracker;->-get1(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_b5
    .catchall {:try_start_ac .. :try_end_b5} :catchall_c4

    monitor-exit v4

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_8d

    :catchall_c4
    move-exception v1

    monitor-exit v4

    throw v1

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_6b
        :pswitch_75
        :pswitch_7b
    .end packed-switch
.end method

.method private removePendingMessages()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    return-void
.end method

.method private smToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    const-string/jumbo v0, "Unknwon"

    return-object v0

    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MSG_UPDATE_ACCESS_POINTS clearConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " scanResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3a
    const-string/jumbo v0, "MSG_UPDATE_NETWORK_INFO"

    return-object v0

    :pswitch_3e
    const-string/jumbo v0, "MSG_RESUME"

    return-object v0

    :pswitch_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MSG_UPDATE_WIFI_STATE state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get8(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->processMessage(Landroid/os/Message;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
