.class public Lcom/android/systemui/statusbar/GestureRecorder;
.super Ljava/lang/Object;
.source "GestureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/GestureRecorder$1;,
        Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

.field private mGestures:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/statusbar/GestureRecorder$Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLastSaveLen:I

.field private mLogfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/systemui/statusbar/GestureRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/GestureRecorder;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public save()V
    .registers 9

    iget-object v3, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_3
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLogfile:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GestureRecorder;->toJsonLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->isComplete()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_48
    sget-object v2, Lcom/android/systemui/statusbar/GestureRecorder;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Wrote %d complete gestures to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLogfile:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_65} :catch_67
    .catchall {:try_start_3 .. :try_end_65} :catchall_80

    :goto_65
    monitor-exit v3

    return-void

    :catch_67
    move-exception v0

    :try_start_68
    sget-object v2, Lcom/android/systemui/statusbar/GestureRecorder;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Couldn\'t write gestures to %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLogfile:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_80

    goto :goto_65

    :catchall_80
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public saveLater()V
    .registers 5

    const/16 v1, 0x18cf

    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public tag(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v1, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;-><init>(Lcom/android/systemui/statusbar/GestureRecorder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mCurrentGesture:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->tag(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1f

    monitor-exit v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/GestureRecorder;->saveLater()V

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toJsonLocked()Ljava/lang/String;
    .registers 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mGestures:Ljava/util/LinkedList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_13

    if-nez v1, :cond_2d

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_38
    iput v0, p0, Lcom/android/systemui/statusbar/GestureRecorder;->mLastSaveLen:I

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
