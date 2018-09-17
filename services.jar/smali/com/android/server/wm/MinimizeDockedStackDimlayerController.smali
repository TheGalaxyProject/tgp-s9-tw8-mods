.class public Lcom/android/server/wm/MinimizeDockedStackDimlayerController;
.super Ljava/lang/Object;
.source "MinimizeDockedStackDimlayerController.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# instance fields
.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private initiate()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    const-string/jumbo v3, "MinimizeDockedStackDimlayer"

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    return-void
.end method


# virtual methods
.method public animateForMinimizeDimlayer()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_30

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_30

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    :cond_30
    return-void
.end method

.method public dimFullscreen()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method getMinimizeDimLayer()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v1, v1, -0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public isAttachedToDisplay()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setMinimizeDimLayer(ZIF)V
    .registers 12

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-nez v3, :cond_14

    invoke-direct {p0}, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->initiate()V

    :cond_14
    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz p1, :cond_61

    if-eqz v1, :cond_61

    if-eqz v0, :cond_61

    const/4 v2, 0x1

    :goto_27
    if-eqz v2, :cond_50

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_63

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_63

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v5, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {p0}, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->getMinimizeDimLayer()I

    move-result v5

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, p3, v6, v7}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    :cond_50
    :goto_50
    if-nez v2, :cond_57

    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->hide()V

    :cond_57
    iget-object v3, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_65

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_61
    const/4 v2, 0x0

    goto :goto_27

    :cond_63
    const/4 v2, 0x0

    goto :goto_50

    :catchall_65
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateMinimizeDimlayer()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {p0}, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->getMinimizeDimLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    :cond_15
    return-void
.end method
