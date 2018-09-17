.class public Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;
.super Landroid/widget/FrameLayout;
.source "KeyguardInfinityPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;,
        Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;
    }
.end annotation


# static fields
.field private static final AOD_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.samsung.android.app.aodservice/cache/aod_capture.png"

.field private static final AOD_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.samsung.android.app.aodservice/cache/"

.field private static final DUMMY_HOME_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

.field private static final DUMMY_HOME_PREVIEW_PATH:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/"

.field private static final DUMMY_LOCK_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

.field private static final DUMMY_LOCK_PREVIEW_PATH:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/"

.field private static final HOME_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

.field private static final HOME_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.app.launcher/cache/"

.field private static final LOCK_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

.field private static final LOCK_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/"

.field private static final MODE_AOD:I = 0x1

.field private static final MODE_HOME:I = 0x3

.field private static final MODE_LOCK:I = 0x2

.field private static final MODE_OFF:I = 0x0

.field private static final MSG_GO_NEXT_MODE:I = 0x63

.field private static final ORIGIN_VIEW_HEIGHT:I = 0xb90

.field private static final ORIGIN_VIEW_WIDTH:I = 0x5a0

.field private static final PREVIEW_ROOT:Ljava/lang/String; = "/storage/emulated/"

.field protected static final RES_TYPE_HOME_BG:I = 0x2

.field protected static final RES_TYPE_LOCK_BG:I = 0x1

.field protected static final RES_TYPE_SHAPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardInfinityPreview"

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"


# instance fields
.field private mAodCapturedView:Landroid/widget/ImageView;

.field private mBackgroundView:Landroid/view/ViewGroup;

.field private mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

.field private mColorInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeCapturedView:Landroid/widget/ImageView;

.field private mInfinityWallpaperView:Landroid/view/View;

.field private mIsAodAvailable:Z

.field private mIsChangeHolding:Z

.field private mIsShowing:Z

.field private mLockCapturedView:Landroid/widget/ImageView;

.field private mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

.field private mRootView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mInfinityWallpaperView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsShowing:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsChangeHolding:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goNextMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZZLcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;)V
    .registers 19

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0077

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->addView(Landroid/view/View;)V

    const v1, 0x7f0a0427

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0075

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->getResId(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->getGroupData()[[I

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->getResId(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->getResId(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;-><init>(Landroid/content/Context;I[[IIIZ)V

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    new-instance v1, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/wbgl/IWbglContainer;)V

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mInfinityWallpaperView:Landroid/view/View;

    const v1, 0x7f0a0042

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    const v1, 0x7f0a02fa

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    const v1, 0x7f0a020c

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_f7

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    const/high16 v2, 0x44b40000    # 1440.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    :goto_8d
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    int-to-float v2, p3

    const/high16 v3, 0x44b40000    # 1440.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    int-to-float v2, p4

    const/high16 v3, 0x45390000    # 2960.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_fe

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    const/high16 v2, 0x44b40000    # 1440.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setPivotX(F)V

    :goto_b2
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    int-to-float v2, p3

    const/high16 v3, 0x44b40000    # 1440.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    if-eqz p6, :cond_105

    int-to-float v1, p4

    int-to-float v2, p3

    div-float v10, v1, v2

    const/high16 v1, 0x44b40000    # 1440.0f

    mul-float/2addr v1, v10

    const/high16 v2, 0x45390000    # 2960.0f

    sub-float v8, v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v9, v1, v8

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v2, v9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    int-to-float v2, p3

    const/high16 v3, 0x44b40000    # 1440.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    :goto_e2
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mInfinityWallpaperView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->initBackgroundView()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->initCapturedView()V

    return-void

    :cond_f7
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    goto :goto_8d

    :cond_fe
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_b2

    :cond_105
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    int-to-float v2, p4

    const/high16 v3, 0x45390000    # 2960.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_e2
.end method

.method private goAodMode()V
    .registers 6

    const/4 v4, 0x1

    const-string/jumbo v1, "KeyguardInfinityPreview"

    const-string/jumbo v2, "goAodMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0xce4

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    invoke-interface {v1, v4}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_38

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v1, v4}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(I)V

    iput v4, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    return-void

    nop

    :array_38
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goHomeMode()V
    .registers 12

    const-string/jumbo v8, "KeyguardInfinityPreview"

    const-string/jumbo v9, "goHomeMode()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x8fc

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_c0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_c8

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_d0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v9, 0x2

    aput-object v7, v8, v9

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v8}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_d8

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_e0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_e8

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v8, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v8}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(I)V

    const/4 v8, 0x3

    iput v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    return-void

    nop

    :array_c0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_d0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_d8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_e8
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goLockMode()V
    .registers 9

    const-wide/16 v6, 0x12c

    const/4 v5, 0x2

    const-string/jumbo v2, "KeyguardInfinityPreview"

    const-string/jumbo v3, "goLockMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x8fc

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$5;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_6a

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_3d
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_72

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v2, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v2, v5}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(I)V

    iput v5, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    return-void

    :cond_63
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3d

    :array_6a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_72
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goNextMode()V
    .registers 4

    const-string/jumbo v0, "KeyguardInfinityPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "goNextMode(): mCurrentMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsChangeHolding:Z

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    packed-switch v0, :pswitch_data_3e

    :cond_25
    :goto_25
    return-void

    :pswitch_26
    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goAodMode()V

    goto :goto_25

    :cond_2e
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goLockMode()V

    goto :goto_25

    :pswitch_32
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goLockMode()V

    goto :goto_25

    :pswitch_36
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goHomeMode()V

    goto :goto_25

    :pswitch_3a
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goOffMode()V

    goto :goto_25

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_32
        :pswitch_36
        :pswitch_3a
    .end packed-switch
.end method

.method private goOffMode()V
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v1, "KeyguardInfinityPreview"

    const-string/jumbo v2, "goOffMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x258

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v1, v4}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(I)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    invoke-interface {v1, v4}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$4;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private holdChangeMode(J)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsChangeHolding:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initBackgroundView()V
    .registers 3

    const-string/jumbo v0, "KeyguardInfinityPreview"

    const-string/jumbo v1, "initBackgroundView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mInfinityWallpaperView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initCapturedView()V
    .registers 18

    const-string/jumbo v14, "KeyguardInfinityPreview"

    const-string/jumbo v15, "initCapturedView()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/com.samsung.android.app.aodservice/cache/aod_capture.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_d0

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3c
    if-eqz v1, :cond_4b

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v2, v14, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4b
    const/4 v11, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_f3

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_7e
    if-eqz v11, :cond_8d

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8d
    const/4 v7, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_13c

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_c0
    if-eqz v7, :cond_cf

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v8, v14, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_cf
    return-void

    :cond_d0
    const-string/jumbo v14, "KeyguardInfinityPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    :cond_f3
    const-string/jumbo v14, "KeyguardInfinityPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_114
    const-string/jumbo v14, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_12e
    .catch Ljava/io/FileNotFoundException; {:try_start_114 .. :try_end_12e} :catch_130
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_12e} :catch_136

    goto/16 :goto_7e

    :catch_130
    move-exception v5

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_7e

    :catch_136
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7e

    :cond_13c
    const-string/jumbo v14, "KeyguardInfinityPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_15d
    const-string/jumbo v14, "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_177
    .catch Ljava/io/FileNotFoundException; {:try_start_15d .. :try_end_177} :catch_179
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_177} :catch_17f

    goto/16 :goto_c0

    :catch_179
    move-exception v5

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_c0

    :catch_17f
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c0
.end method

