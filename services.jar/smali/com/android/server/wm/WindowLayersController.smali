.class Lcom/android/server/wm/WindowLayersController;
.super Ljava/lang/Object;
.source "WindowLayersController.java"


# instance fields
.field private mAboveImeTarget:Z

.field private mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mAnyLayerChanged:Z

.field private final mAssignWindowLayersConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistantWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCurBaseLayer:I

.field private mCurLayer:I

.field private mDividerClosePanel:Lcom/android/server/wm/WindowState;

.field private mDividerPanel:Lcom/android/server/wm/WindowState;

.field private mDividerPanelDimLayer:Lcom/android/server/wm/WindowState;

.field private final mDividerPanelWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerSnapView:Lcom/android/server/wm/WindowState;

.field private mDockDivider:Lcom/android/server/wm/WindowState;

.field private mDockedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeformReplacingWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeformWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHighestApplicationLayer:I

.field private mHighestLayerInImeTargetBaseLayer:I

.field private mImeTarget:Lcom/android/server/wm/WindowState;

.field private mInputMethodWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mReplacingWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSendingWindowsToBottom:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mSendingWindowsToBottom:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/android/server/wm/-$Lambda$rQWNC8oUFFqNI368PlDEO7_YsgQ$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$Lambda$rQWNC8oUFFqNI368PlDEO7_YsgQ$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssignWindowLayersConsumer:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private adjustSpecialWindows()V
    .registers 7

    iget v4, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    add-int/lit8 v2, v4, 0x5

    :goto_4
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    goto :goto_4

    :cond_19
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelDimLayer:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDividerClosePanel:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanel:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    goto :goto_37

    :cond_48
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDividerSnapView:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    :cond_52
    :goto_52
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    goto :goto_52

    :cond_67
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v4, :cond_e0

    :cond_6b
    :goto_6b
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a0

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v4, :cond_87

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mSendingWindowsToBottom:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_87
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    goto :goto_6b

    :cond_a0
    :goto_a0
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mSendingWindowsToBottom:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_cb

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mSendingWindowsToBottom:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_a0

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    goto :goto_a0

    :cond_cb
    :goto_cb
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e0

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    goto :goto_cb

    :cond_e0
    :goto_e0
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f5

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    goto :goto_e0

    :cond_f5
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_12d

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_103

    iget v4, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    add-int/lit8 v2, v4, 0x5

    :cond_103
    :goto_103
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_118

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    goto :goto_103

    :cond_118
    :goto_118
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12d

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    goto :goto_118

    :cond_12d
    return-void
.end method

.method private assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I
    .registers 3

    if-eqz p1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    add-int/lit8 p2, p2, 0x5

    :cond_7
    return p2
.end method

.method private assignAnimLayer(Lcom/android/server/wm/WindowState;I)V
    .registers 7

    iput p2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSpecialWindowAnimLayerAdjustment()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v1, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-le v1, v2, :cond_31

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    :cond_31
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v0

    if-lez v0, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-eq v1, v0, :cond_5a

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    :cond_5a
    return-void
.end method

