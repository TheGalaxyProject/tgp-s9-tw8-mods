.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
.super Ljava/util/Observable;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSpeedManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;
    }
.end annotation


# static fields
.field private static volatile mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;


# instance fields
.field private final UPDATE_DATA1:I

.field private final UPDATE_DATA2:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->setChanged()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->UPDATE_DATA1:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->UPDATE_DATA2:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
    .registers 4

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    if-nez v0, :cond_1c

    const-class v1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    if-nez v0, :cond_1b

    const-string/jumbo v0, "NetworkSpeedManager"

    const-string/jumbo v2, "getInstance == null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1f

    :cond_1b
    monitor-exit v1

    :cond_1c
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->countObservers()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public deleteObserver(Ljava/util/Observer;)V
    .registers 4

    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->countObservers()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method
