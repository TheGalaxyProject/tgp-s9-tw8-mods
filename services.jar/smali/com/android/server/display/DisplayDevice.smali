.class abstract Lcom/android/server/display/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# instance fields
.field private mCurrentDisplayRect:Landroid/graphics/Rect;

.field private mCurrentLayerStack:I

.field private mCurrentLayerStackRect:Landroid/graphics/Rect;

.field private mCurrentOrientation:I

.field private mCurrentSurface:Landroid/view/Surface;

.field mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

.field private final mDisplayToken:Landroid/os/IBinder;

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    iput v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .registers 1

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentLayerStackRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDisplayRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getAdapterLocked()Lcom/android/server/display/DisplayAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayAdapter:Lcom/android/server/display/DisplayAdapter;

    return-object v0
.end method

.method public abstract getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
.end method

.method public final getDisplaySurfaceLocked()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public final getDisplayTokenLocked()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getNameLocked()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract hasStableUniqueId()Z
.end method

.method public performTraversalInTransactionLocked()V
    .registers 1

    return-void
.end method

.method public final populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V
    .registers 6

    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iput v2, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    iget-object v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_36

    iget-object v2, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_f
    iget-object v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_3c

    iget-object v2, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1a
    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_42

    iget v2, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_44

    const/4 v1, 0x1

    :goto_25
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    if-eqz v1, :cond_46

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_2d
    iput v2, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    if-eqz v1, :cond_49

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_33
    iput v2, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    return-void

    :cond_36
    iget-object v2, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_f

    :cond_3c
    iget-object v2, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1a

    :cond_42
    const/4 v1, 0x1

    goto :goto_25

    :cond_44
    const/4 v1, 0x0

    goto :goto_25

    :cond_46
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_2d

    :cond_49
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_33
.end method

.method public requestDisplayModesInTransactionLocked(II)V
    .registers 3

    return-void
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setLayerStackInTransactionLocked(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    if-eq v0, p1, :cond_b

    iput p1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setDisplayLayerStack(Landroid/os/IBinder;I)V

    :cond_b
    return-void
.end method

.method public final setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    if-ne v0, p1, :cond_8

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-nez v0, :cond_30

    :cond_8
    :goto_8
    iput p1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-nez v0, :cond_15

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    :cond_15
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-nez v0, :cond_25

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    :cond_25
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    goto :goto_8
.end method

.method public final setSurfaceInTransactionLocked(Landroid/view/Surface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_b

    iput-object p1, p0, Lcom/android/server/display/DisplayDevice;->mCurrentSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V

    :cond_b
    return-void
.end method
