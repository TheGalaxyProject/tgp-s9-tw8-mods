.class public Lcom/android/keyguard/NumPadKey;
.super Landroid/view/ViewGroup;
.source "NumPadKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/NumPadKey$1;
    }
.end annotation


# static fields
.field static sKlondike:[Ljava/lang/String;


# instance fields
.field private mDigit:I

.field private mDigitImage:Landroid/widget/ImageView;

.field private mDigitText:Lcom/android/systemui/widget/SystemUITextView;

.field private mEnableHaptics:Z

.field private mIsImagePinLock:Z

.field private mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mPM:Landroid/os/PowerManager;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mTextView:Lcom/android/keyguard/PasswordTextView;

.field private mTextViewResId:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/NumPadKey;)I
    .registers 2

    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/NumPadKey;)I
    .registers 2

    iget v0, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const v0, 0x7f0d007c

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/NumPadKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    const v7, 0x7f08058a

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    new-instance v4, Lcom/android/keyguard/NumPadKey$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/NumPadKey$1;-><init>(Lcom/android/keyguard/NumPadKey;)V

    iput-object v4, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v6}, Lcom/android/keyguard/NumPadKey;->setFocusable(Z)V

    sget-object v4, Lcom/android/keyguard/R$styleable;->NumPadKey:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_1a
    iget v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_f9

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/NumPadKey;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result v4

    if-eqz v4, :cond_45

    new-instance v4, Lcom/android/keyguard/LiftToActivateListener;

    invoke-direct {v4, p1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/android/keyguard/NumPadKey;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_45
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, p4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v4, 0x7f0a016b

    invoke-virtual {p0, v4}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v4, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a02be

    invoke-virtual {p0, v4}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v4, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    iget v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-lez v4, :cond_105

    sget-object v4, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v4, :cond_a3

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    :cond_a3
    sget-object v4, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz v4, :cond_bf

    sget-object v4, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v4, v4

    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v4, v5, :cond_bf

    sget-object v4, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    aget-object v2, v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_fe

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_bf
    :goto_bf
    sget-object v4, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v4

    if-nez v4, :cond_d6

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/NumPadKey;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_d6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-boolean v4, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SPR_USIM_TEXT:Z

    if-eqz v4, :cond_111

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const v5, 0x7f12044f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_e9
    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    iput-object v4, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/NumPadKey;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_f9
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    :cond_fe
    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_bf

    :cond_105
    iget v4, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-nez v4, :cond_bf

    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_bf

    :cond_111
    iget-object v4, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v4}, Lcom/android/systemui/widget/SystemUITextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e9
.end method

.method private updateFont(Lcom/android/systemui/widget/SystemUITextView;)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getOpenThemeNumericFont()Ljava/lang/String;

    move-result-object v0

    :cond_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    :cond_28
    :goto_28
    if-eqz v1, :cond_2d

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2d
    return-void

    :cond_2e
    iget-object v2, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const v3, 0x7f120819

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string/jumbo v2, "NumPadKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not exist. Use default font."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private updateRippleSize(II)V
    .registers 11

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070409

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_33
    return-void
.end method


# virtual methods
.method public doHapticKeyClick()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/keyguard/NumPadKey;->mEnableHaptics:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/NumPadKey;->performHapticFeedback(II)Z

    :cond_9
    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    iget-boolean v7, p0, Lcom/android/keyguard/NumPadKey;->mIsImagePinLock:Z

    if-eqz v7, :cond_33

    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v2, 0x2

    sub-int v5, v7, v8

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v1, v7

    add-int v0, v5, v2

    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v4, v5, v8, v0}, Landroid/widget/ImageView;->layout(IIII)V

    :goto_32
    return-void

    :cond_33
    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v7}, Lcom/android/systemui/widget/SystemUITextView;->getMeasuredHeight()I

    move-result v2

    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v7}, Lcom/android/systemui/widget/SystemUITextView;->getMeasuredHeight()I

    move-result v3

    add-int v6, v2, v3

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v6, 0x2

    sub-int v5, v7, v8

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getWidth()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v7}, Lcom/android/systemui/widget/SystemUITextView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v1, v7

    add-int v0, v5, v2

    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v8, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v8}, Lcom/android/systemui/widget/SystemUITextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v4, v5, v8, v0}, Lcom/android/systemui/widget/SystemUITextView;->layout(IIII)V

    int-to-float v7, v0

    int-to-float v8, v3

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v5, v7

    add-int v0, v5, v3

    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v7}, Lcom/android/systemui/widget/SystemUITextView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v1, v7

    iget-object v7, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v8, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v8}, Lcom/android/systemui/widget/SystemUITextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v4, v5, v8, v0}, Lcom/android/systemui/widget/SystemUITextView;->layout(IIII)V

    goto :goto_32
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/NumPadKey;->measureChildren(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/NumPadKey;->updateRippleSize(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->doHapticKeyClick()V

    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public updateViewstyle()V
    .registers 8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    :cond_16
    iput-boolean v5, p0, Lcom/android/keyguard/NumPadKey;->mIsImagePinLock:Z

    iget-boolean v5, p0, Lcom/android/keyguard/NumPadKey;->mIsImagePinLock:Z

    if-eqz v5, :cond_69

    const v0, 0x7f0d0075

    :goto_1f
    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v5, 0x1

    invoke-virtual {v1, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/keyguard/NumPadKey;->mIsImagePinLock:Z

    if-eqz v5, :cond_c7

    const v5, 0x7f0a016a

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    packed-switch v5, :pswitch_data_150

    :goto_47
    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_50
    if-eqz v2, :cond_140

    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const v6, 0x7f08058a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    :goto_5f
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_68

    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_68
    return-void

    :cond_69
    const v0, 0x7f0d007c

    goto :goto_1f

    :pswitch_6d
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f080490

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :pswitch_76
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f080491

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :pswitch_7f
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f080492

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :pswitch_88
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f080493

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :pswitch_91
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f080494

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :pswitch_9a
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f080495

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :pswitch_a3
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f080496

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :pswitch_ac
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f080497

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :pswitch_b5
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f080498

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :pswitch_be
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitImage:Landroid/widget/ImageView;

    const v6, 0x7f08048f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :cond_c7
    const v5, 0x7f0a016b

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a02be

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-lez v5, :cond_134

    sget-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-nez v5, :cond_fd

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    :cond_fd
    sget-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    if-eqz v5, :cond_119

    sget-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    array-length v5, v5

    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-le v5, v6, :cond_119

    sget-object v5, Lcom/android/keyguard/NumPadKey;->sKlondike:[Ljava/lang/String;

    iget v6, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    aget-object v3, v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12d

    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_119
    :goto_119
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUITextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/NumPadKey;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mDigitText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0, v5}, Lcom/android/keyguard/NumPadKey;->updateFont(Lcom/android/systemui/widget/SystemUITextView;)V

    goto/16 :goto_50

    :cond_12d
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_119

    :cond_134
    iget v5, p0, Lcom/android/keyguard/NumPadKey;->mDigit:I

    if-nez v5, :cond_119

    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mKlondikeText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_119

    :cond_140
    iget-object v5, p0, Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;

    const v6, 0x7f08048b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    iput-object v5, p0, Lcom/android/keyguard/NumPadKey;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto/16 :goto_5f

    nop

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_be
        :pswitch_6d
        :pswitch_76
        :pswitch_7f
        :pswitch_88
        :pswitch_91
        :pswitch_9a
        :pswitch_a3
        :pswitch_ac
        :pswitch_b5
    .end packed-switch
.end method

.method public userActivity()V
    .registers 5

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method
