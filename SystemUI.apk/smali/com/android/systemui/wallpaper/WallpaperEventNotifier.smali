.class public Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
.super Ljava/lang/Object;
.source "WallpaperEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;,
        Lcom/android/systemui/wallpaper/WallpaperEventNotifier$2;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;


# instance fields
.field public final BITMAP_SCALE_RATIO:F

.field private final DEBUG:Z

.field private final DOMINANT_COLOR_NUMBER:I

.field private final INDEX_WHITE_BG_KEYGUARD_BODY:I

.field private final INDEX_WHITE_BG_KEYGUARD_NAVIGATION_BAR:I

.field private final INDEX_WHITE_BG_KEYGUARD_STATUS_BAR:I

.field private final MSG_NOTIFY_UPDATED:I

.field private final SATURATION_THRESHOLD:F

.field private final SETTINGS_LOCKSCREEN_WALLPAPER_TRANSPARENT:Ljava/lang/String;

.field private final VALUE_THRESHOLD:F

.field private mAdaptiveColorPreSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/widget/SystemUIWidgetCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurUpdateFlag:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsSkipMessage:Z

.field mIsSupportNavigationBar:Z

.field private mIsThemeApplying:Z

.field mNavigationBarHeight:I

.field private mNeedWhiteBgSettings:Z

.field private mOrgBitmap:Landroid/graphics/Bitmap;