.method private assignVirtualScreenLayer(Lcom/android/server/wm/WindowState;I)I
    .registers 7

    const/4 v3, -0x1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-gtz v1, :cond_17

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/server/am/MultiScreenManagerService;->assignLayer(III)V

    :cond_16
    return p2

    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/MultiScreenManagerService;->getLayer(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/am/MultiScreenManagerService;->assignLayer(III)V

    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/MultiScreenManagerService;->getLayer(II)I

    move-result v1

    return v1
.end method

.method private collectSpecialWindows(Lcom/android/server/wm/WindowState;)V
    .registers 8

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x8e0

    if-ne v4, v5, :cond_9

    return-void

    :cond_9
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7f2

    if-ne v4, v5, :cond_14

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    return-void

    :cond_14
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x8fe

    if-ne v4, v5, :cond_1f

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanel:Lcom/android/server/wm/WindowState;

    return-void

    :cond_1f
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x902

    if-ne v4, v5, :cond_2a

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerClosePanel:Lcom/android/server/wm/WindowState;

    return-void

    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->isSamsungDividerPanelWindow(I)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_40
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x900

    if-ne v4, v5, :cond_4b

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerSnapView:Lcom/android/server/wm/WindowState;

    return-void

    :cond_4b
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x903

    if-ne v4, v5, :cond_56

    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelDimLayer:Lcom/android/server/wm/WindowState;

    return-void

    :cond_56
    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v4, :cond_69

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v4, :cond_79

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v4

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_69
    :goto_69
    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v4, :cond_7f

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_73
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_79
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_7f
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_ad

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v4, :cond_cc

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v4

    xor-int/lit8 v0, v4, 0x1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-ne v4, v5, :cond_b4

    iget v4, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-lez v4, :cond_b4

    if-nez v0, :cond_a1

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, p1, :cond_b4

    :cond_a1
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_a6
    :goto_a6
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_ad

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    :cond_ad
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_f4

    return-void

    :cond_b4
    if-eqz v0, :cond_a6

    iget-boolean v4, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    if-eqz v4, :cond_a6

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_c6

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v5, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ne v4, v5, :cond_a6

    :cond_c6
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_cc
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-ne v4, v5, :cond_de

    iget v4, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-lez v4, :cond_de

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_de
    iget-boolean v4, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    if-eqz v4, :cond_a6

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_ee

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v5, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ne v4, v5, :cond_a6

    :cond_ee
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_f4
    iget-object v2, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v2, :cond_f9

    return-void

    :cond_f9
    iget v4, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_104

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_103
    :goto_103
    return-void

    :cond_104
    iget v4, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10f

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_103

    :cond_10f
    iget v4, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_11a

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_103

    :cond_11a
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v4, :cond_103

    iget v4, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_103

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v4, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_103
.end method

.method static synthetic lambda$-com_android_server_wm_WindowLayersController_8441(Lcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Assign layer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "mBase="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " mLayer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_56

    const-string/jumbo v1, ""

    :goto_3d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " =mAnimLayer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mAppLayer="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getAnimLayerAdjustment()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d
.end method

.method private logDebugLayers(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    new-instance v0, Lcom/android/server/wm/-$Lambda$rQWNC8oUFFqNI368PlDEO7_YsgQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$Lambda$rQWNC8oUFFqNI368PlDEO7_YsgQ;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private reset()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFreeformReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanel:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDividerClosePanel:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDividerSnapView:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDividerPanelDimLayer:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mCurBaseLayer:I

    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    iput-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAnyLayerChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    :goto_4a
    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    iput-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void

    :cond_54
    move v0, v1

    goto :goto_4a
.end method


# virtual methods
.method final assignWindowLayers(Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Assigning layers based"

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssignWindowLayersConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->adjustSpecialWindows()V

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowLayersController;->mAnyLayerChanged:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onWindowLayersChangedLocked()V

    :cond_3c
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v0, :cond_43

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowLayersController;->logDebugLayers(Lcom/android/server/wm/DisplayContent;)V

    :cond_43
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_WindowLayersController_5495(Lcom/android/server/wm/WindowState;)V
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v3, p0, Lcom/android/server/wm/WindowLayersController;->mCurBaseLayer:I

    if-ne v2, v3, :cond_5b

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    :goto_f
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowLayersController;->assignVirtualScreenLayer(Lcom/android/server/wm/WindowState;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ne v2, v1, :cond_26

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v2, v1, :cond_2a

    :cond_26
    const/4 v0, 0x1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowLayersController;->mAnyLayerChanged:Z

    :cond_2a
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_3a

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    :cond_3a
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_52

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget-object v3, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ne v2, v3, :cond_52

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    :cond_52
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowLayersController;->collectSpecialWindows(Lcom/android/server/wm/WindowState;)V

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->scheduleAnimationIfDimming()V

    :cond_5a
    return-void

    :cond_5b
    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurBaseLayer:I

    goto :goto_f
.end method
