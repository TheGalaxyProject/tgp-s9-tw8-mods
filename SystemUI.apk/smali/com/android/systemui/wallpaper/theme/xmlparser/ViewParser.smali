.class public Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "ViewParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .registers 29

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v22

    if-nez v22, :cond_a

    return-void

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isStartTag()Z

    move-result v23

    if-eqz v23, :cond_410

    new-instance v8, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setFrameImageView(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isScaled()Z

    move-result v11

    const/16 v23, 0x3

    invoke-interface/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x4

    invoke-interface/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "parseAttribute: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " , "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "] , ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeWidth()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " , "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeHeight()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeWidth()F

    move-result v24

    sub-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_f9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeHeight()F

    move-result v24

    sub-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_f9

    const/4 v12, 0x1

    :goto_b6
    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "parseAttribute: isWallpaperView : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setWallpaperView(Z)V

    const/4 v10, 0x0

    :goto_d8
    if-ge v10, v4, :cond_464

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_f6

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_fb

    :cond_f6
    :goto_f6
    add-int/lit8 v10, v10, 0x1

    goto :goto_d8

    :cond_f9
    const/4 v12, 0x0

    goto :goto_b6

    :cond_fb
    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "=\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\" "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "img"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2de

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const-string/jumbo v25, "drawable"

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPkgName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_f6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-nez v11, :cond_2a4

    if-eqz v12, :cond_2a4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceWidth()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceDensity()F

    move-result v24

    mul-float v20, v23, v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceHeight()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceDensity()F

    move-result v24

    mul-float v19, v23, v24

    const/high16 v17, 0x3f800000    # 1.0f

    int-to-float v0, v7

    move/from16 v23, v0

    mul-float v23, v23, v19

    int-to-float v0, v6

    move/from16 v24, v0

    mul-float v24, v24, v20

    cmpl-float v23, v23, v24

    if-lez v23, :cond_2cf

    int-to-float v0, v6

    move/from16 v23, v0

    div-float v17, v19, v23

    :goto_196
    int-to-float v0, v7

    move/from16 v23, v0

    mul-float v23, v23, v17

    sub-float v23, v20, v23

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v15, v0

    int-to-float v0, v6

    move/from16 v23, v0

    mul-float v23, v23, v17

    sub-float v23, v19, v23

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaledRatio(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaledDx(F)V

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaledDy(F)V

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaled(Z)V

    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "drawableWidth = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "drawableHeight = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "viewWidth = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "viewHeight = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "scaledRatio = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "scaledDx = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "ViewParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "scaledDy = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a4
    if-eqz v12, :cond_2d6

    sget-object v23, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isPreview()Z

    move-result v23

    if-nez v23, :cond_2ca

    xor-int/lit8 v23, v11, 0x1

    if-eqz v23, :cond_2ca

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getUpdateBitmapCallback()Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object v23

    if-eqz v23, :cond_2ca

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getUpdateBitmapCallback()Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object v23

    invoke-static {v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    :cond_2ca
    :goto_2ca
    invoke-virtual {v8, v5}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f6

    :cond_2cf
    int-to-float v0, v7

    move/from16 v23, v0

    div-float v17, v20, v23

    goto/16 :goto_196

    :cond_2d6
    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2ca

    :cond_2de
    const-string/jumbo v23, "x"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2fc

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setX(F)V

    goto/16 :goto_f6

    :cond_2fc
    const-string/jumbo v23, "y"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_31a

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setY(F)V

    goto/16 :goto_f6

    :cond_31a
    const-string/jumbo v23, "width"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_33f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewWidth(I)V

    goto/16 :goto_f6

    :cond_33f
    const-string/jumbo v23, "height"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_364

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewHeight(I)V

    goto/16 :goto_f6

    :cond_364
    const-string/jumbo v23, "pivotX"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_391

    if-eqz v12, :cond_384

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v23

    :goto_37d
    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setPivotX(F)V

    goto/16 :goto_f6

    :cond_384
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v23

    goto :goto_37d

    :cond_391
    const-string/jumbo v23, "pivotY"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3be

    if-eqz v12, :cond_3b1

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v23

    :goto_3aa
    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setPivotY(F)V

    goto/16 :goto_f6

    :cond_3b1
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v23

    goto :goto_3aa

    :cond_3be
    const-string/jumbo v23, "alpha"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3d4

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setAlpha(F)V

    goto/16 :goto_f6

    :cond_3d4
    const-string/jumbo v23, "scaleX"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3f2

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setScaleX(F)V

    goto/16 :goto_f6

    :cond_3f2
    const-string/jumbo v23, "scaleY"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f6

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setScaleY(F)V

    goto/16 :goto_f6

    :cond_410
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    move-result-object v8

    if-eqz v8, :cond_41c

    if-nez v14, :cond_41d

    :cond_41c
    return-void

    :cond_41d
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isWallpaperView()Z

    move-result v23

    if-eqz v23, :cond_443

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setX(F)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setY(F)V

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewWidth(I)V

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewHeight(I)V

    :cond_443
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getImageViewWidth()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getImageViewHeight()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v8, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    const/16 v23, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewWidth(I)V

    const/16 v23, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewHeight(I)V

    :cond_464
    return-void
.end method
