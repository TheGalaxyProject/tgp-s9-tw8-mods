.class Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;
    }
.end annotation


# instance fields
.field private coverOpen:Z

.field private coverStateDirty:Z

.field private mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    return p1
.end method

.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$RunningCheckable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;-><init>(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method private chooseQmg(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    if-eqz v0, :cond_a

    if-ne p1, p2, :cond_a

    :cond_9
    return-object p1

    :cond_a
    if-nez v0, :cond_e

    if-eq p1, p3, :cond_9

    :cond_e
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->getCurrentFrame()I

    move-result v1

    if-eqz v0, :cond_19

    move-object p1, p2

    :cond_15
    :goto_15
    invoke-virtual {p1, v1}, Lcom/android/server/power/LibQmg;->setCurrentFrame(I)I

    return-object p1

    :cond_19
    if-nez v0, :cond_15

    move-object p1, p3

    goto :goto_15
.end method

.method private frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V
    .registers 11

    move-object v3, p1

    if-eqz p2, :cond_7

    invoke-direct {p0, p1, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->chooseQmg(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v3

    :cond_7
    invoke-virtual {v3}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get7(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    const-string/jumbo v4, "ShutdownDialog"

    invoke-virtual {v3}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    if-eqz p2, :cond_2d

    iget-boolean v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    if-eqz v4, :cond_2d

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->chooseQmg(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v3

    :cond_2d
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get0(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->-get1(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/server/power/LibQmg;->loadFrame(Landroid/graphics/Bitmap;)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3e} :catch_9a

    move-result v2

    const-string/jumbo v4, "ShutdownDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "load frame: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_8f

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get5(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_62
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-get1(Lcom/android/server/power/ShutdownDialog;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x3

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownDialog;->-set0(Lcom/android/server/power/ShutdownDialog;I)I

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get1(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-get2(Lcom/android/server/power/ShutdownDialog;)I
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_b0

    move-result v6

    if-ne v4, v6, :cond_8e

    :try_start_83
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get5(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_8e} :catch_a5
    .catchall {:try_start_83 .. :try_end_8e} :catchall_b0

    :cond_8e
    :goto_8e
    monitor-exit v5

    :cond_8f
    if-gtz v2, :cond_23

    :goto_91
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->close()I

    if-eqz p2, :cond_99

    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->close()I

    :cond_99
    return-void

    :catch_9a
    move-exception v0

    const-string/jumbo v4, "ShutdownDialog"

    const-string/jumbo v5, "qmgLoadFrame return < 0"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_91

    :catch_a5
    move-exception v1

    :try_start_a6
    const-string/jumbo v4, "ShutdownDialog"

    const-string/jumbo v6, "InterruptedException"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_b0

    goto :goto_8e

    :catchall_b0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x0

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get6(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1b

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4, v0}, Lcom/android/server/power/ShutdownDialog;->-wrap1(Lcom/android/server/power/ShutdownDialog;Lcom/samsung/android/cover/CoverManager;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v4}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_1b
    const-string/jumbo v4, "ShutdownDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ImageLoadThread.run(), qmgList.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get7(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    :goto_48
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_84

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LibQmg;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get3(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LibQmg;

    invoke-direct {p0, v3, v1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get3(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_48

    :cond_84
    iput-boolean v7, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->running:Z

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "//system/media/shutdownloop.qmg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    :goto_92
    if-eqz v2, :cond_d4

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get4(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v4

    if-eqz v4, :cond_d4

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const-string/jumbo v5, "//system/media/shutdownloop.qmg"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownDialog;->-wrap0(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LibQmg;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get3(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LibQmg;

    invoke-direct {p0, v3, v1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get3(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_92

    :cond_d4
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->-get7(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    if-eqz v0, :cond_e5

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v4}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_e5
    return-void
.end method
