.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextAttrs"
.end annotation


# instance fields
.field styleIndex:I

.field textColor:Landroid/content/res/ColorStateList;

.field textSize:I

.field typefaceIndex:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    return-void
.end method


# virtual methods
.method apply(Landroid/content/Context;Landroid/text/TextPaint;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p2, Landroid/text/TextPaint;->density:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    packed-switch v1, :pswitch_data_3e

    :goto_2e
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->setTypeface(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_34
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_2e

    :pswitch_37
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_2e

    :pswitch_3a
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_2e

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_34
        :pswitch_37
        :pswitch_3a
    .end packed-switch
.end method

.method retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V
    .registers 11

    const/4 v6, -0x1

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v6, :cond_e

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :cond_e
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v4, :cond_3f

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_44

    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :pswitch_21
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1e

    :pswitch_28
    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1e

    :pswitch_31
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    goto :goto_1e

    :pswitch_38
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    goto :goto_1e

    :cond_3f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_28
        :pswitch_31
        :pswitch_38
        :pswitch_21
    .end packed-switch
.end method

.method public setTypeface(Landroid/text/TextPaint;Landroid/graphics/Typeface;I)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-lez p3, :cond_31

    if-nez p2, :cond_28

    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    :goto_a
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_13
    not-int v4, v1

    and-int v0, p3, v4

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2f

    const/high16 v2, -0x41800000    # -0.25f

    :goto_24
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :goto_27
    return-void

    :cond_28
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_a

    :cond_2d
    const/4 v1, 0x0

    goto :goto_13

    :cond_2f
    move v2, v3

    goto :goto_24

    :cond_31
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_27
.end method
