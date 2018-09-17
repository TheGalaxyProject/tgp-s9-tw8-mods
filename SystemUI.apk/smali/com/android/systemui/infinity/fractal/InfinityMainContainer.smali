.class public Lcom/android/systemui/infinity/fractal/InfinityMainContainer;
.super Ljava/lang/Object;
.source "InfinityMainContainer.java"

# interfaces
.implements Lcom/android/systemui/infinity/wbgl/IWbglContainer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

.field private mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

.field private mFlickDetector:Lcom/android/systemui/infinity/fractal/FlickDetector;

.field private mForceDraw:Z

.field private mGroupData:[[I

.field private mHeight:I

.field private mHomeBgResId:I

.field private mHomeSensorEnabled:Z

.field private mInitialized:Z

.field private mIsPreview:Z

.field private mIsVisible:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockBgResId:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMode:I

.field private mPendingModeChange:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mShapeDataResId:I

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mTiltDetector:Lcom/android/systemui/infinity/fractal/TiltDetector;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[[I)V
    .registers 11

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;-><init>(Landroid/content/Context;I[[IIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[[III)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;-><init>(Landroid/content/Context;I[[IIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[[IIIZ)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mIsVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mIsPreview:Z

    iput v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    iput-boolean v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mPendingModeChange:Z

    iput-boolean v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mForceDraw:Z

    iput-boolean v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mInitialized:Z

    iput-boolean v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    iput v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mWidth:I

    iput v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHeight:I

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-boolean p6, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mIsPreview:Z

    iput p2, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mShapeDataResId:I

    iput-object p3, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mGroupData:[[I

    iput p4, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mLockBgResId:I

    iput p5, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHomeBgResId:I

    return-void
.end method

.method private changeMode()V
    .registers 5

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    if-nez v0, :cond_b

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    :goto_a
    return-void

    :cond_b
    iget v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    if-ne v0, v1, :cond_13

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_a

    :cond_13
    iget v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    if-ne v0, v3, :cond_1c

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_a

    :cond_1c
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_a
.end method

.method private getHomeSensorEnabled()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "infinity_motion_effect"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method private initMode()V
    .registers 5

    const/4 v3, 0x3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    :goto_2e
    return-void

    :cond_2f
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_2e

    :cond_33
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_2e

    :cond_37
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_2e

    :cond_3b
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    goto :goto_2e
.end method


# virtual methods
.method public changeMode(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(IZ)V

    return-void
.end method

.method public changeMode(IZ)V
    .registers 5

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    iget v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->resetShapeData()V

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->changeMode(IZ)V

    iput-boolean v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mPendingModeChange:Z

    :goto_15
    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->updateSensors()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mPendingModeChange:Z

    goto :goto_15
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementData;->clear()V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->clear()V

    :cond_12
    return-void
.end method

.method public initObjects(II)V
    .registers 12

    const/4 v8, 0x1

    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "main object init start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    if-nez v0, :cond_86

    new-instance v0, Lcom/android/systemui/infinity/fractal/ElementData;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mShapeDataResId:I

    iget-object v5, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mGroupData:[[I

    iget v6, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mLockBgResId:I

    iget v7, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHomeBgResId:I

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/infinity/fractal/ElementData;-><init>(Landroid/content/Context;III[[III)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    :goto_21
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    if-nez v0, :cond_30

    new-instance v0, Lcom/android/systemui/infinity/fractal/ElementAnimator;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/infinity/fractal/ElementAnimator;-><init>(Landroid/opengl/GLSurfaceView;Lcom/android/systemui/infinity/fractal/ElementData;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    :cond_30
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mFlickDetector:Lcom/android/systemui/infinity/fractal/FlickDetector;

    if-nez v0, :cond_8c

    new-instance v0, Lcom/android/systemui/infinity/fractal/FlickDetector;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/fractal/FlickDetector;-><init>(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mFlickDetector:Lcom/android/systemui/infinity/fractal/FlickDetector;

    :goto_3d
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mTiltDetector:Lcom/android/systemui/infinity/fractal/TiltDetector;

    if-nez v0, :cond_94

    new-instance v0, Lcom/android/systemui/infinity/fractal/TiltDetector;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/infinity/fractal/TiltDetector;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/fractal/ElementAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mTiltDetector:Lcom/android/systemui/infinity/fractal/TiltDetector;

    :goto_4c
    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mIsPreview:Z

    if-eqz v0, :cond_7a

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mPendingModeChange:Z

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mode change was pending. So change mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mPendingModeChange:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->changeMode(IZ)V

    :cond_7a
    iput-boolean v8, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mInitialized:Z

    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "main object init finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_86
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/infinity/fractal/ElementData;->updateScreenSize(II)V

    goto :goto_21

    :cond_8c
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mFlickDetector:Lcom/android/systemui/infinity/fractal/FlickDetector;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/FlickDetector;->setAnimator(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V

    goto :goto_3d

    :cond_94
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mTiltDetector:Lcom/android/systemui/infinity/fractal/TiltDetector;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/TiltDetector;->pause()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mTiltDetector:Lcom/android/systemui/infinity/fractal/TiltDetector;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/TiltDetector;->setAnimator(Lcom/android/systemui/infinity/fractal/ElementAnimator;)V

    goto :goto_4c
.end method

.method public isDeviceProvisionedInSettingsDb()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mForceDraw:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mIsVisible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    return-void

    :cond_12
    iput-boolean v1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mForceDraw:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementData;->drawElements()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->onDrawElementFinished()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7

    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceChanged w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->updateSize(II)V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->updateSensors()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mIsVisible:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    if-eqz v0, :cond_16

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mFlickDetector:Lcom/android/systemui/infinity/fractal/FlickDetector;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mFlickDetector:Lcom/android/systemui/infinity/fractal/FlickDetector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/fractal/FlickDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onVisibilityChanged(I)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->onVisibilityChanged(Z)V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->onVisibilityChanged(Z)V

    goto :goto_7
.end method

.method public onVisibilityChanged(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mIsVisible:Z

    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->updateSensors()V

    if-nez p1, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->endAllAnimations()V

    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public resetShapeData()V
    .registers 3

    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "resetShapeData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementData;->resetShapeData()V

    :cond_12
    return-void
.end method

.method public setAodBgOff()V
    .registers 3

    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "setAodBgOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->setAodBgOff()V

    :cond_12
    return-void
.end method

.method public setSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public updateSensors()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mTiltDetector:Lcom/android/systemui/infinity/fractal/TiltDetector;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->getHomeSensorEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensors() mHomeSensorEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mIsVisible:Z

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHomeSensorEnabled:Z

    if-eqz v0, :cond_3a

    :cond_34
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mTiltDetector:Lcom/android/systemui/infinity/fractal/TiltDetector;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/TiltDetector;->resume()V

    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mTiltDetector:Lcom/android/systemui/infinity/fractal/TiltDetector;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/TiltDetector;->pause()V

    goto :goto_39
.end method

.method public updateSize(II)V
    .registers 6

    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize ow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InfinityWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize nw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", nh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mInitialized:Z

    if-eqz v0, :cond_5b

    iget v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mWidth:I

    if-ne v0, p1, :cond_5b

    iget v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHeight:I

    if-ne v0, p2, :cond_5b

    return-void

    :cond_5b
    iput p1, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mWidth:I

    iput p2, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mForceDraw:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->initObjects(II)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mIsPreview:Z

    if-nez v0, :cond_6c

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->initMode()V

    :cond_6c
    return-void
.end method

.method public wakeAod()V
    .registers 3

    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "wakeAod"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementAnimator:Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->getCurrentAnimationType()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mElementData:Lcom/android/systemui/infinity/fractal/ElementData;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/ElementData;->wakeAod()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_1f
    return-void
.end method
