.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final MINIMAL_SIZE_UNDEFINED:I = -0x1

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiWindowGesture"

.field private static final TASK_ID_UNDEFINED:I = -0x1

.field private static final TOAST_UNRESIZEABLE_TASK:I = 0x1


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private mDefaultMinimalSizeOfResizeableTask:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private final mInitRect:Landroid/graphics/Rect;

.field private mIsMoved:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

.field private mNotResizeableRect:Landroid/graphics/Rect;

.field private mNotSupport:Z

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskId:I

.field private final mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

.field private mTaskOrientation:I

.field private mTaskResizable:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V
    .registers 9

    const v5, 0x3f99999a    # 1.2f

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    cmpg-float v3, v2, v5

    if-gez v3, :cond_27

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->top:I

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    cmpg-float v3, v2, v5

    if-gez v3, :cond_27

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    sparse-switch p2, :sswitch_data_58

    goto :goto_27

    :sswitch_4b
    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_27

    :sswitch_51
    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_27

    nop

    :sswitch_data_58
    .sparse-switch
        0x5 -> :sswitch_4b
        0x9 -> :sswitch_51
    .end sparse-switch
.end method

.method private findTargetTaskBounds(IILandroid/graphics/Rect;)Z
    .registers 16

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v8

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: the keyguard is currently locked."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17a

    const/4 v7, 0x0

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_1f
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    invoke-interface {v7}, Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;->isQuickPanelExpanded()Z

    move-result v7

    if-eqz v7, :cond_36

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: the quick panel is expanded."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_17a

    const/4 v7, 0x0

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_36
    :try_start_36
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x8b2

    if-ne v6, v7, :cond_55

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: the edge panel is expanded."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_17a

    const/4 v7, 0x0

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_55
    const/16 v7, 0x7e7

    if-ne v6, v7, :cond_68

    :try_start_59
    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: The screensaver is running."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_17a

    const/4 v7, 0x0

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_68
    :try_start_68
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v7, p1, p2, v9}, Lcom/android/server/wm/DisplayContent;->taskIdFromPoint(IILcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;)I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    iget-object v3, v7, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_190

    iget-object v7, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v7, :cond_190

    const-string/jumbo v7, "MultiWindowGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTargetTaskBounds: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v7, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_a1

    iget-object v7, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v7, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_187

    :cond_a1
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    if-eqz v5, :cond_cf

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v7

    if-eqz v7, :cond_cf

    const-string/jumbo v7, "MultiWindowGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTargetTaskBounds: failed, task is relaunching, t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_68 .. :try_end_c9} :catchall_17a

    const/4 v7, 0x0

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_cf
    :try_start_cf
    invoke-virtual {v3, p3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v7, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v7, v7, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_117

    const/4 v1, 0x1

    :goto_da
    if-eqz v1, :cond_11b

    iget-object v7, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v7

    if-eqz v7, :cond_11b

    iget v7, p3, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_119

    const/4 v2, 0x1

    :goto_e9
    if-nez v2, :cond_f5

    if-eqz v1, :cond_11d

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    invoke-interface {v7}, Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;->isRecentsVisible()Z

    move-result v7

    if-eqz v7, :cond_11d

    :cond_f5
    const-string/jumbo v7, "MultiWindowGesture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "findTargetTaskBounds: failed, docked task is adjusted by ime or Recents is visible, t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_cf .. :try_end_111} :catchall_17a

    const/4 v7, 0x0

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_117
    const/4 v1, 0x0

    goto :goto_da

    :cond_119
    const/4 v2, 0x0

    goto :goto_e9

    :cond_11b
    const/4 v2, 0x0

    goto :goto_e9

    :cond_11d
    :try_start_11d
    iget v7, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/DisplayContent;->getContentRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v7, 0x0

    iput v7, p3, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    const/4 v11, 0x0

    invoke-virtual {p3, v7, v11, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget v7, v3, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v9, v3, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-direct {p0, v7, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->updateMinimalSize(II)V

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v7

    if-eqz v7, :cond_16b

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getResizeMode()I

    move-result v4

    const/4 v7, 0x7

    if-ne v4, v7, :cond_173

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v7, v9, :cond_171

    const/4 v7, 0x2

    :goto_169
    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I
    :try_end_16b
    .catchall {:try_start_11d .. :try_end_16b} :catchall_17a

    :cond_16b
    :goto_16b
    const/4 v7, 0x1

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_171
    const/4 v7, 0x1

    goto :goto_169

    :cond_173
    const/4 v7, 0x6

    if-ne v4, v7, :cond_180

    const/4 v7, 0x1

    :try_start_177
    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I
    :try_end_179
    .catchall {:try_start_177 .. :try_end_179} :catchall_17a

    goto :goto_16b

    :catchall_17a
    move-exception v7

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v7

    :cond_180
    const/4 v7, 0x5

    if-ne v4, v7, :cond_16b

    const/4 v7, 0x2

    :try_start_184
    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    goto :goto_16b

    :cond_187
    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v9, "findTargetTaskBounds: failed, task is not dock or full"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catchall {:try_start_184 .. :try_end_190} :catchall_17a

    :cond_190
    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v7, 0x0

    return v7
.end method

.method private reset()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    iput-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    iput v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    iput-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    return-void
.end method

.method private showToast(I)V
    .registers 6

    const/4 v2, 0x1

    if-ne p1, v2, :cond_29

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10402d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_29
    return-void
.end method

.method private updateMinimalSize(II)V
    .registers 4

    if-lez p1, :cond_9

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    :goto_4
    if-lez p2, :cond_e

    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    goto :goto_8
.end method


# virtual methods
.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onConfigurationChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    sget-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v0, :cond_31

    const-string/jumbo v0, "MultiWindowGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged, mDefaultMinimalSizeOfResizeableTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_3a
    return-void
.end method

.method onDisplayReady()V
    .registers 5

    const/4 v3, -0x1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getMultiWindowManagerPolicy()Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 14

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_12

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_12

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_13

    :cond_12
    return-void

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-nez v7, :cond_31

    if-nez v0, :cond_30

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "mMultiWindowEdgeDetector is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void

    :cond_31
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    invoke-interface {v7}, Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_56

    sget-boolean v7, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v7, :cond_55

    if-nez v0, :cond_55

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->checkEdgeFlags(Landroid/view/MotionEvent;)I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_55

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "freeform gesture is blocked, lock task mode is running."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void

    :cond_56
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-eqz v7, :cond_75

    if-nez v0, :cond_74

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->checkEdgeFlags(Landroid/view/MotionEvent;)I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_74

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "freeform gesture is blocked, reduce screen is running."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return-void

    :cond_75
    packed-switch v0, :pswitch_data_23c

    :cond_78
    :goto_78
    :pswitch_78
    return-void

    :pswitch_79
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_78

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_96

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    :cond_96
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findTargetTaskBounds(IILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_af

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v7, :cond_a7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    :cond_a7
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_78

    :cond_af
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    goto :goto_78

    :pswitch_b3
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_78

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v4

    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v7, :cond_de

    if-eqz v4, :cond_de

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEffectiveAngle(II)Z

    move-result v7

    if-nez v7, :cond_de

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "onPointerEvent: not effective angle, failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :cond_de
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    if-nez v7, :cond_127

    if-eqz v4, :cond_78

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "onPointerEvent: failed, task is not resizable"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v7, :cond_103

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    :cond_103
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v7, :cond_78

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_11b

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_11b
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast(I)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_78

    :cond_127
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v7, :cond_13a

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_13a
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v7, :cond_189

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v7

    if-eqz v7, :cond_189

    const-string/jumbo v7, "MultiWindowGesture"

    const-string/jumbo v8, "onPointerEvent: failed, KnoxKeyguard is not resizable"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v7, :cond_165

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    :cond_165
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v7, :cond_78

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_17d

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_17d
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast(I)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_78

    :cond_189
    if-eqz v4, :cond_1e7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlgas()I

    move-result v2

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v7, v2, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->applyResizeRect(Landroid/graphics/Rect;III)V

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    invoke-static {v7, v2, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z

    move-result v3

    iget v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    if-eqz v7, :cond_1a9

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V

    :cond_1a9
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v7, :cond_1b5

    if-eqz v3, :cond_1e0

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    :cond_1b5
    :goto_1b5
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v7, :cond_1d3

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_1cd

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_1cd
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    :cond_1d3
    :goto_1d3
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v7, :cond_78

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    goto/16 :goto_78

    :cond_1e0
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    goto :goto_1b5

    :cond_1e7
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1d3

    :pswitch_1ef
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_232

    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_232

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v7

    if-eqz v7, :cond_232

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_219

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_219
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v7, v7, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v10, 0x65

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v8, v11, v9}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_232
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    goto/16 :goto_78

    :pswitch_237
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    goto/16 :goto_78

    :pswitch_data_23c
    .packed-switch 0x0
        :pswitch_79
        :pswitch_1ef
        :pswitch_b3
        :pswitch_237
        :pswitch_78
        :pswitch_78
        :pswitch_1ef
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MultiWindowPointerEventListener{display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_26
    const/4 v0, -0x1

    goto :goto_a
.end method
