.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$CtrlType;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field static final MIN_ASPECT:F = 1.2f

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field private static final SAFE_DEBUG:Z

.field static final SIDE_MARGIN_DIP:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mCurrentDimSide:I

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field private mDimLayerBounds:Landroid/graphics/Rect;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDividerHeight:I

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private mFreeformResizeBottomMargin:I

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private mHasInputMethodTarget:Z

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private mIsDesktopMode:Z

.field private mMaxHeight:I

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mMinWidth:I

.field private mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field private mSavedGuideDimBounds:Landroid/graphics/Rect;

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field private mTask:Lcom/android/server/wm/Task;

.field private mTaskOrientation:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchFocusTransferred:Z

.field private mWin:Lcom/android/server/wm/WindowState;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/TaskPositioner;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSavedGuideDimBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mTouchFocusTransferred:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWin:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/DimLayer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayerBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mDividerHeight:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mIsDesktopMode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/TaskPositioner;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wm/TaskPositioner;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mTouchFocusTransferred:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskPositioner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/TaskPositioner;->SAFE_DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mHasInputMethodTarget:Z

    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizeBottomMargin:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSavedGuideDimBounds:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mIsDesktopMode:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayerBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mTouchFocusTransferred:Z

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getMultiWindowManagerPolicy()Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    return-void
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method private endDragLocked()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    return-void
.end method

.method private getDimSide(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner;->getDimSide(II)I

    move-result v0

    return v0
.end method

.method private getDimSide(II)I
    .registers 15

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_26

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget v2, v7, Landroid/view/DisplayInfo;->rotation:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIIILandroid/graphics/Rect;)V

    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v8, :cond_46

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v8, :cond_8c

    :cond_46
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v10, :cond_8b

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_7c

    return v11

    :cond_7c
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_8b

    const/16 v0, 0x8

    return v0

    :cond_8b
    return v9

    :cond_8c
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mIsDesktopMode:Z

    if-eqz v0, :cond_a4

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_a4

    return v11

    :cond_a4
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_b2

    return v10

    :cond_b2
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_bf

    return v8

    :cond_bf
    return v9
.end method

.method private notifyMoveLocked(FF)Z
    .registers 9

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_30

    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMoveLocked: {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v2, :cond_4b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v2, :cond_44

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v2, :cond_44

    iget-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v2, :cond_44

    return v5

    :cond_44
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    return v5

    :cond_4b
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    float-to-int v0, p1

    float-to-int v1, p2

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_7e

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7e
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskPositioner;->updateDimLayerVisibility(II)V

    return v5
.end method

.method private showDimLayer()V
    .registers 15

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v12, 0x2

    const/4 v11, 0x4

    const/4 v10, 0x1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, -0x1

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v6, v6, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const-wide/16 v8, 0x2bc

    const/16 v7, 0x6b

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendEmptyMessageDelayed(IJ)Z

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v6

    if-eqz v6, :cond_2c

    :cond_28
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    return-void

    :cond_2c
    const/4 v3, 0x0

    iget-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mIsDesktopMode:Z

    if-eqz v6, :cond_58

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v6, v11, :cond_56

    const/4 v3, 0x1

    :cond_36
    :goto_36
    if-eqz v3, :cond_a6

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v6, :cond_91

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v6, :cond_91

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mSavedGuideDimBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_55
    return-void

    :cond_56
    const/4 v3, 0x0

    goto :goto_36

    :cond_58
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    :goto_64
    if-eqz v2, :cond_70

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_36

    :cond_6e
    const/4 v2, 0x0

    goto :goto_64

    :cond_70
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(ILcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v6

    if-eqz v6, :cond_8a

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    return-void

    :cond_8a
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    xor-int/lit8 v3, v6, 0x1

    goto :goto_36

    :cond_91
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v7

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v13, v8, v9}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto :goto_55

    :cond_a6
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v6, v10, :cond_101

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    if-ne v1, v10, :cond_c4

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_c4
    const/4 v6, 0x3

    if-ne v1, v6, :cond_cd

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    :cond_cd
    :goto_cd
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v6, v11, :cond_120

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v12, :cond_e2

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_e2
    if-ne v1, v11, :cond_ea

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    :cond_ea
    :goto_ea
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayerBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v6, :cond_140

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v6, :cond_140

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mSavedGuideDimBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_100
    return-void

    :cond_101
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v6, v12, :cond_cd

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_117

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_117
    if-ne v1, v10, :cond_cd

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    goto :goto_cd

    :cond_120
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_ea

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    if-ne v1, v11, :cond_137

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_137
    if-ne v1, v12, :cond_ea

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    goto :goto_ea

    :cond_140
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v7

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v13, v8, v9}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto :goto_100
.end method

