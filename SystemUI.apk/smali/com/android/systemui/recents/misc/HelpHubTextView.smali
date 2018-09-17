.class public final Lcom/android/systemui/recents/misc/HelpHubTextView;
.super Landroid/widget/TextView;
.source "HelpHubTextView.java"


# static fields
.field private static final ICON_POINTER_PS_NUM:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomScale:F

.field private mIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerBitmapYDiff:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "%1$s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "%2$s"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "%3$s"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "%4$s"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "%5$s"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mCustomScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/misc/HelpHubTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v7, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mCustomScale:F

    iput-object p1, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070150

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    iget-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v5, p2, v6, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_2c
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v2, :cond_6a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-eqz v3, :cond_63

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-lez v5, :cond_60

    const/4 v0, 0x0

    :goto_49
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_60

    iget-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_60
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_63
    .catchall {:try_start_2c .. :try_end_63} :catchall_76

    :cond_63
    :goto_63
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/HelpHubTextView;->applyStringWithIcon()V

    return-void

    :cond_6a
    if-lez v1, :cond_63

    :try_start_6c
    iget-object v5, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_76

    goto :goto_63

    :catchall_76
    move-exception v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v5
.end method

.method private applyStringWithIcon()V
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string/jumbo v3, "%s"

    const-string/jumbo v4, "\ufffc"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_24

    return-void

    :cond_24
    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_6e

    const-string/jumbo v3, "\ufffc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const-string/jumbo v4, "\ufffc"

    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/systemui/recents/misc/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    :cond_49
    :goto_49
    if-eqz v2, :cond_4e

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/misc/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4e
    return-void

    :cond_4f
    sget-object v3, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    sget-object v3, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v5

    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/systemui/recents/misc/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    goto :goto_49

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_49

    sget-object v3, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_95

    sget-object v3, Lcom/android/systemui/recents/misc/HelpHubTextView;->ICON_POINTER_PS_NUM:[Ljava/lang/String;

    aget-object v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/systemui/recents/misc/HelpHubTextView;->insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v2

    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f
.end method

.method private insertIconIntoString(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;I)Landroid/text/SpannableString;
    .registers 15

    iget-object v6, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_8
    invoke-virtual {v3, p4, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_21

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_23

    return-object p3

    :catch_21
    move-exception v1

    return-object p3

    :cond_23
    iget v6, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mInnerBitmapYDiff:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Lcom/android/systemui/recents/misc/HelpHubImageSpan;

    invoke-direct {v4, v0}, Lcom/android/systemui/recents/misc/HelpHubImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    iget v7, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mCustomScale:F

    mul-float/2addr v6, v7

    iput v6, v4, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->fontScale:F

    const v6, 0x7f070151

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, v4, Lcom/android/systemui/recents/misc/HelpHubImageSpan;->imageSideMargin:F

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x11

    invoke-virtual {p3, v4, v2, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p3
.end method


# virtual methods
.method public changeText(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/misc/HelpHubTextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/HelpHubTextView;->applyStringWithIcon()V

    return-void
.end method

.method public varargs setIconList([I)V
    .registers 7

    iget-object v1, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    array-length v2, p1

    :goto_7
    if-ge v1, v2, :cond_17

    aget v0, p1, v1

    iget-object v3, p0, Lcom/android/systemui/recents/misc/HelpHubTextView;->mIconList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method
