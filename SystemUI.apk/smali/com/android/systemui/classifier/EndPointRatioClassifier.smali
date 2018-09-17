.class public Lcom/android/systemui/classifier/EndPointRatioClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "EndPointRatioClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/EndPointRatioClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .registers 6

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_b
    invoke-static {v0}, Lcom/android/systemui/classifier/EndPointRatioEvaluator;->evaluate(F)F

    move-result v1

    return v1

    :cond_10
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getEndPointLength()F

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v2

    div-float v0, v1, v2

    goto :goto_b
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "END_RTIO"

    return-object v0
.end method