.method private updateDimLayerVisibility(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner;->updateDimLayerVisibility(II)V

    return-void
.end method

.method private updateDimLayerVisibility(II)V
    .registers 7

    const/16 v3, 0x6b

    iget-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mIsDesktopMode:Z

    if-eqz v2, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->getDimSide(II)I

    move-result v0

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v0, v2, :cond_10

    return-void

    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1f
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ">>> OPEN TRANSACTION updateDimLayerVisibility"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_46
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    return-void

    :cond_4c
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->hide()V

    goto :goto_46

    :cond_52
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->showDimLayer()V

    goto :goto_46
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .registers 18

    int-to-float v10, p1

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    move/from16 v0, p2

    int-to-float v10, v0

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v3, v10, v11

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int v5, v10, v11

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v4, v10, v11

    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v10, :cond_ff

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v10

    if-eqz v10, :cond_ff

    iget-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mHasInputMethodTarget:Z

    if-eqz v10, :cond_ff

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v10, v2}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    move/from16 v0, p2

    int-to-float v10, v0

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v7

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    if-le v10, v11, :cond_7e

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    if-le v10, v11, :cond_ec

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v10, v11

    if-gez v7, :cond_ea

    sub-int/2addr v7, v1

    :cond_7e
    :goto_7e
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    int-to-float v11, p1

    iget v12, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v10, v11, v7}, Landroid/graphics/Rect;->offset(II)V

    :goto_8b
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v8

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v12, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v9

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    sget-boolean v10, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v10, :cond_ca

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v10

    if-eqz v10, :cond_ca

    iget-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mIsDesktopMode:Z

    if-eqz v10, :cond_118

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-gez v10, :cond_ca

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_ca
    :goto_ca
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v10, :cond_e9

    sget-object v10, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateWindowDragBounds: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e9
    return-void

    :cond_ea
    neg-int v7, v1

    goto :goto_7e

    :cond_ec
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v11, :cond_fd

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v10, v11

    goto :goto_7e

    :cond_fd
    const/4 v7, 0x0

    goto :goto_7e

    :cond_ff
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    int-to-float v11, p1

    iget v12, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_8b

    :cond_118
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    invoke-interface {v11}, Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;->getStatusBarHeight()I

    move-result v11

    if-ge v10, v11, :cond_ca

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/TaskPositioner;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    invoke-interface {v11}, Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;->getStatusBarHeight()I

    move-result v11

    iget-object v12, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_ca
.end method


# virtual methods
.method public dimFullscreen()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getWindowDragBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method hideDimLayer()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_3d

    :cond_35
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_18

    :catchall_3d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isAttachedToDisplay()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method isFullscreen()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_TaskPositioner_28805()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/android/server/wm/TaskPositioner;->SAFE_DEBUG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TaskPositioner unregister: dismiss guideWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    :cond_18
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_TaskPositioner_52135()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    :cond_c
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_TaskPositioner_60267()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    :cond_c
    return-void
.end method

