.class final Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public mEvent:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field public mPolicyFlags:I

.field public mRawEvent:Landroid/view/MotionEvent;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clear()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mPolicyFlags:I

    return-void
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    iput p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mPolicyFlags:I

    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 6

    sget-object v2, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    if-lez v1, :cond_1e

    sget v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    iget-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    :goto_19
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_24

    monitor-exit v2

    return-object v0

    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;-><init>()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_24

    goto :goto_19

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 4

    sget-object v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already recycled."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->clear()V

    sget v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2b

    sget v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    sput-object p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_10

    :cond_2b
    monitor-exit v1

    return-void
.end method
