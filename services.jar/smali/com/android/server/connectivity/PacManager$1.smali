.class Lcom/android/server/connectivity/PacManager$1;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    return-void

    :cond_f
    const/16 v4, -0xf6

    invoke-static {v4}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v2

    :try_start_15
    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-wrap1(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_48
    .catchall {:try_start_15 .. :try_end_18} :catchall_68

    move-result-object v0

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :goto_1c
    if-eqz v0, :cond_70

    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->-get5(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_25
    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->-get0(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v4, v0}, Lcom/android/server/connectivity/PacManager;->-wrap0(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_6d

    :cond_36
    monitor-exit v5

    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/connectivity/PacManager;->-set0(Lcom/android/server/connectivity/PacManager;Z)Z

    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->-wrap4(Lcom/android/server/connectivity/PacManager;)V

    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->-wrap2(Lcom/android/server/connectivity/PacManager;)V

    :goto_47
    return-void

    :catch_48
    move-exception v1

    const/4 v0, 0x0

    :try_start_4a
    const-string/jumbo v4, "PacManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to load PAC file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_68

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_1c

    :catchall_68
    move-exception v4

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v4

    :catchall_6d
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_70
    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->-wrap3(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_47
.end method