.method private isRTL()Z
    .registers 3

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method


# virtual methods
.method protected getGroupData()[[I
    .registers 3

    const-string/jumbo v0, "gold"

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/systemui/infinity/InfinityWallpaperGold;->getGroupData()[[I

    move-result-object v0

    return-object v0

    :cond_10
    const-string/jumbo v0, "blue"

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/systemui/infinity/InfinityWallpaperBlue;->getGroupData()[[I

    move-result-object v0

    return-object v0

    :cond_20
    const-string/jumbo v0, "orchid"

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/systemui/infinity/InfinityWallpaperOrchid;->getGroupData()[[I

    move-result-object v0

    return-object v0

    :cond_30
    const-string/jumbo v0, "purple"

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/android/systemui/infinity/InfinityWallpaperPurple;->getGroupData()[[I

    move-result-object v0

    return-object v0

    :cond_40
    invoke-static {}, Lcom/android/systemui/infinity/InfinityWallpaperBlack;->getGroupData()[[I

    move-result-object v0

    return-object v0
.end method

.method protected getResId(I)I
    .registers 4

    const-string/jumbo v0, "gold"

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/android/systemui/infinity/InfinityWallpaperGold;->getResId(I)I

    move-result v0

    return v0

    :cond_10
    const-string/jumbo v0, "blue"

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Lcom/android/systemui/infinity/InfinityWallpaperBlue;->getResId(I)I

    move-result v0

    return v0

    :cond_20
    const-string/jumbo v0, "orchid"

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p1}, Lcom/android/systemui/infinity/InfinityWallpaperOrchid;->getResId(I)I

    move-result v0

    return v0

    :cond_30
    const-string/jumbo v0, "purple"

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {p1}, Lcom/android/systemui/infinity/InfinityWallpaperPurple;->getResId(I)I

    move-result v0

    return v0

    :cond_40
    invoke-static {p1}, Lcom/android/systemui/infinity/InfinityWallpaperBlack;->getResId(I)I

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 4

    const/16 v2, 0x63

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->onVisibilityChanged(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsShowing:Z

    const-string/jumbo v0, "KeyguardInfinityPreview"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_20
    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v1, 0x1

    const/16 v2, 0x63

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->onVisibilityChanged(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsShowing:Z

    const-string/jumbo v0, "KeyguardInfinityPreview"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_20
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public reset()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-string/jumbo v0, "KeyguardInfinityPreview"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mMainContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v0, v4}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->setAlpha(F)V

    return-void
.end method

.method public setIsAodAvailable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    return-void
.end method
