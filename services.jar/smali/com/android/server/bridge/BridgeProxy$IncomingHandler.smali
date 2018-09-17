.class Lcom/android/server/bridge/BridgeProxy$IncomingHandler;
.super Landroid/os/Handler;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$IncomingHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v2, "handleMessage"

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->-wrap5(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_ec

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_10
    return-void

    :pswitch_11
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get29(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_18
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/bridge/BridgeProxy;->-set4(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_7c

    :try_start_1e
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v4, "RESULT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/CustomCursor;

    invoke-static {v3, v1}, Lcom/android/server/bridge/BridgeProxy;->-set4(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_5c
    .catchall {:try_start_1e .. :try_end_30} :catchall_7c

    :goto_30
    :try_start_30
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IncomingHandler result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->-get28(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get29(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_5a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_7c

    :goto_5a
    monitor-exit v2

    goto :goto_10

    :catch_5c
    move-exception v0

    :try_start_5d
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "From IncomingHandler().result: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_5d .. :try_end_7b} :catchall_7c

    goto :goto_30

    :catchall_7c
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_7f
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get29(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_86
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/bridge/BridgeProxy;->-set2(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_c9

    :try_start_8c
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v4, "RESULT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/CustomCursor;

    invoke-static {v3, v1}, Lcom/android/server/bridge/BridgeProxy;->-set2(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9e} :catch_cc
    .catchall {:try_start_8c .. :try_end_9e} :catchall_c9

    :goto_9e
    :try_start_9e
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IncomingHandler result for case 2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->-get4(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-get29(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_c8
    .catchall {:try_start_9e .. :try_end_c8} :catchall_c9

    goto :goto_5a

    :catchall_c9
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_cc
    move-exception v0

    :try_start_cd
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "From IncomingHandler().mCallerInfoResult: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_eb
    .catchall {:try_start_cd .. :try_end_eb} :catchall_c9

    goto :goto_9e

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_11
        :pswitch_7f
    .end packed-switch
.end method
