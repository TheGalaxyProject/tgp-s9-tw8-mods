.class Lcom/samsung/android/server/virtualspace/VSScreen;
.super Lcom/samsung/android/virtualspace/IVSScreen$Stub;
.source "VSScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;,
        Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    }
.end annotation


# static fields
.field private static final MSG_APP_ORIENTATION_CHANGED:I = 0xb

.field private static final MSG_BOUNDS_CHANGED:I = 0x7

.field private static final MSG_CLOSED:I = 0xa

.field private static final MSG_HAS_CONTENT_CHANGED:I = 0x4

.field private static final MSG_IME_TARGET_CHANGED:I = 0xc

.field private static final MSG_LOST:I = 0x5

.field private static final MSG_ORIENTATION_CHANGED:I = 0x3

.field private static final MSG_READY:I = 0x9

.field private static final MSG_TOP_TASK_UPDATED:I = 0xd

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerCount:I

.field private static final sPointerLock:Ljava/lang/Object;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private final mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/virtualspace/IVSScreenCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPending:Z

.field private mContainer:Landroid/app/IActivityContainer;

.field private mDensity:I

.field private mDisplay:Landroid/view/Display;

.field private final mFlags:I

.field private final mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private final mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

.field private mNonEmpty:Z

.field private final mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mRealDensity:I

.field private mRealHeight:I

.field private mRealWidth:I

.field private volatile mRotation:I

.field private final mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

.field private final mSession:Lcom/samsung/android/server/virtualspace/VSSession;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private final mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/virtualspace/VSScreen$Value",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mValid:Z

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/server/virtualspace/VSScreen;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCount:I

    sput-object v1, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSSession;IIII)V
    .registers 12

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;-><init>()V

    iput v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "HasContent"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "Orientation"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "AppOrientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "Bounds"

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x7

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "IMETarget"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const-string/jumbo v1, "TopTask"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getManager()Lcom/samsung/android/server/virtualspace/VSManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iput p2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iput p3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iput p4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    iput v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    iput p5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V
    .registers 5

    and-int v0, p1, p2

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, " | "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    return-void
.end method

.method private assertRunOnHandlerThread()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    return-void
.end method

.method private clearComplete()V
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute(Z)V

    return-void
.end method

.method private clearTask()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearComplete()V

    :goto_1d
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-interface {v0, v1}, Lcom/android/server/am/IActivityManagerServiceBridge;->clearVSDisplay(I)V

    return-void

    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    goto :goto_1d
.end method

