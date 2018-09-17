.class public Lcom/android/systemui/keyguard/ViewCaptureUtil;
.super Ljava/lang/Object;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private final DEX_FILE_NAME:Ljava/lang/String;

.field private final LAND_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

.field private final S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

.field private mAm:Landroid/app/ActivityManager;

.field private mCaptureOrientation:I

.field private mClockBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private final mHazardActivity:[Ljava/lang/String;

.field private mIsCovered:Z

.field private mIsDeskMode:Z

.field private mLeftBitmap:Landroid/graphics/Bitmap;

.field private mLeftOfLeft:I

.field private mLeftOfRight:I

.field private mLockStarBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLockStarBitmapToPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "[I>;"
        }
    .end annotation
.end field

.field private mMobileKeyboardIsCovered:Z

.field private mNewCapture:Z

.field private final mPerformanceFirstActivity:[Ljava/lang/String;

.field private mRightBitmap:Landroid/graphics/Bitmap;

.field private mRootHeight:I

.field private mRootWidth:I

.field private mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

.field private mTopOfClock:I

.field private mTopOfLeft:I

.field private mTopOfRight:I

.field private final mWallpaperActivity:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/app/ActivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mAm:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/keyguard/ViewCaptureUtil;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCaptureOrientation:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mWallpaperActivity:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mHazardActivity:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mPerformanceFirstActivity:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/keyguard/ViewCaptureUtil;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->arrangeComponents(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/content/Context;Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->arrangeLockStarComponents(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->clearCaptures()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "lockscreen_capture_port.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME:Ljava/lang/String;

    const-string/jumbo v1, "lockscreen_capture_land.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LAND_FILE_NAME:Ljava/lang/String;

    const-string/jumbo v1, "lockscreen_capture_port_keyboard.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

    const-string/jumbo v1, "s_view_cover_capture.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

    const-string/jumbo v1, "lockscreen_capture_dex.png"

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->DEX_FILE_NAME:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsDeskMode:Z

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.sec.android.gallery3d"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.sec.android.app.wallpaperchooser.WallpaperPickerFromSettings"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.android.systemui.wallpaper.KeyguardWallpaperPreviewActivity"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.settings.SubSettings"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.wallpapercropper2.SViewCoverCropActivity"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.themestore"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.wallpaperchooser.WallpaperGridActivity"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.documentsui.FilesActivity"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mWallpaperActivity:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "com.sec.android.app.myfiles.common.MainActivity"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.sec.android.gallery3d.app.GalleryActivity"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mHazardActivity:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "com.sec.android.gallery3d"

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mPerformanceFirstActivity:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapToPosMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mAm:Landroid/app/ActivityManager;

    new-instance v1, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;-><init>(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    :try_start_9d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a6} :catch_a7

    :goto_a6
    return-void

    :catch_a7
    move-exception v0

    goto :goto_a6
.end method

.method private arrangeComponents(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v6, 0x0

    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    if-lez v3, :cond_9

    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    if-gtz v3, :cond_13

    :cond_9
    const-string/jumbo v3, "ViewCaptureUtil"

    const-string/jumbo v4, "root view is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_13
    if-nez p2, :cond_1f

    const-string/jumbo v3, "ViewCaptureUtil"

    const-string/jumbo v4, "clockBmp is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1f
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    int-to-float v3, v2

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfClock:I

    int-to-float v4, v4

    invoke-virtual {v1, p2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_4e

    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfLeft:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4e
    if-eqz p4, :cond_59

    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfRight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfRight:I

    int-to-float v4, v4

    invoke-virtual {v1, p4, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_59
    return-object v0
.end method

.method private arrangeLockStarComponents(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    if-lez v6, :cond_a

    iget v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    if-gtz v6, :cond_14

    :cond_a
    const-string/jumbo v6, "ViewCaptureUtil"

    const-string/jumbo v7, "root view is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_14
    if-nez p2, :cond_20

    const-string/jumbo v6, "ViewCaptureUtil"

    const-string/jumbo v7, "Lockstar ItemList is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_20
    iget v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    iget v7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_33

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapToPosMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v4, v6, v10

    iget-object v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapToPosMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/4 v7, 0x1

    aget v5, v6, v7

    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {v3, v0, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_33

    :cond_5c
    return-object v2
.end method

.method private clearCaptures()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_11

    :cond_23
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapToPosMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    :cond_39
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    :cond_44
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    goto :goto_2d
.end method

.method private getCoverState()V
    .registers 1

    return-void
.end method

.method private getViewLocation(Landroid/view/View;)[I
    .registers 5

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_15
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;I)V
    .registers 6

    if-nez p1, :cond_c

    const-string/jumbo v1, "ViewCaptureUtil"

    const-string/jumbo v2, "bmp is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v1, :cond_17

    const-string/jumbo v0, "s_view_cover_capture.png"

    :goto_13
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void

    :cond_17
    packed-switch p2, :pswitch_data_3e

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v1, :cond_3a

    const-string/jumbo v0, "lockscreen_capture_port_keyboard.png"

    goto :goto_13

    :pswitch_22
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsDeskMode:Z

    if-eqz v1, :cond_2a

    const-string/jumbo v0, "lockscreen_capture_dex.png"

    goto :goto_13

    :cond_2a
    const-string/jumbo v0, "lockscreen_capture_land.png"

    goto :goto_13

    :pswitch_2e
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v1, :cond_36

    const-string/jumbo v0, "lockscreen_capture_port_keyboard.png"

    goto :goto_13

    :cond_36
    const-string/jumbo v0, "lockscreen_capture_port.png"

    goto :goto_13

    :cond_3a
    const-string/jumbo v0, "lockscreen_capture_port.png"

    goto :goto_13

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_22
    .end packed-switch
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_c

    const-string/jumbo v4, "ViewCaptureUtil"

    const-string/jumbo v5, "bmp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v2, 0x0

    :try_start_d
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x4000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_3c
    .catchall {:try_start_d .. :try_end_24} :catchall_4a

    :try_start_24
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    const-string/jumbo v4, "ViewCaptureUtil"

    const-string/jumbo v5, "save captured file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_37} :catch_52
    .catchall {:try_start_24 .. :try_end_37} :catchall_4f

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    const-string/jumbo v4, "ViewCaptureUtil"

    const-string/jumbo v5, "saveScreenshot exception : "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_4a

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3b

    :catchall_4a
    move-exception v4

    :goto_4b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    :catchall_4f
    move-exception v4

    move-object v2, v3

    goto :goto_4b

    :catch_52
    move-exception v0

    move-object v2, v3

    goto :goto_3d
.end method

.method private viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1e

    :cond_14
    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "view is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v2, :cond_63

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz p2, :cond_51

    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "scale clock view area for S View Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {v1, v6, v6, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_51
    :goto_51
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCaptureOrientation:I

    return-object v0

    :cond_63
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    goto :goto_51
.end method


# virtual methods
.method public captureLockStarScreen(Ljava/util/ArrayList;ZII)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;ZII)V"
        }
    .end annotation

    const/4 v8, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getCoverState()V

    :cond_a
    if-nez p1, :cond_16

    const-string/jumbo v5, "ViewCaptureUtil"

    const-string/jumbo v6, "Lockstar Itemlist null, stop capturing"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    :try_start_16
    const-string/jumbo v5, "ViewCaptureUtil"

    const-string/jumbo v6, "Capture Lockstar screen"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapToPosMap:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_89

    const/4 v5, 0x2

    new-array v4, v5, [I

    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLockStarBitmapToPosMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_54} :catch_55

    goto :goto_31

    :catch_55
    move-exception v1

    const-string/jumbo v5, "ViewCaptureUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "OutOfMemoryError: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->clearCaptures()V

    iput-boolean v8, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    :goto_88
    return-void

    :cond_89
    :try_start_89
    const-string/jumbo v5, "ViewCaptureUtil"

    const-string/jumbo v6, "LockStar component is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_93
    iput p4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    iput p3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z
    :try_end_9a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_89 .. :try_end_9a} :catch_55

    goto :goto_88
.end method

.method public captureScreen(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZII)V
    .registers 14

    const/4 v5, 0x0

    iput-boolean p4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getCoverState()V

    :cond_a
    if-nez p1, :cond_16

    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "clockView null, stop capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    :try_start_16
    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "Capture the lockscreen"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfClock:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_75

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_75

    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getViewLocation(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfLeft:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfLeft:I

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    :goto_4e
    if-eqz p3, :cond_b6

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b6

    invoke-direct {p0, p3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getViewLocation(Landroid/view/View;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfRight:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfRight:I

    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    :goto_6b
    iput p7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    iput p6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    iput-boolean p5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsDeskMode:Z

    :goto_74
    return-void

    :cond_75
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "left shortcut is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_81} :catch_82

    goto :goto_4e

    :catch_82
    move-exception v0

    const-string/jumbo v2, "ViewCaptureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->clearCaptures()V

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    goto :goto_74

    :cond_b6
    const/4 v2, 0x0

    :try_start_b7
    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v2, "ViewCaptureUtil"

    const-string/jumbo v3, "right shortcut is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b7 .. :try_end_c2} :catch_82

    goto :goto_6b
.end method

.method public invalidateCaptured()V
    .registers 3

    const-string/jumbo v0, "ViewCaptureUtil"

    const-string/jumbo v1, "Invalidated captured bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    return-void
.end method
