.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v0, v3, [I

    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 28

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v6

    if-gtz v6, :cond_2c

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return-void

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v5, -0x1

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v15

    mul-int/lit16 v0, v15, 0xa0

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v12, v0, 0x140

    int-to-float v0, v12

    move/from16 v22, v0

    int-to-float v0, v6

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3fc00000    # 1.5f

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const v16, 0x3f59999a    # 0.85f

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v13, v22

    const v23, 0x3db851ec    # 0.09f

    div-float v22, v22, v23

    const/16 v23, 0x0

    sget-object v24, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v22, 0x0

    sget-object v23, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3fd55553

    move/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    add-int/lit8 v22, v19, 0x1

    add-int v22, v22, v18

    move/from16 v0, v22

    new-array v9, v0, [Ljava/lang/String;

    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/4 v3, 0x0

    if-lez v19, :cond_fd

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3e199998    # 0.14999998f

    div-float v11, v23, v22

    add-int/lit8 v10, v19, -0x1

    :goto_ca
    if-ltz v10, :cond_fd

    int-to-float v0, v6

    move/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v11

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v23, v24, v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    and-int/lit8 v7, v22, -0x2

    if-ne v4, v7, :cond_e8

    move v5, v3

    :cond_e8
    sget-object v22, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v22, v22, v10

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    aput v7, v21, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_ca

    :cond_fd
    if-ne v4, v6, :cond_100

    move v5, v3

    :cond_100
    aput v6, v21, v3

    sget v22, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    add-int/lit8 v3, v3, 0x1

    if-lez v18, :cond_153

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v13, v22

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    const/4 v10, 0x0

    :goto_11e
    move/from16 v0, v18

    if-ge v10, v0, :cond_153

    int-to-float v0, v6

    move/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v11

    const/high16 v24, 0x3f800000    # 1.0f

    add-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    and-int/lit8 v7, v22, -0x2

    if-ne v4, v7, :cond_13e

    move v5, v3

    :cond_13e
    aput v7, v21, v3

    sget-object v22, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v22, v22, v10

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_11e

    :cond_153
    if-ltz v5, :cond_169

    move v8, v5

    :goto_156
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-void

    :cond_169
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v17, v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v21

    aput v4, v21, v3

    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    sget v22, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    move v8, v3

    goto :goto_156
.end method

.method public static clearForcedDisplayDensity(I)V
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    const/4 v2, -0x1

    return v2
.end method

.method static synthetic lambda$-com_android_settingslib_display_DisplayDensityUtils_7884(II)V
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v2, "DisplayDensityUtils"

    const-string/jumbo v3, "Unable to clear forced display density setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method static synthetic lambda$-com_android_settingslib_display_DisplayDensityUtils_8785(III)V
    .registers 7

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v2, "DisplayDensityUtils"

    const-string/jumbo v3, "Unable to save forced display density setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static setForcedDisplayDensity(II)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg$1;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return v0
.end method

.method public getDefaultDensity()I
    .registers 2

    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[I
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-object v0
.end method
