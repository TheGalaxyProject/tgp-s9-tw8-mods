.class public Lcom/android/systemui/widget/SystemUIButton;
.super Landroid/widget/Button;
.source "SystemUIButton.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIButton$ResData;
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mAttrCount:I

.field private mDensityDpi:I

.field private mFontScale:F

.field private mOriginalFontSize:F

.field protected mOriginalFontSizeDp:F

.field private mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    sput-object p1, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIButton;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    sget-object v1, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2c

    const-string/jumbo v1, "SystemUIButton"

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

    const/4 v3, 0x0

    new-instance v2, Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;-><init>(Lcom/android/systemui/widget/SystemUIButton;Lcom/android/systemui/widget/SystemUIButton$ResData;)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    const/4 v1, 0x0

    :goto_11
    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-ge v1, v2, :cond_83

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_88

    :goto_1c
    :pswitch_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :pswitch_1f
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set0(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_29
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set3(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_33
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set15(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_3d
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set9(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_47
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set5(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_51
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set17(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_5b
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set11(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_65
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set1(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_6f
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set13(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_79
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set7(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :cond_83
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    :cond_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_65
        :pswitch_29
        :pswitch_1c
        :pswitch_47
        :pswitch_79
        :pswitch_3d
        :pswitch_1c
        :pswitch_5b
        :pswitch_1c
        :pswitch_6f
        :pswitch_33
        :pswitch_1c
        :pswitch_51
    .end packed-switch
.end method

.method private refreshResIds()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get3(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get3(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set4(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get15(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get15(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set16(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_34
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get9(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get9(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set10(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_4e
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get5(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get5(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set6(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_68
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get17(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get17(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set18(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_82
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get11(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get11(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set12(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_9c
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get1(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get1(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set2(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_b6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get13(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get13(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set14(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_d0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get7(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get7(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-set8(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_ea
    return-void
.end method

.method private updateButtonColor()V
    .registers 16

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->semClearAllTextEffect()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getPaddingRight()I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get4(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get6(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get2(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v4

    sget-object v9, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    sget-object v9, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iget v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_9c

    const-string/jumbo v9, "SystemUIButton"

    const-string/jumbo v10, "apply style: theme"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get10(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get12(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    sget-object v9, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    sget-object v9, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get8(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v4

    :cond_72
    :goto_72
    if-lez v8, :cond_76

    if-gtz v6, :cond_fd

    :cond_76
    const-string/jumbo v9, "SystemUIButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid res = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9c
    iget v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_b4

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get0(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b4

    const-string/jumbo v9, "SystemUIButton"

    const-string/jumbo v10, "apply style: adaptive color"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_b4
    iget v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_72

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get15(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_72

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get17(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_72

    const-string/jumbo v9, "SystemUIButton"

    const-string/jumbo v10, "apply style: white-bg"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get16(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get18(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    sget-object v9, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    sget-object v9, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->-get14(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v4

    goto/16 :goto_72

    :cond_fd
    const-string/jumbo v9, "SystemUIButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "textColor="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "#%08X"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", shadowColor="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "#%08X"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/systemui/widget/SystemUIButton;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getShadowRadius()F

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getShadowDx()F

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getShadowDy()F

    move-result v11

    invoke-virtual {p0, v9, v10, v11, v5}, Lcom/android/systemui/widget/SystemUIButton;->setShadowLayer(FFFI)V

    if-lez v4, :cond_16a

    sget-object v9, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/widget/SystemUIButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_166
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/systemui/widget/SystemUIButton;->setPadding(IIII)V

    return-void

    :cond_16a
    const-string/jumbo v9, "SystemUIButton"

    const-string/jumbo v10, "resBgId is null!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_166
.end method

.method private updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .registers 7

    const/4 v4, 0x0

    sget-object v2, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v1

    const/4 v0, 0x0

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    if-eq v2, v3, :cond_15

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v0, 0x1

    :cond_15
    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_20

    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    const/4 v0, 0x1

    :cond_20
    if-eqz v0, :cond_37

    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iget v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    mul-float/2addr v2, v3

    sget-object v3, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/widget/SystemUIButton;->setTextSize(IF)V

    :cond_37
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-lez v0, :cond_10

    sget-object v0, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_10
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-lez v0, :cond_10

    sget-object v0, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_10
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getTextSize()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSize:F

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3b

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSize:F

    mul-float v3, v0, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    sget-object v3, Lcom/android/systemui/widget/SystemUIButton;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/widget/SystemUIButton;->setTextSize(IF)V

    :cond_3b
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateStyle(I)V
    .registers 5

    const-string/jumbo v0, "SystemUIButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

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

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->updateButtonColor()V

    return-void
.end method
