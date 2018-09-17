.class public Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;
.super Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;,
        Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;,
        Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAngularSum:F

.field private mAnimatedAngularSum:F

.field private mAsyncTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapListInitFinished:Z

.field private mBlendingPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCroppedScale:F

.field private mDeltaOfAngularSum:F

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mInterruptedGyro:Landroid/hardware/Sensor;

.field private mIsPreview:Z

.field private mIsSensorRegistered:Z

.field private mLastBottom:I

.field private mLastParsedPackage:Ljava/lang/String;

.field private mLastParsedXml:I

.field private mLastRight:I

.field private mMotionBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgContext:Landroid/content/Context;

.field private mPkgName:Ljava/lang/String;

.field private mPrevAngularSum:F

.field private mPrevAnimatedAngularSum:F

.field private mPrevStartAngularSum:F

.field private mRangeOfRotation:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimestamp:F

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mXmlName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F
    .registers 2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F
    .registers 2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F
    .registers 2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsPreview:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F
    .registers 2

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F
    .registers 2

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;[F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->handleInvalidate([F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .registers 11

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsPreview:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsPreview:Z

    if-nez v0, :cond_86

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_86
    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V

    return-void
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 15

    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "cropBitmap"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_11
    const/4 v9, 0x0

    return-object v9

    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    int-to-float v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    mul-int/2addr v9, v8

    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    mul-int/2addr v10, v3

    if-le v9, v10, :cond_87

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    :goto_3a
    iput v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mCroppedScale:F

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v7, v9, v4

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v2, v9, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float v5, v0, v9

    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-gez v9, :cond_58

    const/4 v5, 0x0

    :cond_58
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v2, v9

    sub-float v6, v1, v9

    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_64

    const/4 v6, 0x0

    :cond_64
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_91

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_91

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v8, v9, :cond_91

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v3, v9, :cond_91

    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "It doesn\'t need to crop bitmap"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_87
    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    goto :goto_3a

    :cond_91
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_9f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_aa

    :cond_9f
    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "Math.round(width) < 1 || Math.round(height) < 1 || mMetricsWidth < 1 || mMetricsHeight < 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_aa
    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_9f

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_9f

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-gt v9, v8, :cond_ca

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-le v9, v3, :cond_d5

    :cond_ca
    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "Calculated crop size error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_d5
    const-string/jumbo v9, "KeyguardMotionWallpaper"

    const-string/jumbo v10, "Cropping..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {p1, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9
.end method

.method private handleInvalidate([F)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v1, p1, v3

    aget v0, p1, v4

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    invoke-direct {p0, v1, v0, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-direct {p0, v1, v0, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    goto :goto_1a
.end method

.method private init()V
    .registers 14

    const-string/jumbo v10, "KeyguardMotionWallpaper"

    const-string/jumbo v11, "init()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1f

    :cond_15
    const-string/jumbo v10, "KeyguardMotionWallpaper"

    const-string/jumbo v11, "mMotionBitmapList == null || mMotionBitmapList.size() == 0"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v9, :cond_43

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v10

    if-nez v10, :cond_40

    const-string/jumbo v10, "KeyguardMotionWallpaper"

    const-string/jumbo v11, "bitmapLoaded == false"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_43
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mStatusBarHeight:I

    if-ne v10, v11, :cond_52

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastRight:I

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastBottom:I

    return-void

    :cond_52
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPaddingRight:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    if-eqz v10, :cond_72

    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    if-nez v10, :cond_7c

    :cond_72
    const-string/jumbo v10, "KeyguardMotionWallpaper"

    const-string/jumbo v11, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7c
    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x1e

    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    const-string/jumbo v10, "KeyguardMotionWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mRangeOfRotation = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    const/4 v4, 0x0

    :goto_af
    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_140

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    mul-int/2addr v11, v0

    if-le v10, v11, :cond_136

    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    int-to-float v10, v10

    int-to-float v11, v0

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v8, v10, v11

    :goto_ea
    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    int-to-float v10, v10

    int-to-float v11, v1

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v2, v10, v11

    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    int-to-float v10, v10

    int-to-float v11, v0

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v3, v10, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v7, v8

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    int-to-float v11, v5

    int-to-float v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v10}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->init()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_af

    :cond_136
    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    int-to-float v10, v10

    int-to-float v11, v1

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v8, v10, v11

    goto :goto_ea

    :cond_140
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->invalidate()V

    return-void
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v0, 0x0

    :goto_6
    const/4 v4, 0x1

    if-eq v1, v4, :cond_6c

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_6e

    :cond_d
    :goto_d
    :pswitch_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_6

    :pswitch_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d

    :pswitch_1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    goto :goto_d

    :cond_2f
    if-eqz v0, :cond_d

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setType(I)V

    goto :goto_d

    :cond_46
    const-string/jumbo v4, "id_path_image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setPath(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string/jumbo v4, "layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v0, :cond_d

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_6c
    return-object v2

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_d
        :pswitch_1c
        :pswitch_57
    .end packed-switch
.end method

.method private registerSensor()V
    .registers 4

    const/4 v2, 0x1

    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "registerSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return-void
.end method

.method private startAlphaAnimator(FFZ)V
    .registers 8

    const-string/jumbo v1, "KeyguardMotionWallpaper"

    const-string/jumbo v2, "mAlphaAnimator starts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4b

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    :goto_13
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_50

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4b
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    goto :goto_13

    :array_50
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private unregisterSensor()V
    .registers 3

    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "unregisterSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return-void
.end method

.method private updateWallpaper()V
    .registers 4

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 6

    const-string/jumbo v2, "KeyguardMotionWallpaper"

    const-string/jumbo v3, "cleanUp"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string/jumbo v2, "KeyguardMotionWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAsyncTaskList size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v1, :cond_40

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_40
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_45
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->recycleBitmap()V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_15
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const-string/jumbo v3, "KeyguardMotionWallpaper"

    const-string/jumbo v4, "onDraw()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1f

    :cond_15
    const-string/jumbo v3, "KeyguardMotionWallpaper"

    const-string/jumbo v4, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v2, :cond_43

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "KeyguardMotionWallpaper"

    const-string/jumbo v4, "bitmapLoaded == false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    :goto_47
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8e

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_8e
    const/4 v1, 0x0

    :goto_8f
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_d8

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v3

    if-nez v3, :cond_d5

    if-eqz v0, :cond_d5

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_d5
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    :cond_d8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onLayout(ZIIII)V

    if-eqz p1, :cond_41

    if-eqz p4, :cond_41

    if-eqz p5, :cond_41

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_41

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_15

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastBottom:I

    if-eq v0, p5, :cond_41

    :cond_15
    const-string/jumbo v0, "KeyguardMotionWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout called init() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastRight:I

    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastBottom:I

    :cond_41
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onPause()V

    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_13
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onResume()V

    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->registerSensor()V

    :cond_13
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_cc

    :goto_c
    return-void

    :pswitch_d
    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_c4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v6, v9

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v6, v8

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v6, v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_38

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_42

    :cond_38
    const-string/jumbo v6, "KeyguardMotionWallpaper"

    const-string/jumbo v7, "axisY is not biggest, stop animation"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iput v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    new-array v0, v10, [F

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    aput v6, v0, v9

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    aput v6, v0, v8

    const/4 v4, 0x0

    :goto_61
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_c4

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setPrevAlpha(I)V

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPrevAlpha()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v7

    if-eq v6, v7, :cond_b1

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    const/high16 v7, 0x40400000    # 3.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b8

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_b4

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_b1

    const-string/jumbo v6, "KeyguardMotionWallpaper"

    const-string/jumbo v7, "mAlphaAnimator isRunning"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b1
    :goto_b1
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_b4
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->invalidate()V

    goto :goto_b1

    :cond_b8
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b1

    :cond_c4
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v6, v6

    iput v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    goto/16 :goto_c

    nop

    :pswitch_data_cc
    .packed-switch 0x1002b
        :pswitch_d
    .end packed-switch
.end method

.method public onUnlock()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onUnlock()V

    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "onUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mResumed:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_17
    return-void
.end method

.method public recycleBitmap()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2e

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_27
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    :cond_2e
    return-void
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->reset()V

    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mResumed:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->registerSensor()V

    :cond_19
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method public update()V
    .registers 3

    const-string/jumbo v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V

    return-void
.end method
