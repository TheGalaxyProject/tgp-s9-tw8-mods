.class public Landroid/support/v17/leanback/app/ErrorSupportFragment;
.super Landroid/support/v17/leanback/app/BrandedSupportFragment;
.source "ErrorSupportFragment.java"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mButton:Landroid/widget/Button;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonText:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mErrorFrame:Landroid/view/ViewGroup;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsBackgroundTranslucent:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mIsBackgroundTranslucent:Z

    return-void
.end method

.method private static getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    return-object v1
.end method

.method private static setTopMargin(Landroid/widget/TextView;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateBackground()V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mIsBackgroundTranslucent:Z

    if-eqz v0, :cond_26

    sget v0, Landroid/support/v17/leanback/R$color;->lb_error_background_color_translucent:I

    :goto_1e
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_f

    :cond_26
    sget v0, Landroid/support/v17/leanback/R$color;->lb_error_background_color_opaque:I

    goto :goto_1e
.end method

.method private updateButton()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x8

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_26
    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private updateImageDrawable()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_17

    const/16 v0, 0x8

    :goto_13
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private updateMessage()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x8

    :goto_17
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    sget v4, Landroid/support/v17/leanback/R$layout;->lb_error_fragment:I

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v4, Landroid/support/v17/leanback/R$id;->error_frame:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateBackground()V

    iget-object v4, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v4, p3}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    sget v4, Landroid/support/v17/leanback/R$id;->image:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateImageDrawable()V

    sget v4, Landroid/support/v17/leanback/R$id;->message:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateMessage()V

    sget v4, Landroid/support/v17/leanback/R$id;->button:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->updateButton()V

    iget-object v4, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_error_under_image_baseline_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mTextView:Landroid/widget/TextView;

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->setTopMargin(Landroid/widget/TextView;I)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_error_under_message_baseline_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mButton:Landroid/widget/Button;

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v5, v3, v5

    invoke-static {v4, v5}, Landroid/support/v17/leanback/app/ErrorSupportFragment;->setTopMargin(Landroid/widget/TextView;I)V

    return-object v1
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->onStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/ErrorSupportFragment;->mErrorFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method
