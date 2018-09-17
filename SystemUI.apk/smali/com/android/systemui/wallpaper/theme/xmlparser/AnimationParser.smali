.class public Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "AnimationParser.java"


# instance fields
.field private mAttribute:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .registers 15

    const/4 v12, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    if-nez v7, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isStartTag()Z

    move-result v8

    if-eqz v8, :cond_338

    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceDensity()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isWallpaperView()Z

    move-result v4

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v1, :cond_334

    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3e

    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_3e
    const-string/jumbo v8, "fromDegrees"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto :goto_3b

    :cond_4e
    const-string/jumbo v8, "toDegrees"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto :goto_3b

    :cond_5e
    const-string/jumbo v8, "key"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    goto :goto_3b

    :cond_6e
    const-string/jumbo v8, "xFrom"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_82

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto :goto_3b

    :cond_82
    const-string/jumbo v8, "xTo"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_96

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto :goto_3b

    :cond_96
    const-string/jumbo v8, "xOffSet"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    goto :goto_3b

    :cond_aa
    const-string/jumbo v8, "yOffSet"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bf

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    goto/16 :goto_3b

    :cond_bf
    const-string/jumbo v8, "key"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d0

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    goto/16 :goto_3b

    :cond_d0
    const-string/jumbo v8, "adjust"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e1

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    goto/16 :goto_3b

    :cond_e1
    const-string/jumbo v8, "yFrom"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_3b

    :cond_f6
    const-string/jumbo v8, "yTo"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10b

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_3b

    :cond_10b
    const-string/jumbo v8, "r"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11e

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v11

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    goto/16 :goto_3b

    :cond_11e
    const-string/jumbo v8, "a"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_131

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v11

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    goto/16 :goto_3b

    :cond_131
    const-string/jumbo v8, "b"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_144

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v11

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    goto/16 :goto_3b

    :cond_144
    const-string/jumbo v8, "ra"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_157

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v11

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    goto/16 :goto_3b

    :cond_157
    const-string/jumbo v8, "rb"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16a

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v11

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    goto/16 :goto_3b

    :cond_16a
    const-string/jumbo v8, "fromAlpha"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17b

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_3b

    :cond_17b
    const-string/jumbo v8, "toAlpha"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18c

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_3b

    :cond_18c
    const-string/jumbo v8, "fromXDelta"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ac

    if-eqz v4, :cond_1a3

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    :goto_19f
    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_3b

    :cond_1a3
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v8

    goto :goto_19f

    :cond_1ac
    const-string/jumbo v8, "toXDelta"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1cc

    if-eqz v4, :cond_1c3

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v8

    :goto_1bf
    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_3b

    :cond_1c3
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v8

    goto :goto_1bf

    :cond_1cc
    const-string/jumbo v8, "fromYDelta"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ec

    if-eqz v4, :cond_1e3

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    :goto_1df
    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_3b

    :cond_1e3
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v8

    goto :goto_1df

    :cond_1ec
    const-string/jumbo v8, "toYDelta"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20c

    if-eqz v4, :cond_203

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v8

    :goto_1ff
    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_3b

    :cond_203
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v8

    goto :goto_1ff

    :cond_20c
    const-string/jumbo v8, "fromXScale"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21d

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_3b

    :cond_21d
    const-string/jumbo v8, "toXScale"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22e

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_3b

    :cond_22e
    const-string/jumbo v8, "fromYScale"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23f

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_3b

    :cond_23f
    const-string/jumbo v8, "toYScale"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_250

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_3b

    :cond_250
    const-string/jumbo v8, "length"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_261

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    goto/16 :goto_3b

    :cond_261
    const-string/jumbo v8, "image"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_281

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "drawable"

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    goto/16 :goto_3b

    :cond_281
    const-string/jumbo v8, "duration"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_292

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    goto/16 :goto_3b

    :cond_292
    const-string/jumbo v8, "repeatCount"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    goto/16 :goto_3b

    :cond_2a3
    const-string/jumbo v8, "repeatMode"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    goto/16 :goto_3b

    :cond_2b4
    const-string/jumbo v8, "delay"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    goto/16 :goto_3b

    :cond_2c5
    const-string/jumbo v8, "accelerateInterpolator"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2ed

    const-string/jumbo v8, "default"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e0

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_3b

    :cond_2e0
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {v8, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_3b

    :cond_2ed
    const-string/jumbo v8, "decelerateInterpolator"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_315

    const-string/jumbo v8, "default"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_308

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_3b

    :cond_308
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_3b

    :cond_315
    const-string/jumbo v8, "accelerateDecelerateInterpolator"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_327

    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_3b

    :cond_327
    const-string/jumbo v8, "normalSpeed"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    iput-object v12, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_3b

    :cond_334
    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    :goto_337
    return-void

    :cond_338
    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    const-string/jumbo v9, "ImageResource"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_354

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    move-result-object v8

    if-eqz v8, :cond_354

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setApkContext(Landroid/content/Context;)V

    :cond_354
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v8

    if-nez v8, :cond_35b

    return-void

    :cond_35b
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildAnimation(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto :goto_337
.end method
