.class public Lcom/android/systemui/widget/SystemUIImageView;
.super Landroid/widget/ImageView;
.source "SystemUIImageView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIImageView$ResData;
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mHasAttr:Z

.field private mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sput-object p1, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    sget-object v1, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2c

    const-string/jumbo v1, "SystemUIImageView"

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
    .registers 7

    const/4 v4, 0x0

    new-instance v3, Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;-><init>(Lcom/android/systemui/widget/SystemUIImageView;Lcom/android/systemui/widget/SystemUIImageView$ResData;)V

    iput-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    if-eqz p1, :cond_91

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-lez v2, :cond_13

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    :cond_13
    const/4 v1, 0x0

    :goto_14
    if-ge v1, v2, :cond_8e

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_92

    :goto_1d
    :pswitch_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :pswitch_20
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set0(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_2a
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set3(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_34
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set15(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_3e
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set9(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_48
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set5(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_52
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set11(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_5c
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set17(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_66
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set19(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_70
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set1(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_7a
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set13(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :pswitch_84
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set7(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d

    :cond_8e
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    :cond_91
    return-void

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_70
        :pswitch_2a
        :pswitch_48
        :pswitch_1d
        :pswitch_84
        :pswitch_3e
        :pswitch_52
        :pswitch_1d
        :pswitch_1d
        :pswitch_7a
        :pswitch_34
        :pswitch_5c
        :pswitch_1d
        :pswitch_66
    .end packed-switch
.end method

.method private refreshResIds()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get3(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get3(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set4(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get14(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get14(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set16(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_34
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get8(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get8(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set10(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_4e
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get4(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get4(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set6(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_68
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get16(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get16(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set18(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_82
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get10(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get10(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set12(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_9c
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get18(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get18(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set20(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_b6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get1(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get1(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set2(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_d0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get12(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get12(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set14(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_ea
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get6(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get6(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set8(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_104
    return-void
.end method

.method private updateImage()V
    .registers 13

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9}, Lcom/android/systemui/widget/SystemUIImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get5(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get2(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a5

    const-string/jumbo v6, "SystemUIImageView"

    const-string/jumbo v7, "apply style: theme"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get11(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v4

    if-gtz v4, :cond_4f

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get9(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v6

    if-lez v6, :cond_49

    sget-object v6, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get9(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v7

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/widget/SystemUIImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_49
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get5(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v4

    :cond_4f
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get7(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    if-lez v3, :cond_76

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get9(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v6

    if-lez v6, :cond_76

    sget-object v6, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get9(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v7

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_76
    :goto_76
    if-lez v4, :cond_8d

    const-string/jumbo v6, "SystemUIImageView"

    const-string/jumbo v7, "set Image Drawable!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8d
    if-lez v3, :cond_a4

    const-string/jumbo v6, "SystemUIImageView"

    const-string/jumbo v7, "set Background Drawable!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a4
    return-void

    :cond_a5
    iget v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_107

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get0(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_107

    const-string/jumbo v6, "SystemUIImageView"

    const-string/jumbo v7, "apply style: adaptive color"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v5

    if-eqz v5, :cond_ff

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get0(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v6, "SystemUIImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "filter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "#%08X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_ff
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get5(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v4

    goto/16 :goto_76

    :cond_107
    iget v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_196

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get16(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11d

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get14(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_196

    :cond_11d
    const-string/jumbo v6, "SystemUIImageView"

    const-string/jumbo v7, "apply style: white-bg"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get17(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v4

    if-gtz v4, :cond_16d

    const-string/jumbo v6, "SystemUIImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "white-bg res invalid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get15(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v6

    if-lez v6, :cond_167

    sget-object v6, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get15(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v7

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/widget/SystemUIImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_167
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get5(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v4

    :cond_16d
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get13(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    if-lez v3, :cond_76

    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get15(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v6

    if-lez v6, :cond_76

    sget-object v6, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get15(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v7

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_76

    :cond_196
    const-string/jumbo v6, "SystemUIImageView"

    const-string/jumbo v7, "apply style: default"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76
.end method


# virtual methods
.method public invalidateImage()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_10
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 4

    const/16 v0, 0x10

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setAdaptiveColor(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set0(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_15
    const-string/jumbo v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdaptiveColor() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOriginBackground(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get1(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set1(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get1(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get1(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set2(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string/jumbo v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOriginBackground() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public setOriginImage(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get4(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set5(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get4(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get4(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set6(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string/jumbo v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOriginImage() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public setThemeBackground(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get6(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set7(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get6(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get6(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set8(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string/jumbo v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setThemeBackground() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public setThemeColor(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get8(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set9(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get8(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get8(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set10(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string/jumbo v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setThemeColor() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public setWhiteBgBackground(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get12(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set13(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get12(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get12(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set14(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string/jumbo v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWhitebgBackground() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public setWhiteBgColor(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get14(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set15(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get14(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get14(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set16(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string/jumbo v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWhiteBgColor() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public setWhiteBgImage(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get16(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set17(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get16(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    sget-object v0, Lcom/android/systemui/widget/SystemUIImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-get16(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->-set18(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    const-string/jumbo v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWhiteBgImage() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void
.end method

.method public updateStyle(I)V
    .registers 5

    const-string/jumbo v0, "SystemUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

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

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    return-void
.end method
