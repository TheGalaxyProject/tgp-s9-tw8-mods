.class public Lcom/android/systemui/classifier/PointerCountClassifier;
.super Lcom/android/systemui/classifier/GestureClassifier;
.source "PointerCountClassifier.java"


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/classifier/GestureClassifier;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(I)F
    .registers 3

    iget v0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    invoke-static {v0}, Lcom/android/systemui/classifier/PointerCountEvaluator;->evaluate(I)F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "PTR_CNT"

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    :cond_9
    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    iget v1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    :cond_12
    return-void
.end method
