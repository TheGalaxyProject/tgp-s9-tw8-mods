.class public Lcom/android/systemui/widget/SystemUITextView;
.super Landroid/widget/TextView;
.source "SystemUITextView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUITextView$ResData;
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mAttrCount:I

.field private mCompoundVisble:Z

.field private mDensityDpi:I

.field private mFontScale:F

.field private mIsFixedFontSize:Z

.field private mMaxFontScale:F

.field private mOriginalFontSize:F

.field protected mOriginalFontSizeDp:F

.field protected mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

.field protected mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    iput v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisble:Z

    iput v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iput v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    sput-object p1, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/R$styleable;->KeyguardFontSize:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F
    .registers 5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isSViewCovered()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    :cond_17
    return v2

    :cond_18
    if-eqz p0, :cond_24

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_24
    if-eqz p0, :cond_30

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_30
    if-eqz p0, :cond_3c

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRMMEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_3c
    const v0, 0x3f99999a    # 1.2f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    sget-object v1, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2c

    const-string/jumbo v1, "SystemUITextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return v0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .registers 6

    new-instance v2, Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-direct {v2, p0}, Lcom/android/systemui/widget/SystemUITextView$ResData;-><init>(Lcom/android/systemui/widget/SystemUITextView;)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    const/4 v1, 0x0

    :goto_10
    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-ge v1, v2, :cond_78

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_7c

    :goto_1b
    :pswitch_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :pswitch_1e
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->adaptiveColorMain:Ljava/lang/String;

    goto :goto_1b

    :pswitch_27
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColor:Ljava/lang/String;

    goto :goto_1b

    :pswitch_30
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    goto :goto_1b

    :pswitch_39
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColor:Ljava/lang/String;

    goto :goto_1b

    :pswitch_42
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColor:Ljava/lang/String;

    goto :goto_1b

    :pswitch_4b
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    goto :goto_1b

    :pswitch_54
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColor:Ljava/lang/String;

    goto :goto_1b

    :pswitch_5d
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawable:Ljava/lang/String;

    goto :goto_1b

    :pswitch_66
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScale:Ljava/lang/String;

    goto :goto_1b

    :pswitch_6f
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPadding:Ljava/lang/String;

    goto :goto_1b

    :cond_78
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    :cond_7b
    return-void

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1b
        :pswitch_5d
        :pswitch_6f
        :pswitch_66
        :pswitch_1b
        :pswitch_27
        :pswitch_1b
        :pswitch_42
        :pswitch_1b
        :pswitch_39
        :pswitch_1b
        :pswitch_54
        :pswitch_1b
        :pswitch_1b
        :pswitch_30
        :pswitch_1b
        :pswitch_4b
    .end packed-switch
.end method

.method private refreshResIds()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColor:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColor:Ljava/lang/String;

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColorId:I

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColorId:I

    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColor:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColor:Ljava/lang/String;

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColorId:I

    :cond_3f
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColor:Ljava/lang/String;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColor:Ljava/lang/String;

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColorId:I

    :cond_54
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColorId:I

    :cond_69
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColor:Ljava/lang/String;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColor:Ljava/lang/String;

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColorId:I

    :cond_7e
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawable:Ljava/lang/String;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawable:Ljava/lang/String;

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawableId:I

    :cond_93
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScale:Ljava/lang/String;

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScale:Ljava/lang/String;

    const-string/jumbo v2, "dimen"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScaleId:I

    :cond_a8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPadding:Ljava/lang/String;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPadding:Ljava/lang/String;

    const-string/jumbo v2, "dimen"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPaddingId:I

    :cond_bd
    return-void
.end method

