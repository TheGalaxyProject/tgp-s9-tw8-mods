.class final Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;
.super Landroid/os/Handler;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/RestrictionToastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayedMessageHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    packed-switch v0, :pswitch_data_30

    :goto_6
    monitor-exit p0

    return-void

    :pswitch_8
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/RestrictionToastManager;->-get1()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "RestrictionToastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removed message from recently displayed queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2c

    goto :goto_6

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