.field final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mWM:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSkipMessage:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNeedWhiteBgSettings:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->clearOrgBitmap()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->notifyUpdate()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setExternalLiveWallpaper()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setInternalLiveWallpaper()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setLockType(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setNotSupportedType(ZZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setWhiteBgSettings(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    iput-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    const/16 v1, 0x2bd

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->MSG_NOTIFY_UPDATED:I

    iput v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/UiOffloadThread;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->SATURATION_THRESHOLD:F

    const v1, 0x3f6147ae    # 0.88f

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->VALUE_THRESHOLD:F

    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->SETTINGS_LOCKSCREEN_WALLPAPER_TRANSPARENT:Ljava/lang/String;

    iput v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->INDEX_WHITE_BG_KEYGUARD_STATUS_BAR:I

    iput v5, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->INDEX_WHITE_BG_KEYGUARD_BODY:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->INDEX_WHITE_BG_KEYGUARD_NAVIGATION_BAR:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DOMINANT_COLOR_NUMBER:I

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->BITMAP_SCALE_RATIO:F

    iput-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mAdaptiveColorPreSet:Ljava/util/HashMap;

    iput-boolean v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    iput-boolean v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSkipMessage:Z

    iput-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    iput-boolean v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNeedWhiteBgSettings:Z

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;-><init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$2;-><init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSupportNavigationBar:Z

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSupportNavigationBar:Z

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNavigationBarHeight:I

    :cond_83
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_adaptive_color"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v5, :cond_a5

    const/4 v0, 0x1

    :goto_9f
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColorMode(Landroid/content/Context;Z)V

    return-void

    :cond_a5
    const/4 v0, 0x0

    goto :goto_9f
.end method

.method private checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;IZ)[Z
    .registers 22

    const/4 v15, 0x3

    new-array v5, v15, [Z

    fill-array-data v5, :array_1da

    if-nez p1, :cond_12

    const-string/jumbo v15, "WallpaperEventNotifier"

    const-string/jumbo v16, "check white wallpaper, bitmap is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_12
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x3

    :try_start_15
    new-array v4, v15, [F

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    move/from16 v2, p2

    move/from16 v0, p2

    if-le v12, v0, :cond_4a

    move/from16 v0, p2

    int-to-float v15, v0

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    :goto_2a
    if-gtz v8, :cond_2d

    const/4 v8, 0x1

    :cond_2d
    const/4 v13, 0x0

    :goto_2e
    if-ge v13, v12, :cond_53

    const/4 v14, 0x0

    :goto_31
    move/from16 v0, p2

    if-ge v14, v0, :cond_51

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v15, 0x1

    aget v15, v4, v15

    add-float/2addr v9, v15

    const/4 v15, 0x2

    aget v15, v4, v15

    add-float/2addr v10, v15

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v14, v8

    goto :goto_31

    :cond_4a
    int-to-float v15, v12

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    goto :goto_2a

    :cond_51
    add-int/2addr v13, v8

    goto :goto_2e

    :cond_53
    int-to-float v15, v6

    div-float v7, v9, v15

    int-to-float v15, v6

    div-float v11, v10, v15

    const-string/jumbo v15, "WallpaperEventNotifier"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "INDEX_WHITE_BG_KEYGUARD_STATUS_BAR sat="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", val="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v15, 0x3e99999a    # 0.3f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_95

    const v15, 0x3f6147ae    # 0.88f

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_95

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput-boolean v15, v5, v16
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_95} :catch_dd

    :cond_95
    :goto_95
    if-eqz p3, :cond_133

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x3

    :try_start_9a
    new-array v4, v15, [F

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    move/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSupportNavigationBar:Z

    if-eqz v15, :cond_b2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNavigationBarHeight:I

    sub-int/2addr v2, v15

    :cond_b2
    sub-int v15, v2, p2

    if-le v12, v15, :cond_e8

    sub-int v15, v2, p2

    int-to-float v15, v15

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    :goto_be
    if-gtz v8, :cond_c1

    const/4 v8, 0x1

    :cond_c1
    const/4 v13, 0x0

    :goto_c2
    if-ge v13, v12, :cond_f1

    move/from16 v14, p2

    :goto_c6
    if-ge v14, v2, :cond_ef

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v15, 0x1

    aget v15, v4, v15

    add-float/2addr v9, v15

    const/4 v15, 0x2

    aget v15, v4, v15
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_d8} :catch_177

    add-float/2addr v10, v15

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v14, v8

    goto :goto_c6

    :catch_dd
    move-exception v1

    const-string/jumbo v15, "WallpaperEventNotifier"

    const-string/jumbo v16, "Exception case of whiteBG solution step1"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :cond_e8
    int-to-float v15, v12

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    goto :goto_be

    :cond_ef
    add-int/2addr v13, v8

    goto :goto_c2

    :cond_f1
    int-to-float v15, v6

    div-float v7, v9, v15

    int-to-float v15, v6

    div-float v11, v10, v15

    :try_start_f7
    const-string/jumbo v15, "WallpaperEventNotifier"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "INDEX_WHITE_BG_KEYGUARD_BODY sat="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", val="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v15, 0x3e99999a    # 0.3f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_133

    const v15, 0x3f6147ae    # 0.88f

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_133

    const/4 v15, 0x1

    const/16 v16, 0x1

    aput-boolean v15, v5, v16
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_133} :catch_177

    :cond_133
    :goto_133
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSupportNavigationBar:Z

    if-eqz v15, :cond_1cd

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x3

    :try_start_13c
    new-array v4, v15, [F

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNavigationBarHeight:I

    sub-int v3, v2, v15

    sub-int v15, v2, v3

    if-le v12, v15, :cond_182

    sub-int v15, v2, v3

    int-to-float v15, v15

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    :goto_159
    if-gtz v8, :cond_15c

    const/4 v8, 0x1

    :cond_15c
    const/4 v13, 0x0

    :goto_15d
    if-ge v13, v12, :cond_18b

    move v14, v3

    :goto_160
    if-ge v14, v2, :cond_189

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v15, 0x1

    aget v15, v4, v15

    add-float/2addr v9, v15

    const/4 v15, 0x2

    aget v15, v4, v15
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_172} :catch_1ce

    add-float/2addr v10, v15

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v14, v8

    goto :goto_160

    :catch_177
    move-exception v1

    const-string/jumbo v15, "WallpaperEventNotifier"

    const-string/jumbo v16, "Exception case of whiteBG solution step2"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_133

    :cond_182
    int-to-float v15, v12

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    goto :goto_159

    :cond_189
    add-int/2addr v13, v8

    goto :goto_15d

    :cond_18b
    int-to-float v15, v6

    div-float v7, v9, v15

    int-to-float v15, v6

    div-float v11, v10, v15

    :try_start_191
    const-string/jumbo v15, "WallpaperEventNotifier"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "INDEX_WHITE_BG_KEYGUARD_NAVIGATION_BAR sat="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", val="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v15, 0x3e99999a    # 0.3f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_1cd

    const v15, 0x3f6147ae    # 0.88f

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_1cd

    const/4 v15, 0x1

    const/16 v16, 0x2

    aput-boolean v15, v5, v16
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1cd} :catch_1ce

    :cond_1cd
    :goto_1cd
    return-object v5

    :catch_1ce
    move-exception v1

    const-string/jumbo v15, "WallpaperEventNotifier"

    const-string/jumbo v16, "Exception case of whiteBG solution step3"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cd

    nop

    :array_1da
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private clearOrgBitmap()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSkipMessage:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNeedWhiteBgSettings:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    :cond_c
    return-void
.end method

.method private getAdaptiveColorPreSet()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_13
    :try_start_13
    array-length v5, v4

    if-ge v3, v5, :cond_61

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;-><init>()V

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    add-int/lit8 v5, v3, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    add-int/lit8 v5, v3, 0x3

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    add-int/lit8 v5, v3, 0x4

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    add-int/lit8 v5, v3, 0x5

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bottom_area:I

    aget-object v5, v4, v3

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_52} :catch_55

    add-int/lit8 v3, v3, 0x6

    goto :goto_13

    :catch_55
    move-exception v2

    const-string/jumbo v5, "WallpaperEventNotifier"

    const-string/jumbo v6, "NumberFormatException!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_61
    return-object v0
.end method

.method private getAdaptiveColors(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .registers 10

    const v6, 0x3d4ccccd    # 0.05f

    const/4 v7, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_c
    const-string/jumbo v5, "WallpaperEventNotifier"

    const-string/jumbo v6, "getAdaptiveColors: bitmap is null or recycled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v4, :cond_22

    if-gtz v0, :cond_2c

    :cond_22
    const-string/jumbo v5, "WallpaperEventNotifier"

    const-string/jumbo v6, "getAdaptiveColors: bitmap is too small"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2c
    int-to-float v5, v4

    mul-float/2addr v5, v6

    float-to-int v3, v5

    if-gtz v3, :cond_32

    move v3, v4

    :cond_32
    int-to-float v5, v0

    mul-float/2addr v5, v6

    float-to-int v2, v5

    if-gtz v2, :cond_38

    move v2, v0

    :cond_38
    const/4 v5, 0x1

    invoke-static {p1, v3, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->getAdaptiveColorFromBitmap(Landroid/graphics/Bitmap;I)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v5

    return-object v5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
    .registers 2

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    :cond_b
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    return-object v0
.end method

.method private notifyUpdate()V
    .registers 5

    const-string/jumbo v2, "WallpaperEventNotifier"

    const-string/jumbo v3, "notify update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIWidgetCallback;

    if-eqz v0, :cond_27

    iget v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    invoke-interface {v0, v2}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(I)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2a
    return-void
.end method

.method private sendUpdateMessage(I)V
    .registers 10

    const/16 v7, 0x2bd

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v2

    :goto_18
    packed-switch p1, :pswitch_data_b4

    const-string/jumbo v4, "WallpaperEventNotifier"

    const-string/jumbo v5, "INIT_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    const-string/jumbo v4, "WallpaperEventNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendUpdateMessage type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " updateFlag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendAdaptiveColorUpdated(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    iput v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_61

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_61
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_67
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v2

    goto :goto_18

    :pswitch_70
    if-eqz v2, :cond_24

    const-string/jumbo v4, "WallpaperEventNotifier"

    const-string/jumbo v5, "WHITE_WPAPER_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    goto :goto_24

    :pswitch_7d
    const-string/jumbo v4, "WallpaperEventNotifier"

    const-string/jumbo v5, "ADAPTIVE_COLOR_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-eqz v2, :cond_8b

    or-int/lit8 v3, v3, 0x4

    :cond_8b
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    goto :goto_24

    :pswitch_92
    const-string/jumbo v4, "WallpaperEventNotifier"

    const-string/jumbo v5, "OPEN_THEME_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_24

    :pswitch_9d
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setInfinityWallpaperAdaptiveColor()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorMode()Z

    move-result v4

    if-eqz v4, :cond_24

    const-string/jumbo v4, "WallpaperEventNotifier"

    const-string/jumbo v5, "ADAPTIVE_COLOR_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    move-object v0, v1

    goto/16 :goto_24

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_70
        :pswitch_7d
        :pswitch_92
        :pswitch_9d
    .end packed-switch
.end method

.method private sendUpdates(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    invoke-interface {p1, v0}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(I)V

    return-void
.end method

.method private setAdaptiveColorMode()V
    .registers 4

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorMode()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v0

    if-eq v0, v1, :cond_1f

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColorMode(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v2

    if-nez v2, :cond_20

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    goto :goto_1f
.end method

.method private setAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .registers 6

    if-eqz p1, :cond_76

    const-string/jumbo v0, "WallpaperEventNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set color main="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", second="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bg_main="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bg_second="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bottom_area:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    if-eqz p1, :cond_72

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    const/4 v3, 0x3

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColors([I)Z

    :cond_72
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColors(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void

    :cond_76
    const-string/jumbo v0, "WallpaperEventNotifier"

    const-string/jumbo v1, "set color null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method private setExternalLiveWallpaper()V
    .registers 3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setExternalLiveWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_2c
    return-void
.end method

.method private setInternalLiveWallpaper()V
    .registers 3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_3a

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isChangedInfinityName(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setInfinityWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_3a
    return-void
.end method

.method private setLockType(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    if-eqz v1, :cond_3c

    return-void

    :cond_18
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3c

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setNotSupportedKWPType()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_3b
    return-void

    :cond_3c
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockType(I)Z

    move-result v1

    if-nez v1, :cond_44

    if-eqz p1, :cond_56

    :cond_44
    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setSupportedKWPType()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    :cond_55
    :goto_55
    return-void

    :cond_56
    const-string/jumbo v1, "WallpaperEventNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lock type was wrong. kwpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method private setNotSupportedType(ZZ)V
    .registers 3

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setEmergencyMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setUltraPowerSavingMode(Z)V

    return-void
.end method

.method private setWhiteBgSettings(Landroid/graphics/Bitmap;)V
    .registers 16

    const/4 v11, 0x3

    new-array v2, v11, [Z

    fill-array-data v2, :array_100

    iget-object v11, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCroppedScaled()F

    move-result v12

    div-float/2addr v11, v12

    float-to-int v0, v11

    iget-object v11, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "lockscreen_wallpaper_transparent"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getOperatorWallpaper()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v9, v11, :cond_2d

    if-eqz v10, :cond_35

    :cond_2d
    const/4 v11, 0x2

    if-ne v9, v11, :cond_f7

    const/4 v1, 0x0

    :goto_31
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;IZ)[Z

    move-result-object v2

    :cond_35
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v8

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v6

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardNavigationBar()Z

    move-result v7

    const/4 v11, 0x0

    aget-boolean v5, v2, v11

    const/4 v11, 0x1

    aget-boolean v3, v2, v11

    const/4 v11, 0x2

    aget-boolean v4, v2, v11

    const-string/jumbo v11, "WallpaperEventNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "oldValStatusBar="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", newValStatusBar="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "WallpaperEventNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "oldValBody="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", newValBody="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "WallpaperEventNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "oldValNaviBar="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", newValNaviBar="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v8, v5, :cond_d1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v12

    if-eqz v5, :cond_fa

    const/4 v11, 0x1

    :goto_ce
    invoke-virtual {v12, v11}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    :cond_d1
    if-eq v6, v3, :cond_e6

    const-string/jumbo v11, "WallpaperEventNotifier"

    const-string/jumbo v12, "oldValBody != newValBody setWhiteKeyguardWallpaper"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v12

    if-eqz v3, :cond_fc

    const/4 v11, 0x1

    :goto_e3
    invoke-virtual {v12, v11}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    :cond_e6
    iget-boolean v11, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSupportNavigationBar:Z

    if-eqz v11, :cond_f6

    if-eq v7, v4, :cond_f6

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v12

    if-eqz v4, :cond_fe

    const/4 v11, 0x1

    :goto_f3
    invoke-virtual {v12, v11}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardNavigationBar(I)V

    :cond_f6
    return-void

    :cond_f7
    const/4 v1, 0x1

    goto/16 :goto_31

    :cond_fa
    const/4 v11, 0x0

    goto :goto_ce

    :cond_fc
    const/4 v11, 0x0

    goto :goto_e3

    :cond_fe
    const/4 v11, 0x0

    goto :goto_f3

    :array_100
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private updateAdaptiveColors(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/wallpaper/-$Lambda$jmvqjhk8K_QakTumzRApbj0_1LU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallpaper/-$Lambda$jmvqjhk8K_QakTumzRApbj0_1LU;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateWallpaperState(IZ)V
    .registers 5

    packed-switch p1, :pswitch_data_1e

    const-string/jumbo v0, "WallpaperEventNotifier"

    const-string/jumbo v1, "Unknown type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void

    :pswitch_d
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setInternalLiveWallpaper()V

    goto :goto_c

    :pswitch_11
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setExternalLiveWallpaper()V

    goto :goto_c

    :pswitch_15
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setLockType(Z)V

    goto :goto_c

    :pswitch_19
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setAdaptiveColorMode()V

    goto :goto_c

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_d
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public getCurUpdateFlag()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    return v0
.end method

.method public init()V
    .registers 5

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v1, :cond_c0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v1

    if-eqz v1, :cond_c0

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setInfinityWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    :cond_28
    :goto_28
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setEmergencyMode(Z)V

    :cond_35
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setUltraPowerSavingMode(Z)V

    :cond_42
    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v1, :cond_f4

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    if-eqz v1, :cond_f4

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_50
    :goto_50
    const-string/jumbo v1, "WallpaperEventNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " init type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", emergency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", upsm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", dex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_db

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setExternalLiveWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    goto/16 :goto_28

    :cond_db
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockType(I)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setSupportedKWPType()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    goto/16 :goto_28

    :cond_f4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_102

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    goto/16 :goto_50

    :cond_102
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    goto/16 :goto_50
.end method

.method synthetic lambda$-com_android_systemui_wallpaper_WallpaperEventNotifier_21882(Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getAdaptiveColors(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSupportAdaptiveColor(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_15
    const-string/jumbo v1, "WallpaperEventNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAdaptiveColors="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bottom_area:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return-void

    :cond_66
    const-string/jumbo v1, "TAG"

    const-string/jumbo v2, "handleUpdateAdaptiveColor color is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65
.end method

.method public registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_36

    const-string/jumbo v1, "WallpaperEventNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Object tried to add another callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_39
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdates(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_20

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1d

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public setInfinityWallpaperAdaptiveColor()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mAdaptiveColorPreSet:Ljava/util/HashMap;

    if-nez v4, :cond_14

    const-string/jumbo v4, "WallpaperEventNotifier"

    const-string/jumbo v5, "setInfinityWallpaperAdaptiveColor mAdaptiveColorPreSet is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getAdaptiveColorPreSet()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mAdaptiveColorPreSet:Ljava/util/HashMap;

    :cond_14
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v3

    if-eqz v3, :cond_4f

    const/4 v0, 0x0

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v4, v2}, Landroid/app/WallpaperManager;->parseInfinityColorInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mAdaptiveColorPreSet:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-object v0

    :cond_42
    const-string/jumbo v4, "WallpaperEventNotifier"

    const-string/jumbo v5, "color info is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    invoke-direct {p0, v6}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-object v6

    :cond_4f
    const-string/jumbo v4, "WallpaperEventNotifier"

    const-string/jumbo v5, "wi is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method public update(ILandroid/graphics/Bitmap;Z)V
    .registers 8

    const/4 v3, 0x1

    const-string/jumbo v0, "WallpaperEventNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " needWhiteBg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "WallpaperEventNotifier"

    const-string/jumbo v1, "skipped update message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSkipMessage:Z

    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNeedWhiteBgSettings:Z

    iput-object p2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_3a
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->updateWallpaperState(IZ)V

    if-eqz p2, :cond_7f

    if-eqz p3, :cond_44

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setWhiteBgSettings(Landroid/graphics/Bitmap;)V

    :cond_44
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->checkIfNotThemeTypeDirectly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_60

    const-string/jumbo v0, "WallpaperEventNotifier"

    const-string/jumbo v1, "updateAdaptiveColors"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->updateAdaptiveColors(Landroid/graphics/Bitmap;)V

    :cond_60
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorMode()Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7b

    :cond_78
    invoke-direct {p0, v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_7b
    :goto_7b
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->clearOrgBitmap()V

    return-void

    :cond_7f
    const-string/jumbo v0, "WallpaperEventNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update bitmap is null type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b
.end method
