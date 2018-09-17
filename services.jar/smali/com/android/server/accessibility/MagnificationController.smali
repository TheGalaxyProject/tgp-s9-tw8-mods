.class Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$1;,
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SettingsBridge;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
    }
.end annotation


# static fields
.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final INVALID_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field public static final MAX_SCALE:F = 5.0f

.field public static final MIN_SCALE:F = 1.0f

.field private static final MSG_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x3

.field private static final MSG_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x4

.field private static final MSG_ON_USER_CONTEXT_CHANGED:I = 0x5

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x2

.field private static final MSG_SEND_SPEC_TO_ANIMATION:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mHandler:Landroid/os/Handler;

.field private mIdOfLastServiceToMagnify:I

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private final mMainThreadId:J

.field private mRegistered:Z

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private final mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field private mUserId:I

.field private final mWMCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

.field private final mWindowManager:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$SettingsBridge;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .registers 12

    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManagerInternal;

    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v7, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;-><init>(Landroid/content/ContentResolver;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Landroid/view/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Landroid/view/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    iput-object p4, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/view/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    iput-object p7, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    return-void
.end method

.method private getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentScale()F

    move-result v2

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetY()F

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    neg-float v3, v0

    float-to-int v3, v3

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->scale(F)V

    return-void
.end method

.method private getMinOffsetXLocked()F
    .registers 3

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private getMinOffsetYLocked()F
    .registers 3

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private getSentOffsetX()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method private getSentOffsetY()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method private getSentScale()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method private onMagnificationChangedLocked()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(Landroid/graphics/Region;FFF)V

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    :cond_22
    return-void
.end method

.method private onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_36

    if-nez v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    :cond_31
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_36

    :cond_34
    monitor-exit v1

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onScreenTurnedOff()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestRectangleOnScreen(IIII)V
    .registers 15

    iget-object v7, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_79

    move-result v6

    if-nez v6, :cond_10

    monitor-exit v7

    return-void

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    sub-int v6, p3, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v6, v8, :cond_4d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_47

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    :goto_2c
    sub-int v6, p4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v6, v8, :cond_63

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    :goto_39
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v3

    mul-float v6, v4, v3

    mul-float v8, v5, v3

    const/4 v9, -0x1

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegion(FFI)V
    :try_end_45
    .catchall {:try_start_10 .. :try_end_45} :catchall_79

    monitor-exit v7

    return-void

    :cond_47
    :try_start_47
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    goto :goto_2c

    :cond_4d
    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v6, :cond_57

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    goto :goto_2c

    :cond_57
    iget v6, v1, Landroid/graphics/Rect;->right:I

    if-le p3, v6, :cond_61

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    goto :goto_2c

    :cond_61
    const/4 v4, 0x0

    goto :goto_2c

    :cond_63
    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, v6, :cond_6d

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    goto :goto_39

    :cond_6d
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-le p4, v6, :cond_77

    iget v6, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_73
    .catchall {:try_start_47 .. :try_end_73} :catchall_79

    sub-int v6, p4, v6

    int-to-float v5, v6

    goto :goto_39

    :cond_77
    const/4 v5, 0x0

    goto :goto_39

    :catchall_79
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private resetLocked(Z)Z
    .registers 5

    iget-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    :cond_16
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    return v0
.end method

.method private sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    :goto_15
    return-void

    :cond_16
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_23

    move v0, v1

    :goto_1b
    invoke-virtual {v3, v1, v0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15

    :cond_23
    move v0, v2

    goto :goto_1b
.end method

.method private setScaleAndCenterLocked(FFFZI)Z
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->updateMagnificationSpecLocked(FFF)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v1, p4}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    if-eq p5, v1, :cond_14

    iput p5, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    :cond_14
    return v0
.end method

.method private unregisterInternalLocked()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    :cond_1c
    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    return-void
.end method

.method private updateCurrentSpecWithOffsetsLocked(FF)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetXLocked()F

    move-result v3

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v3, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v0, 0x1

    :cond_19
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetYLocked()F

    move-result v3

    invoke-static {p2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v2, v3, Landroid/view/MagnificationSpec;->offsetY:F

    const/4 v0, 0x1

    :cond_30
    return v0
.end method

.method private updateMagnificationSpecLocked(FFF)Z
    .registers 11

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result p2

    :cond_c
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result p3

    :cond_16
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result p1

    :cond_20
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {p1, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v3, v4, Landroid/view/MagnificationSpec;->scale:F

    const/4 v0, 0x1

    :cond_38
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float v5, p2, v3

    sub-float v1, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float v5, p3, v3

    sub-float v2, v4, v5

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v4

    or-int/2addr v0, v4

    if-eqz v0, :cond_66

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    :cond_66
    return v0
.end method


# virtual methods
.method public getCenterX()F
    .registers 4

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    move-result v2

    div-float/2addr v0, v2

    monitor-exit v1

    return v0

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCenterY()F
    .registers 4

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    move-result v2

    div-float/2addr v0, v2

    monitor-exit v1

    return v0

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getIdOfLastServiceToMagnify()I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method public getMagnificationBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getOffsetX()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method public getPersistedScale()F
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;->getMagnificationScale(I)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 12

    const/4 v9, 0x1

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_46

    :goto_6
    return v9

    :pswitch_7
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_16

    const/4 v0, 0x1

    :goto_c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/MagnificationSpec;

    iget-object v8, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v8, v6, v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    goto :goto_c

    :pswitch_18
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    goto :goto_6

    :pswitch_1d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Region;

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_6

    :pswitch_2f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    invoke-direct {p0, v3, v7, v5, v2}, Lcom/android/server/accessibility/MagnificationController;->requestRectangleOnScreen(IIII)V

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_6

    :pswitch_42
    invoke-virtual {p0, v9}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    goto :goto_6

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_7
        :pswitch_18
        :pswitch_1d
        :pswitch_2f
        :pswitch_42
    .end packed-switch
.end method

.method public isMagnifying()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isRegisteredLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    return v0
.end method

.method public magnificationRegionContains(FF)Z
    .registers 7

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->contains(II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit v1

    return v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public offsetMagnifiedRegion(FFI)V
    .registers 9

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-nez v2, :cond_9

    monitor-exit v3

    return-void

    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v0, v2, p1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v1, v2, p2

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    const/4 v2, -0x1

    if-eq p3, v2, :cond_1d

    iput p3, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    :cond_1d
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_25

    monitor-exit v3

    return-void

    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public persistScale()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v2, Landroid/view/MagnificationSpec;->scale:F

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/MagnificationController$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController$2;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/MagnificationController$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public register()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->register()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerInternal;->getMagnificationRegion(Landroid/graphics/Region;)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    :cond_2a
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method resetIfNeeded(Z)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCenter(FFZI)Z
    .registers 12

    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-nez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v6

    return v0

    :cond_a
    const/high16 v1, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    :try_start_11
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_17

    move-result v0

    monitor-exit v6

    return v0

    :catchall_17
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method setForceShowMagnifiableBounds(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerInternal;->setForceShowMagnifiableBounds(Z)V

    :cond_9
    return-void
.end method

.method public setScale(FFFZI)Z
    .registers 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_79

    if-nez v2, :cond_10

    const/4 v2, 0x0

    monitor-exit v17

    return v2

    :cond_10
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40a00000    # 5.0f

    :try_start_14
    move/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v14, v15, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, v15, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v2, v3

    div-float v12, v2, v14

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, v15, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v2, v3

    div-float v13, v2, v14

    iget v2, v15, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v2, p2, v2

    div-float v8, v2, v14

    iget v2, v15, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v2, p3, v2

    div-float v9, v2, v14

    sub-float v2, v12, v8

    div-float v3, v14, p1

    mul-float v10, v2, v3

    sub-float v2, v13, v9

    div-float v3, v14, p1

    mul-float v11, v2, v3

    add-float v4, v8, v10

    add-float v5, v9, v11

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_76
    .catchall {:try_start_14 .. :try_end_76} :catchall_79

    move-result v2

    monitor-exit v17

    return v2

    :catchall_79
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method public setScaleAndCenter(FFFZI)Z
    .registers 8

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_a
    :try_start_a
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit v1

    return v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUserId(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    if-eq v0, p1, :cond_14

    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v1

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregister()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    goto :goto_c

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method
