.class public Lcom/airbnb/lottie/model/content/ShapeGroup;
.super Ljava/lang/Object;
.source "ShapeGroup.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/ShapeGroup$Factory;
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeGroup;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/ShapeGroup;->items:Ljava/util/List;

    return-void
.end method

.method public static shapeItemWithJson(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .registers 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string/jumbo v3, "ty"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_10a

    :cond_10
    :goto_10
    packed-switch v1, :pswitch_data_140

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown shape type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "LOTTIE"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :sswitch_2f
    const-string/jumbo v3, "gr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x0

    goto :goto_10

    :sswitch_3a
    const-string/jumbo v3, "st"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_10

    :sswitch_45
    const-string/jumbo v3, "gs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x2

    goto :goto_10

    :sswitch_50
    const-string/jumbo v3, "fl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x3

    goto :goto_10

    :sswitch_5b
    const-string/jumbo v3, "gf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x4

    goto :goto_10

    :sswitch_66
    const-string/jumbo v3, "tr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x5

    goto :goto_10

    :sswitch_71
    const-string/jumbo v3, "sh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x6

    goto :goto_10

    :sswitch_7c
    const-string/jumbo v3, "el"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x7

    goto :goto_10

    :sswitch_87
    const-string/jumbo v3, "rc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v1, 0x8

    goto/16 :goto_10

    :sswitch_94
    const-string/jumbo v3, "tm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v1, 0x9

    goto/16 :goto_10

    :sswitch_a1
    const-string/jumbo v3, "sr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v1, 0xa

    goto/16 :goto_10

    :sswitch_ae
    const-string/jumbo v3, "mm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v1, 0xb

    goto/16 :goto_10

    :sswitch_bb
    const-string/jumbo v3, "rp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v1, 0xc

    goto/16 :goto_10

    :pswitch_c8
    # invokes: Lcom/airbnb/lottie/model/content/ShapeGroup$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/ShapeGroup$Factory;->access$000(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-result-object v3

    return-object v3

    :pswitch_cd
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/ShapeStroke$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-result-object v3

    return-object v3

    :pswitch_d2
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/GradientStroke$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;

    move-result-object v3

    return-object v3

    :pswitch_d7
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/ShapeFill$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;

    move-result-object v3

    return-object v3

    :pswitch_dc
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/GradientFill$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;

    move-result-object v3

    return-object v3

    :pswitch_e1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v3

    return-object v3

    :pswitch_e6
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/ShapePath$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;

    move-result-object v3

    return-object v3

    :pswitch_eb
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/CircleShape$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/CircleShape;

    move-result-object v3

    return-object v3

    :pswitch_f0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/RectangleShape$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;

    move-result-object v3

    return-object v3

    :pswitch_f5
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-result-object v3

    return-object v3

    :pswitch_fa
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/PolystarShape$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;

    move-result-object v3

    return-object v3

    :pswitch_ff
    invoke-static {p0}, Lcom/airbnb/lottie/model/content/MergePaths$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/content/MergePaths;

    move-result-object v3

    return-object v3

    :pswitch_104
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/content/Repeater$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_10a
    .sparse-switch
        0xca7 -> :sswitch_7c
        0xcc6 -> :sswitch_50
        0xcdf -> :sswitch_5b
        0xceb -> :sswitch_2f
        0xcec -> :sswitch_45
        0xda0 -> :sswitch_ae
        0xe31 -> :sswitch_87
        0xe3e -> :sswitch_bb
        0xe55 -> :sswitch_71
        0xe5f -> :sswitch_a1
        0xe61 -> :sswitch_3a
        0xe79 -> :sswitch_94
        0xe7e -> :sswitch_66
    .end sparse-switch

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_cd
        :pswitch_d2
        :pswitch_d7
        :pswitch_dc
        :pswitch_e1
        :pswitch_e6
        :pswitch_eb
        :pswitch_f0
        :pswitch_f5
        :pswitch_fa
        :pswitch_ff
        :pswitch_104
    .end packed-switch
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeGroup;->items:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .registers 4

    new-instance v0, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ShapeGroup{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeGroup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' Shapes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeGroup;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