.method register(Landroid/view/Display;)V
    .registers 14

    const-wide v10, 0x12a05f200L

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Registering task positioner"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_21

    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Task positioner already registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    aget-object v2, v0, v8

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v7}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    new-instance v2, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v2, v7}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-direct {v2, v3, v7, v7, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v3, 0x7e0

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_fd

    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Pausing rotation during re-position"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    new-instance v2, Lcom/android/server/wm/DimLayer;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    const-string/jumbo v5, "TaskPositioner"

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x30

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x20

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iput-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mIsDesktopMode:Z

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v2, :cond_156

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v2, :cond_156

    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    :cond_156
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mDividerHeight:I

    return-void
.end method

.method resizeDrag(FF)V
    .registers 25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-nez v2, :cond_158

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_34
    sub-int v7, v5, v3

    sub-int v8, v6, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_168

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v18, v7, v10

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_4c
    :goto_4c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_17e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v18, v8, v11

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_60
    :goto_60
    int-to-float v2, v7

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v9, v2, v18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-eqz v2, :cond_152

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v2, :cond_194

    const v2, 0x3f99999a    # 1.2f

    cmpg-float v2, v9, v2

    if-gez v2, :cond_194

    :goto_79
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v2, :cond_1a8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-float v2, v0

    const v18, 0x3f99999a    # 1.2f

    div-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v13, v2, :cond_db

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    :cond_db
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v2, v14

    const v18, 0x3f99999a    # 1.2f

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_13b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_13b
    :goto_13b
    sub-int v2, v5, v3

    if-gt v7, v2, :cond_143

    sub-int v2, v6, v4

    if-le v8, v2, :cond_266

    :cond_143
    const/4 v12, 0x1

    :goto_144
    mul-int v2, v16, v13

    mul-int v18, v17, v14

    move/from16 v0, v18

    if-le v2, v0, :cond_269

    const/4 v2, 0x1

    :goto_14d
    if-ne v12, v2, :cond_26c

    move/from16 v7, v16

    move v8, v13

    :cond_152
    :goto_152
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(IIIIII)V

    return-void

    :cond_158
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v2, :cond_163

    const v15, 0x3f99999a    # 1.2f

    goto/16 :goto_34

    :cond_163
    const v15, 0x3f555555

    goto/16 :goto_34

    :cond_168
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int v18, v7, v10

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto/16 :goto_4c

    :cond_17e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_60

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int v18, v8, v11

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_60

    :cond_194
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-nez v2, :cond_152

    float-to-double v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v2, v18, v20

    if-lez v2, :cond_152

    goto/16 :goto_79

    :cond_1a8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-float v2, v0

    const v18, 0x3f99999a    # 1.2f

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v13, v2, :cond_204

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    :cond_204
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v2, v14

    const v18, 0x3f99999a    # 1.2f

    div-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_13b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto/16 :goto_13b

    :cond_266
    const/4 v12, 0x0

    goto/16 :goto_144

    :cond_269
    const/4 v2, 0x0

    goto/16 :goto_14d

    :cond_26c
    move/from16 v7, v17

    move v8, v14

    goto/16 :goto_152
.end method

.method startDrag(Lcom/android/server/wm/WindowState;ZZFF)V
    .registers 14

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_51

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDrag: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", resize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", preserveOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v0

    if-eqz v0, :cond_81

    if-eqz p2, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, v3, v3}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_6c
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_95

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    :goto_76
    if-eqz v7, :cond_81

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_81

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mHasInputMethodTarget:Z

    :cond_81
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFFLandroid/graphics/Rect;)V

    return-void

    :cond_95
    const/4 v7, 0x0

    goto :goto_76
.end method