.method private updateCompoundDrawable(Z)V
    .registers 16

    const/4 v11, 0x0

    const/4 v13, 0x0

    if-nez p1, :cond_b

    invoke-virtual {p0, v13, v13, v13, v13}, Lcom/android/systemui/widget/SystemUITextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0, v13}, Lcom/android/systemui/widget/SystemUITextView;->setCompoundDrawablePadding(I)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v8, v8, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawableId:I

    if-lez v8, :cond_17

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v8, v8, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScaleId:I

    if-gtz v8, :cond_18

    :cond_17
    return-void

    :cond_18
    sget-object v8, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v9, v9, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundDrawableId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v8, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v9, v9, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundScaleId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    add-float v5, v8, v9

    int-to-float v8, v6

    mul-float/2addr v8, v5

    float-to-int v6, v8

    invoke-virtual {v1, v13, v13, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_c7

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v8, v8, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColorId:I

    if-lez v8, :cond_96

    sget-object v8, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v9, v9, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const-string/jumbo v8, "SystemUITextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "filter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "#%08X"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_96
    :goto_96
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_9c
    invoke-virtual {p0, v1, v8, v9, v10}, Lcom/android/systemui/widget/SystemUITextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v8, v8, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPaddingId:I

    if-lez v8, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v9, v9, Lcom/android/systemui/widget/SystemUITextView$ResData;->compoundPaddingId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/widget/SystemUITextView;->setCompoundDrawablePadding(I)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_b9} :catch_bb

    goto/16 :goto_a

    :catch_bb
    move-exception v3

    const-string/jumbo v8, "SystemUITextView"

    const-string/jumbo v9, "Exception adding compoundDrawable!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_c7
    iget v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_f4

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v8, v8, Lcom/android/systemui/widget/SystemUITextView$ResData;->adaptiveColorMain:Ljava/lang/String;

    if-eqz v8, :cond_f4

    const-string/jumbo v8, "SystemUITextView"

    const-string/jumbo v9, "apply style: adaptive color"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v7

    if-eqz v7, :cond_96

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v8, v8, Lcom/android/systemui/widget/SystemUITextView$ResData;->adaptiveColorMain:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_96

    :cond_f4
    iget v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_96

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v8, v8, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    if-eqz v8, :cond_96

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v8, v8, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    if-eqz v8, :cond_96

    iget-object v8, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v8, v8, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColorId:I

    if-lez v8, :cond_96

    sget-object v8, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v9, v9, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_96
.end method


# virtual methods
.method public getKeyguardFontScale()F
    .registers 2

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const-string/jumbo v0, "SystemUITextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAttachedToWindow mAttrCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-lez v0, :cond_2c

    sget-object v0, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_2c
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-lez v0, :cond_10

    sget-object v0, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_10
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2f

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    :cond_2f
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setMaxFontScale(F)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_13

    const v0, 0x3f99999a    # 1.2f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_13

    :goto_d
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary()V

    return-void

    :cond_13
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    goto :goto_d
.end method

.method public updateCompoundVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisble:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .registers 8

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    if-eqz v2, :cond_3b

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_7
    const/4 v0, 0x0

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    if-eq v2, v3, :cond_13

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v0, 0x1

    :cond_13
    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1e

    iput v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    const/4 v0, 0x1

    :cond_1e
    if-eqz v0, :cond_3a

    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    iget v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    mul-float/2addr v2, v3

    sget-object v3, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    iget-boolean v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisble:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    :cond_3a
    return-void

    :cond_3b
    sget-object v2, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v4, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v1

    goto :goto_7
.end method

.method public updateStyle(I)V
    .registers 5

    const-string/jumbo v0, "SystemUITextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisble:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    return-void
.end method

.method protected updateTextView()V
    .registers 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->semClearAllTextEffect()V

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v4, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->originColorId:I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v3, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColorId:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_46

    const-string/jumbo v5, "SystemUITextView"

    const-string/jumbo v6, "apply style: theme"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v4, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeColorId:I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v3, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->themeShadowColorId:I

    :cond_25
    :goto_25
    if-eqz v1, :cond_f0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setTextColor(I)V

    :cond_2a
    :goto_2a
    if-lez v3, :cond_45

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getShadowRadius()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getShadowDx()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getShadowDy()F

    move-result v7

    sget-object v8, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/systemui/widget/SystemUITextView;->setShadowLayer(FFFI)V

    :cond_45
    return-void

    :cond_46
    iget v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_97

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->adaptiveColorMain:Ljava/lang/String;

    if-eqz v5, :cond_97

    const-string/jumbo v5, "SystemUITextView"

    const-string/jumbo v6, "apply style: adaptive color"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v2

    if-eqz v2, :cond_25

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->adaptiveColorMain:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v0

    iget v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v3, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColorId:I

    const-string/jumbo v5, "SystemUITextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shadowColorResId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_97
    iget v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_25

    const-string/jumbo v5, "SystemUITextView"

    const-string/jumbo v6, "apply style: white-bg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColor:Ljava/lang/String;

    if-eqz v5, :cond_ca

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v4, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgColorId:I

    const-string/jumbo v5, "SystemUITextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "textColorResId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v5, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v3, v5, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColorId:I

    const-string/jumbo v5, "SystemUITextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shadowColorResId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :cond_f0
    if-lez v4, :cond_2a

    sget-object v5, Lcom/android/systemui/widget/SystemUITextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/widget/SystemUITextView;->setTextColor(I)V

    goto/16 :goto_2a
.end method
