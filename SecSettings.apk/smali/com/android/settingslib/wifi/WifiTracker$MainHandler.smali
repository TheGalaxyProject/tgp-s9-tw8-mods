.class final Lcom/android/settingslib/wifi/WifiTracker$MainHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_ACCESS_POINT_CHANGED:I = 0x2

.field static final MSG_CONNECTED_CHANGED:I = 0x0

.field static final MSG_WIFI_STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private smToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_82

    :pswitch_5
    const-string/jumbo v1, "Unknown"

    return-object v1

    :pswitch_9
    const-string/jumbo v1, "MSG_CONNECTED_CHANGED"

    return-object v1

    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_WIFI_STATE_CHANGED state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_ACCESS_POINT_CHANGED scanUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_3b
    const-string/jumbo v1, "MSG_RESUME_SCANNING"

    return-object v1

    :pswitch_3f
    const-string/jumbo v1, "MSG_PAUSE_SCANNING"

    return-object v1

    :pswitch_43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_CONFIGURED_NETWORKS_CHANGED multi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " networkId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_7e

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7e
    const-string/jumbo v1, "null"

    goto :goto_75

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_9
        :pswitch_d
        :pswitch_24
        :pswitch_3b
        :pswitch_3f
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get7(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get11(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1e

    :cond_14
    const-string/jumbo v0, "WifiTracker"

    const-string/jumbo v1, "ignore message, listener is null or tracking flag is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const-string/jumbo v3, "WifiTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MainHandler - handleMessage : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c6

    :cond_47
    :goto_47
    :pswitch_47
    return-void

    :cond_48
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_37

    :pswitch_4f
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get7(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onConnectedChanged()V

    goto :goto_47

    :pswitch_59
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get7(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onWifiStateChanged(I)V

    goto :goto_47

    :pswitch_65
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap2(Lcom/android/settingslib/wifi/WifiTracker;Z)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get7(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onAccessPointsChanged()V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v3

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_8a

    move v0, v1

    :goto_86
    invoke-interface {v3, v0}, Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;->onAccessPointsChanged(Z)V

    goto :goto_47

    :cond_8a
    move v0, v2

    goto :goto_86

    :pswitch_8c
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    goto :goto_47

    :pswitch_9a
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_47

    :pswitch_a8
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_c4

    :goto_be
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;->onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V

    goto :goto_47

    :cond_c4
    move v1, v2

    goto :goto_be

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_59
        :pswitch_65
        :pswitch_8c
        :pswitch_9a
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_a8
    .end packed-switch
.end method

.method removePendingMessages()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    return-void
.end method