.method startDrag(ZZFFLandroid/graphics/Rect;)V
    .registers 14

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v6, 0x8

    invoke-static {v6, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    if-eqz p1, :cond_52

    iget v5, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_21

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_21
    iget v5, p5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_2f

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_2f
    iget v5, p5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    cmpg-float v5, p4, v5

    if-gez v5, :cond_3d

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_3d
    iget v5, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    cmpl-float v5, p4, v5

    if-lez v5, :cond_4b

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_4b
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v5, :cond_18b

    const/4 v5, 0x1

    :goto_50
    iput-boolean v5, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    :cond_52
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lt v5, v6, :cond_18e

    const/4 v5, 0x1

    :goto_5d
    iput-boolean v5, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v5, :cond_180

    iget-boolean v5, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v5, :cond_180

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v5

    if-eqz v5, :cond_180

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v5, 0x105014c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizeBottomMargin:I

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMinWidth:I

    if-gez v5, :cond_191

    move v5, v1

    :goto_8e
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMinHeight:I

    if-gez v5, :cond_197

    :goto_96
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v5, v6, :cond_19d

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    :goto_a0
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v5, v6, :cond_1a1

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    :goto_aa
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_bc

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getBaseDisplayRect(Landroid/graphics/Rect;)V

    :cond_bc
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxWidth:I

    if-ltz v5, :cond_cc

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxWidth:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v5, v6, :cond_1a5

    :cond_cc
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_d0
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxHeight:I

    if-ltz v5, :cond_e2

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxHeight:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_1ab

    :cond_e2
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    :goto_e6
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    if-le v5, v6, :cond_1b1

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    :goto_f0
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    if-le v5, v6, :cond_1b5

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    :goto_fa
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v5

    if-eqz v5, :cond_180

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getResizeMode()I

    move-result v5

    packed-switch v5, :pswitch_data_1ec

    :goto_10d
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d1

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    :cond_126
    :goto_126
    sget-boolean v5, Lcom/android/server/wm/TaskPositioner;->SAFE_DEBUG:Z

    if-eqz v5, :cond_180

    sget-object v5, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startDrag: mTaskOrientation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Min=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") Max=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_180
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_18b
    const/4 v5, 0x0

    goto/16 :goto_50

    :cond_18e
    const/4 v5, 0x0

    goto/16 :goto_5d

    :cond_191
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMinWidth:I

    goto/16 :goto_8e

    :cond_197
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v5, Lcom/android/server/wm/Task;->mMinHeight:I

    goto/16 :goto_96

    :cond_19d
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    goto/16 :goto_a0

    :cond_1a1
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    goto/16 :goto_aa

    :cond_1a5
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxWidth:I

    goto/16 :goto_d0

    :cond_1ab
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxHeight:I

    goto/16 :goto_e6

    :cond_1b1
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    goto/16 :goto_f0

    :cond_1b5
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    goto/16 :goto_fa

    :pswitch_1b9
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    goto/16 :goto_10d

    :pswitch_1c1
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    goto/16 :goto_10d

    :pswitch_1c6
    iget-boolean v5, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v5, :cond_1cf

    const/4 v5, 0x2

    :goto_1cb
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    goto/16 :goto_10d

    :cond_1cf
    const/4 v5, 0x1

    goto :goto_1cb

    :cond_1d1
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_126

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    goto/16 :goto_126

    :pswitch_data_1ec
    .packed-switch 0x5
        :pswitch_1c1
        :pswitch_1b9
        :pswitch_1c6
    .end packed-switch
.end method

.method tearDown()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method unregister()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unregistering task positioner"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Task positioner not registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWin:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mHasInputMethodTarget:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mTouchFocusTransferred:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    :cond_4d
    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Resuming rotation after re-position"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    return-void
.end method

.method updateDraggedBounds(IIIIII)V
    .registers 11

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_63

    sub-int p1, p3, p5

    :goto_8
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_66

    sub-int p2, p4, p6

    :goto_10
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v2, :cond_58

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v2, :cond_58

    iget-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v2, :cond_58

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizeBottomMargin:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_69

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v2, :cond_69

    iget p1, v0, Landroid/graphics/Rect;->left:I

    :cond_4c
    :goto_4c
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_58

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le p4, v2, :cond_58

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_58
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    return-void

    :cond_63
    add-int p3, p1, p5

    goto :goto_8

    :cond_66
    add-int p4, p2, p6

    goto :goto_10

    :cond_69
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4c

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le p3, v2, :cond_4c

    iget p3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_4c
.end method
