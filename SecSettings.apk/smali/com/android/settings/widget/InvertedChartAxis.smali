.class public Lcom/android/settings/widget/InvertedChartAxis;
.super Ljava/lang/Object;
.source "InvertedChartAxis.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# instance fields
.field private mSize:F

.field private final mWrapped:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/ChartAxis;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .registers 8

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public convertToPoint(J)F
    .registers 6

    iget v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    iget-object v1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .registers 4

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    iget v1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .registers 5

    iget-object v2, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v2}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v1

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_14

    iget v2, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    aget v3, v1, v0

    sub-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    return-object v1
.end method

.method public setBounds(JJ)Z
    .registers 6

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v0

    return v0
.end method

.method public setSize(F)Z
    .registers 3

    iput p1, p0, Lcom/android/settings/widget/InvertedChartAxis;->mSize:F

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1}, Lcom/android/settings/widget/ChartAxis;->setSize(F)Z

    move-result v0

    return v0
.end method

.method public shouldAdjustAxis(J)I
    .registers 4

    iget-object v0, p0, Lcom/android/settings/widget/InvertedChartAxis;->mWrapped:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method
