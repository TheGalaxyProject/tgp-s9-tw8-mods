.class public Lcom/android/systemui/qs/QSDualTileLabel;
.super Landroid/widget/LinearLayout;
.source "QSDualTileLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDualTileLabel$1;,
        Lcom/android/systemui/qs/QSDualTileLabel$2;
    }
.end annotation


# instance fields
.field private final mFirstLine:Landroid/widget/TextView;

.field private final mFirstLineCaret:Landroid/widget/ImageView;

.field private final mHorizontalPaddingPx:I

.field private final mSecondLine:Landroid/widget/TextView;

.field private mText:Ljava/lang/String;

.field private final mUpdateText:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->updateText()V

    return-void
.end method

.method private rescheduleUpdateText()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateText()V
    .registers 13

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->getWidth()I

    move-result v7

    if-nez v7, :cond_b

    return-void

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v4, v7

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpg-float v7, v6, v4

    if-gtz v7, :cond_5e

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_5e
    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x1

    :goto_68
    if-ge v1, v5, :cond_95

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpl-float v7, v6, v4

    if-lez v7, :cond_ba

    const/4 v0, 0x1

    :goto_7f
    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_bc

    if-nez v2, :cond_92

    xor-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_92

    move v3, v1

    :cond_92
    const/4 v2, 0x1

    :goto_93
    if-eqz v0, :cond_be

    :cond_95
    const/4 v7, -0x1

    if-ne v3, v7, :cond_9a

    add-int/lit8 v3, v1, -0x1

    :cond_9a
    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_ba
    const/4 v0, 0x0

    goto :goto_7f

    :cond_bc
    const/4 v2, 0x0

    goto :goto_93

    :cond_be
    add-int/lit8 v1, v1, 0x1

    goto :goto_68
.end method
