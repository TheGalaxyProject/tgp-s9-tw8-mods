.class Lcom/android/server/SatsService$1;
.super Landroid/os/UEventObserver;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SatsService;


# direct methods
.method constructor <init>(Lcom/android/server/SatsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10

    invoke-static {}, Lcom/android/server/SatsService;->-get1()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_5
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "SWITCH_NAME"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_69

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_52

    :try_start_13
    const-string/jumbo v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "uart3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    const-string/jumbo v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_90

    const-string/jumbo v4, "SatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown state["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_52} :catch_64
    .catchall {:try_start_13 .. :try_end_52} :catchall_69

    :cond_52
    :goto_52
    monitor-exit v5

    return-void

    :pswitch_54
    :try_start_54
    const-string/jumbo v4, "SatsService"

    const-string/jumbo v6, "SATServiceAt will wait."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/server/SatsService;->-set0(Lcom/android/server/SatsService;Z)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_63} :catch_64
    .catchall {:try_start_54 .. :try_end_63} :catchall_69

    goto :goto_52

    :catch_64
    move-exception v0

    :try_start_65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_52

    :catchall_69
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_6c
    :try_start_6c
    const-string/jumbo v4, "SatsService"

    const-string/jumbo v6, "SATServiceAt will wake up."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/SatsService;->-set0(Lcom/android/server/SatsService;Z)Z

    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-static {v4}, Lcom/android/server/SatsService;->-get2(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v6

    monitor-enter v6
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_82} :catch_64
    .catchall {:try_start_6c .. :try_end_82} :catchall_69

    :try_start_82
    iget-object v4, p0, Lcom/android/server/SatsService$1;->this$0:Lcom/android/server/SatsService;

    invoke-static {v4}, Lcom/android/server/SatsService;->-get2(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->notifyAll()V
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_8d

    :try_start_8b
    monitor-exit v6

    goto :goto_52

    :catchall_8d
    move-exception v4

    monitor-exit v6

    throw v4
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_64
    .catchall {:try_start_8b .. :try_end_90} :catchall_69

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_54
        :pswitch_6c
    .end packed-switch
.end method