.method private closeTask()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearTask()V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->unredirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->removeScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setContainer(Landroid/app/IActivityContainer;)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "FLAG_REDIRECT_MAIN_DISPLAY"

    const/16 v2, 0x10

    invoke-static {v0, p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V

    const-string/jumbo v1, "FLAG_CLEAR_MAIN_DISPLAY"

    const/16 v2, 0x20

    invoke-static {v0, p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V

    const-string/jumbo v1, "FLAG_ENABLE_HW_COMPOSITION"

    const/16 v2, 0x40

    invoke-static {v0, p0, v2, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->addFlag(Ljava/lang/StringBuffer;IILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initTask()V
    .registers 14

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_2
    sget-boolean v8, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v8, :cond_c

    const-string/jumbo v8, "initTask"

    invoke-direct {p0, v8}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_c
    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->set(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v8, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->addScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    const/4 v2, 0x5

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_24

    const/16 v2, 0xd

    :cond_24
    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v8, v8, Lcom/samsung/android/server/virtualspace/VSManagerService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v9}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientActivity()Landroid/os/IBinder;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;

    invoke-direct {v10, p0}, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;-><init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/am/ActivityManagerService;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;I)Landroid/app/IActivityContainer;

    move-result-object v0

    if-nez v0, :cond_43

    const-string/jumbo v6, "Activity container not created"

    invoke-direct {p0, v6}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3f} :catch_eb

    :goto_3f
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void

    :cond_43
    :try_start_43
    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_f4

    const/4 v3, 0x1

    :goto_4a
    if-eqz v3, :cond_100

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v8}, Lcom/samsung/android/server/virtualspace/VSSession;->getRealMainDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v8, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    if-ne v8, v9, :cond_6e

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    if-eq v8, v9, :cond_f7

    :cond_6e
    const/4 v4, 0x1

    :goto_6f
    sget-boolean v8, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v8, :cond_c5

    if-eqz v4, :cond_c5

    const-string/jumbo v8, "creating a display that matches the main display\'s real size: %dx%d dpi:%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    const-string/jumbo v8, "... and scaling it as the main display to: %dx%d dpi:%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_c5
    :goto_c5
    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    const/4 v11, 0x0

    invoke-interface {v0, v11, v8, v9, v10}, Landroid/app/IActivityContainer;->setSurface(Landroid/view/Surface;III)V

    invoke-interface {v0}, Landroid/app/IActivityContainer;->getDisplayId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    if-nez v8, :cond_10e

    const-string/jumbo v6, "Display not created"

    invoke-direct {p0, v6}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_e9} :catch_eb

    goto/16 :goto_3f

    :catch_eb
    move-exception v5

    const-string/jumbo v6, "Couldn\'t create activity container: "

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    :cond_f4
    const/4 v3, 0x0

    goto/16 :goto_4a

    :cond_f7
    :try_start_f7
    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    if-ne v8, v9, :cond_6e

    const/4 v4, 0x0

    goto/16 :goto_6f

    :cond_100
    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    iput v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    const/4 v4, 0x0

    goto :goto_c5

    :cond_10e
    if-eqz v4, :cond_11d

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iget v11, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    iget v12, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateBaseDisplayMetrics(IIII)V

    :cond_11d
    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget v10, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    const/4 v11, 0x1

    invoke-interface {v8, v9, v10, v11}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setDisplayRotation(IIZ)V

    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v8, v9, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->setScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V

    if-eqz v3, :cond_14c

    const-string/jumbo v8, "debug.vs.non.redirect"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_158

    const-string/jumbo v6, "Forced non redirect mode"

    invoke-direct {p0, v6}, Lcom/samsung/android/server/virtualspace/VSScreen;->logi(Ljava/lang/String;)V

    const-string/jumbo v6, "debug.vs.non.redirect.display"

    iget v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14c
    :goto_14c
    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setContainer(Landroid/app/IActivityContainer;)V

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V

    return-void

    :cond_158
    iget-object v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_164

    :goto_160
    invoke-virtual {v8, p0, v6}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V
    :try_end_163
    .catch Ljava/lang/Throwable; {:try_start_f7 .. :try_end_163} :catch_eb

    goto :goto_14c

    :cond_164
    move v6, v7

    goto :goto_160
.end method

