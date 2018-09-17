.class public final Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .registers 2

    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$1;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .registers 6

    if-nez p0, :cond_1c

    :cond_2
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    # getter for: Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$ValueFactory;
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$ValueFactory;->access$100()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$ValueFactory;

    move-result-object v3

    invoke-static {p0, v2, p1, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v1

    iget-object v0, v1, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    iget-object v3, v1, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    invoke-direct {v2, v3, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    return-object v2

    :cond_1c
    const-string/jumbo v2, "x"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_2
.end method
