.class public Lcom/airbnb/lottie/animation/Keyframe$Factory;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    const-class v2, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-object v2

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/Keyframe;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory",
            "<TT;>;)",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TT;>;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v4, "t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    :goto_1c
    new-instance v4, Lcom/airbnb/lottie/animation/Keyframe;

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-object v4

    :cond_25
    const-string/jumbo v4, "t"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v9, v4

    const-string/jumbo v4, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_75

    :goto_3e
    const-string/jumbo v4, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_80

    :goto_49
    const-string/jumbo v4, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v4, "i"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v12, :cond_89

    :cond_5d
    :goto_5d
    const-string/jumbo v4, "h"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_98

    const/16 v17, 0x0

    :goto_6c
    if-nez v17, :cond_9b

    if-nez v11, :cond_a2

    # getter for: Lcom/airbnb/lottie/animation/Keyframe;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/airbnb/lottie/animation/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v8

    goto :goto_1c

    :cond_75
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v6

    goto :goto_3e

    :cond_80
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v15, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v7

    goto :goto_49

    :cond_89
    if-eqz v14, :cond_5d

    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v11

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v13

    goto :goto_5d

    :cond_98
    const/16 v17, 0x1

    goto :goto_6c

    :cond_9b
    move-object v7, v6

    # getter for: Lcom/airbnb/lottie/animation/Keyframe;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/airbnb/lottie/animation/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v8

    goto/16 :goto_1c

    :cond_a2
    iget v4, v11, Landroid/graphics/PointF;->x:F

    move/from16 v0, p2

    neg-float v5, v0

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v11, Landroid/graphics/PointF;->x:F

    iget v4, v11, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v4, v5, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v11, Landroid/graphics/PointF;->y:F

    iget v4, v13, Landroid/graphics/PointF;->x:F

    move/from16 v0, p2

    neg-float v5, v0

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v13, Landroid/graphics/PointF;->x:F

    iget v4, v13, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v4, v5, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v13, Landroid/graphics/PointF;->y:F

    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v5, v11, Landroid/graphics/PointF;->y:F

    iget v10, v13, Landroid/graphics/PointF;->x:F

    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v4, v5, v10, v0}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v18

    if-nez v18, :cond_113

    :goto_ea
    if-nez v18, :cond_11a

    :cond_ec
    iget v4, v11, Landroid/graphics/PointF;->x:F

    div-float v4, v4, p2

    iget v5, v11, Landroid/graphics/PointF;->y:F

    div-float v5, v5, p2

    iget v10, v13, Landroid/graphics/PointF;->x:F

    div-float v10, v10, p2

    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    div-float v20, v20, p2

    move/from16 v0, v20

    invoke-static {v4, v5, v10, v0}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v8

    :try_start_104
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move/from16 v0, v16

    invoke-static {v0, v4}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_10e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_104 .. :try_end_10e} :catch_110

    goto/16 :goto_1c

    :catch_110
    move-exception v4

    goto/16 :goto_1c

    :cond_113
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/animation/Interpolator;

    goto :goto_ea

    :cond_11a
    if-eqz v8, :cond_ec

    goto/16 :goto_1c
.end method

.method public static parseKeyframes(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_c
    if-lt v0, v2, :cond_17

    invoke-static {v1}, Lcom/airbnb/lottie/animation/Keyframe;->setEndFrames(Ljava/util/List;)V

    return-object v1

    :cond_12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_17
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/Keyframe;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private static pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_7

    :goto_4
    sget-object v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0

    :cond_7
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    goto :goto_4
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    const-class v2, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    monitor-enter v2

    :try_start_5
    sget-object v2, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