.method private launchActivityTask(Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V
    .registers 9

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-eqz v3, :cond_20

    :try_start_4
    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    if-nez v3, :cond_24

    const/high16 v3, 0x18010000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "vs_launched"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_20} :catch_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_50

    :cond_20
    :goto_20
    invoke-virtual {p2}, Landroid/os/ConditionVariable;->open()V

    return-void

    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-interface {v3, p1}, Landroid/app/IActivityContainer;->startActivity(Landroid/content/Intent;)I

    move-result v2

    if-nez v2, :cond_38

    const/4 v3, 0x1

    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_50

    goto :goto_20

    :catch_30
    move-exception v0

    const-string/jumbo v3, "Activity not found"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_38
    :try_start_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed starting activity with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_38 .. :try_end_4f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4f} :catch_50

    goto :goto_20

    :catch_50
    move-exception v1

    const-string/jumbo v3, "Unexpected exception"

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string/jumbo v0, "VSManagerService"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->makeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private makeMsg(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VSScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyCallbacks(I)V
    .registers 7

    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_d
    if-lez v1, :cond_15f

    :try_start_f
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/virtualspace/IVSScreenCallback;

    packed-switch p1, :pswitch_data_166

    :pswitch_1c
    goto :goto_d

    :pswitch_1d
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_ORIENTATION_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_3a
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_49} :catch_4a

    goto :goto_d

    :catch_4a
    move-exception v0

    const-string/jumbo v3, "Exception while notifying callbacks:"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :pswitch_52
    :try_start_52
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_6f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_HAS_CONTENT_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_6f
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onContentChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    goto :goto_d

    :pswitch_7f
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_89

    const-string/jumbo v3, "sending callback MSG_LOST"

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_89
    invoke-interface {v2, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onLost(Lcom/samsung/android/virtualspace/IVSScreen;)V

    goto :goto_d

    :pswitch_8d
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_aa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_BOUNDS_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_aa
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onBoundsChanged(Lcom/samsung/android/virtualspace/IVSScreen;Landroid/graphics/Rect;)V

    goto/16 :goto_d

    :pswitch_b7
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_c1

    const-string/jumbo v3, "sending callback MSG_READY"

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_c1
    invoke-interface {v2, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onReady(Lcom/samsung/android/virtualspace/IVSScreen;)V

    goto/16 :goto_d

    :pswitch_c6
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_d0

    const-string/jumbo v3, "sending callback MSG_CLOSED"

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_d0
    invoke-interface {v2, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V

    goto/16 :goto_d

    :pswitch_d5
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_f2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_APP_ORIENTATION_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f2
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onAppOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    goto/16 :goto_d

    :pswitch_103
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_120

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_IME_TARGET_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_120
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onIMETargetChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    goto/16 :goto_d

    :pswitch_131
    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_14e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending callback MSG_TOP_TASK_UPDATED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_14e
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onTopTaskUpdated(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    :try_end_15d
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_15d} :catch_4a

    goto/16 :goto_d

    :cond_15f
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    nop

    :pswitch_data_166
    .packed-switch 0x3
        :pswitch_1d
        :pswitch_52
        :pswitch_7f
        :pswitch_1c
        :pswitch_8d
        :pswitch_1c
        :pswitch_b7
        :pswitch_c6
        :pswitch_d5
        :pswitch_103
        :pswitch_131
    .end packed-switch
.end method

.method private resendStateTask()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    :cond_9
    return-void
.end method

.method private static rotateEvent(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;
    .registers 33

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    sget-object v28, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerLock:Ljava/lang/Object;

    monitor-enter v28

    :try_start_7
    sget v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCount:I

    if-le v9, v4, :cond_30

    sput v9, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCount:I

    new-array v4, v9, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v4, v9, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    const/16 v22, 0x0

    :goto_17
    move/from16 v0, v22

    if-ge v0, v9, :cond_30

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v4, v22

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v4, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    :cond_30
    const/16 v22, 0x0

    :goto_32
    move/from16 v0, v22

    if-ge v0, v9, :cond_91

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v21, v4, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v26

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v27

    packed-switch p1, :pswitch_data_d2

    move/from16 v24, v26

    move/from16 v25, v27

    :goto_58
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    const/4 v4, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    sget-object v4, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_32

    :pswitch_76
    move/from16 v24, v27

    move/from16 v0, p2

    int-to-float v4, v0

    sub-float v25, v4, v26

    goto :goto_58

    :pswitch_7e
    move/from16 v0, p2

    int-to-float v4, v0

    sub-float v24, v4, v26

    move/from16 v0, p3

    int-to-float v4, v0

    sub-float v25, v4, v27

    goto :goto_58

    :pswitch_89
    move/from16 v0, p3

    int-to-float v4, v0

    sub-float v24, v4, v27

    move/from16 v25, v26

    goto :goto_58

    :cond_91
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    sget-object v10, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v11, Lcom/samsung/android/server/virtualspace/VSScreen;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->semGetDisplayId()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;
    :try_end_c8
    .catchall {:try_start_7 .. :try_end_c8} :catchall_ce

    move-result-object v23

    monitor-exit v28

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->recycle()V

    return-object v23

    :catchall_ce
    move-exception v4

    monitor-exit v28

    throw v4

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_76
        :pswitch_7e
        :pswitch_89
    .end packed-switch
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setContainer(Landroid/app/IActivityContainer;)V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-eq v1, p1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-eqz v1, :cond_d

    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-interface {v1}, Landroid/app/IActivityContainer;->release()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10

    :cond_d
    :goto_d
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    :cond_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_d
.end method

.method private updateHasContent(Z)V
    .registers 5

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p1, :cond_1e

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mClearPending:Z

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearComplete()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->mute(Z)V

    goto :goto_1d
.end method

.method private updateSurfaceTask(Landroid/view/Surface;)V
    .registers 8

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-nez v2, :cond_6

    return-void

    :cond_6
    iput v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    iput v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    if-eqz p1, :cond_18

    :try_start_c
    invoke-virtual {p1}, Landroid/view/Surface;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    invoke-virtual {p1}, Landroid/view/Surface;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_18} :catch_3b

    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/app/IActivityContainer;->setSurface(Landroid/view/Surface;III)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_43

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    if-eq v2, v3, :cond_3a

    :cond_2f
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget v4, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    iget v5, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/server/virtualspace/VSManagerService;->setOverrideDisplaySize(III)V

    :cond_3a
    return-void

    :catch_3b
    move-exception v1

    const-string/jumbo v2, "Surface has already been released"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V

    return-void

    :catch_43
    move-exception v0

    const-string/jumbo v2, "updateSurfaceTask failed:"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "clear()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "close()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)Z
    .registers 13

    const/4 v10, 0x0

    iget-boolean v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v7, :cond_6

    return v10

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    if-nez v7, :cond_11

    const-string/jumbo v7, "no container"

    invoke-direct {p0, v7}, Lcom/samsung/android/server/virtualspace/VSScreen;->logw(Ljava/lang/String;)V

    return v10

    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_15
    instance-of v7, p1, Landroid/view/KeyEvent;

    if-eqz v7, :cond_28

    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setFocusedDisplay(IZ)Z
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_93

    move-result v7

    if-nez v7, :cond_80

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_28
    :try_start_28
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_80

    iget v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    if-eqz v7, :cond_3a

    iget-boolean v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mNonEmpty:Z
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_93

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3a

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_3a
    :try_start_3a
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    iget v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v5, v7}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5e

    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v7}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-interface {v7, v8}, Lcom/android/server/wm/IWindowManagerServiceBridge;->ensureFocusedDisplay(I)V

    :cond_5e
    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v7}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_80

    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v7}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iget v9, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    invoke-static {v5, v7, v8, v9}, Lcom/samsung/android/server/virtualspace/VSScreen;->rotateEvent(Landroid/view/MotionEvent;III)Landroid/view/MotionEvent;
    :try_end_7f
    .catchall {:try_start_3a .. :try_end_7f} :catchall_93

    move-result-object p1

    :cond_80
    const/4 v6, 0x0

    :try_start_81
    iget-object v7, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mContainer:Landroid/app/IActivityContainer;

    invoke-interface {v7, p1}, Landroid/app/IActivityContainer;->injectEvent(Landroid/view/InputEvent;)Z
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_86} :catch_8b
    .catchall {:try_start_81 .. :try_end_86} :catchall_93

    move-result v6

    :goto_87
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catch_8b
    move-exception v4

    :try_start_8c
    const-string/jumbo v7, ""

    invoke-direct {p0, v7, v4}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_93

    goto :goto_87

    :catchall_93
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mFlags:I

    invoke-static {v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  real size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRealDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  surface size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  appOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  hasContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    monitor-enter v1

    :try_start_15c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  bounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_179
    .catchall {:try_start_15c .. :try_end_179} :catchall_181

    monitor-exit v1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_181
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method finish()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method public getAppOrientation()I
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_18

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getDisplayId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "getOrientation()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    return v0
.end method

.method public getRotation()I
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "getRotation()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_10
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    return v0
.end method

.method public getSize(Landroid/graphics/Point;)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method isValid()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    return v0
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_23002(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->resendStateTask()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_23248()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->resendStateTask()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_23508(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_24181()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_24341()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->clearTask()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_24619()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setFocusedDisplay(IZ)Z

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_24815()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSSession;->getClientDisplayId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setFocusedDisplay(IZ)Z

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_25069(I)V
    .registers 5

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mRotation:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setDisplayRotation(IIZ)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_25528(Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/virtualspace/VSScreen;->launchActivityTask(Landroid/content/Intent;Landroid/os/ConditionVariable;Landroid/util/MutableBoolean;)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_27420(Landroid/view/Surface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateSurfaceTask(Landroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_27857(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->setPriorityTask(I)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_28216(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectSystemWindows(ILcom/samsung/android/server/virtualspace/VSScreen;Z)V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSScreen_4399()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->initTask()V

    return-void
.end method

.method public launchActivity(Landroid/content/Intent;)Z
    .registers 7

    const/4 v4, 0x0

    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchActivity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_23
    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v2, :cond_29

    if-nez p1, :cond_2a

    :cond_29
    return v4

    :cond_2a
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    new-instance v2, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string/jumbo v2, "Timed out launching activity"

    invoke-direct {p0, v2}, Lcom/samsung/android/server/virtualspace/VSScreen;->loge(Ljava/lang/String;)V

    :cond_4a
    iget-boolean v2, v1, Landroid/util/MutableBoolean;->value:Z

    return v2
.end method

.method onAppOrientationUpdated(I)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mAppOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method onBoundsUpdated(IIII)V
    .registers 9

    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ne v2, p3, :cond_20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v2, p4, :cond_20

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ne v2, p1, :cond_20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, p2, :cond_20

    return-void

    :cond_20
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    monitor-enter v2

    :try_start_27
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_49

    monitor-exit v2

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mBounds:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallbackForce()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mNonEmpty:Z

    if-eqz v1, :cond_48

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mNonEmpty:Z

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mHasContent:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallback()V

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-virtual {v2}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->notifyCallback()V

    :cond_48
    return-void

    :catchall_49
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method onDisplayChanged()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mOrientation:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method onDisplayRemoved()V
    .registers 2

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->notifyCallbacks(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->closeTask()V

    return-void
.end method

.method onIMETargetChanged(Z)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mIMETarget:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void
.end method

.method onTopTaskUpdated(I)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    const/4 v0, -0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->updateHasContent(Z)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mTopTask:Lcom/samsung/android/server/virtualspace/VSScreen$Value;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen$Value;->update(Ljava/lang/Object;)Z

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public redirectSystemWindows(IZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;

    invoke-direct {v0, p2, p1, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$12;-><init>(ZILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v1, :cond_a

    :try_start_7
    invoke-interface {p1, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback;->onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_35

    :cond_a
    :goto_a
    sget-boolean v1, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_2c
    new-instance v1, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void

    :catch_35
    move-exception v0

    goto :goto_a
.end method

.method public releaseFocus()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "releaseFocus()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$3;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resendState()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "resendState()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$4;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method setDisplayId(I)V
    .registers 4

    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mSession:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/VSSession;->setScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V

    return-void
.end method

.method public setPriority(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$10;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$10;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method setPriorityTask(I)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSScreen;->assertRunOnHandlerThread()V

    :cond_7
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    if-eq v0, p1, :cond_36

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPriority("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_2d
    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mPriority:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->updateOomAdj()V

    :cond_36
    return-void
.end method

.method public setRotation(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_27
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$11;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$11;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurface("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_27
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takeFocus()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "takeFocus()"

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$5;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen;->mValid:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    return-void

    :cond_7
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterCallback("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->logd(Ljava/lang/String;)V

    :cond_29
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method
