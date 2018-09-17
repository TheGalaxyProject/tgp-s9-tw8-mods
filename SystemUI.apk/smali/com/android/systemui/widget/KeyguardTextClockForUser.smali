.class public Lcom/android/systemui/widget/KeyguardTextClockForUser;
.super Landroid/widget/TextClock;
.source "KeyguardTextClockForUser.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAdaptiveColorEnabled:Z

.field private mAdaptiveColors:[I

.field private mAttrCount:I

.field private mFontEffectUtil:Lcom/android/systemui/util/KeyguardFontEffectUtil;

.field private mIsVertical:Z

.field private mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mUpdateFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    iput-boolean v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColorEnabled:Z

    iput v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAttrCount:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColors:[I

    iput-boolean v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mIsVertical:Z

    sput-object p1, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->initAttributeSet(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lcom/android/systemui/util/KeyguardFontEffectUtil;

    invoke-direct {v1}, Lcom/android/systemui/util/KeyguardFontEffectUtil;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mFontEffectUtil:Lcom/android/systemui/util/KeyguardFontEffectUtil;

    return-void
.end method

.method private getResIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    sget-object v1, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2c

    const-string/jumbo v1, "KeyguardTextClockForUser"

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

    new-instance v2, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;-><init>(Lcom/android/systemui/widget/KeyguardTextClockForUser;Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)V

    iput-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAttrCount:I

    const/4 v1, 0x0

    :goto_11
    iget v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAttrCount:I

    if-ge v1, v2, :cond_7a

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_7e

    :goto_1c
    :pswitch_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :pswitch_1f
    iget-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set0(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_29
    iget-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set1(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_33
    iget-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set2(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_3d
    iget-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set11(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_47
    iget-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set6(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_51
    iget-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set4(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_5b
    iget-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set13(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_65
    iget-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set8(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1c

    :pswitch_6f
    iget-object v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set10(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;I)I

    goto :goto_1c

    :cond_7a
    invoke-direct {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->refreshResIds()V

    :cond_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_29
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_33
        :pswitch_1c
        :pswitch_51
        :pswitch_1c
        :pswitch_47
        :pswitch_1c
        :pswitch_65
        :pswitch_6f
        :pswitch_1c
        :pswitch_3d
        :pswitch_1c
        :pswitch_5b
    .end packed-switch
.end method

.method private refreshResIds()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get2(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get2(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set3(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;I)I

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get11(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get11(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set12(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;I)I

    :cond_34
    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get6(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get6(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set7(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;I)I

    :cond_4e
    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get4(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get4(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set5(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;I)I

    :cond_68
    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get13(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get13(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set14(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;I)I

    :cond_82
    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get8(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get8(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "color"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-set9(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;I)I

    :cond_9c
    return-void
.end method

.method private setTextFontEffect()V
    .registers 4

    sget-object v1, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a98

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mFontEffectUtil:Lcom/android/systemui/util/KeyguardFontEffectUtil;

    invoke-static {v0}, Lcom/android/systemui/util/KeyguardFontEffectUtil;->parsingFontEffectString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mFontEffectUtil:Lcom/android/systemui/util/KeyguardFontEffectUtil;

    invoke-static {p0}, Lcom/android/systemui/util/KeyguardFontEffectUtil;->setTextFontEffect(Landroid/widget/TextView;)V

    :cond_20
    return-void
.end method

.method private updateFont()V
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getOpenThemeClockFont()Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2d
    return-void

    :cond_2e
    sget-object v2, Lcom/android/systemui/Rune;->KEYWI_VALUE_CLOCK_FONT_STYLE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string/jumbo v2, "KeyguardTextClockForUser"

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

.method private updateTextClockView()V
    .registers 14

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->semClearAllTextEffect()V

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVerticalClock()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mIsVertical:Z

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get3(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get5(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v3

    const/4 v0, 0x0

    iget v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mUpdateFlag:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_ab

    const-string/jumbo v6, "KeyguardTextClockForUser"

    const-string/jumbo v7, "apply style: theme"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get7(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get9(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v3

    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getShadowColor()I

    move-result v2

    iget-boolean v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColorEnabled:Z

    if-eqz v6, :cond_127

    move v4, v0

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get5(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v6

    if-lez v6, :cond_55

    sget-object v6, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get5(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v7

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    :cond_55
    :goto_55
    const-string/jumbo v6, "KeyguardTextClockForUser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "textColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "#%08X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", shadowColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "#%08X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getShadowRadius()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getShadowDx()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getShadowDy()F

    move-result v8

    invoke-virtual {p0, v6, v7, v8, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setShadowLayer(FFFI)V

    return-void

    :cond_ab
    iget v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mUpdateFlag:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_fa

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get0(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_fa

    const-string/jumbo v6, "KeyguardTextClockForUser"

    const-string/jumbo v7, "apply style: adaptive color"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v1

    if-eqz v1, :cond_34

    iput-boolean v12, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColorEnabled:Z

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get10(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v6

    if-ne v6, v12, :cond_da

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getMedianColor()I

    move-result v0

    goto/16 :goto_34

    :cond_da
    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColors:[I

    iget-object v7, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get0(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v11

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColors:[I

    iget-object v7, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get1(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v12

    invoke-virtual {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->invalidate()V

    return-void

    :cond_fa
    iget v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mUpdateFlag:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_34

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get11(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_34

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get13(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_34

    const-string/jumbo v6, "KeyguardTextClockForUser"

    const-string/jumbo v7, "apply style: white-bg"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get12(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get14(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v3

    goto/16 :goto_34

    :cond_127
    if-lez v5, :cond_12b

    if-gtz v3, :cond_151

    :cond_12b
    const-string/jumbo v6, "KeyguardTextClockForUser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid res = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_151
    sget-object v6, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    sget-object v6, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    goto/16 :goto_55
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextClock;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setShowCurrentUserTime(Z)V

    iget v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAttrCount:I

    if-lez v0, :cond_14

    sget-object v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_14
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextClock;->onDetachedFromWindow()V

    iget v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAttrCount:I

    if-lez v0, :cond_10

    sget-object v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_10
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColors:[I

    if-eqz v5, :cond_e2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColorEnabled:Z

    if-eqz v5, :cond_e2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get10(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v16

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mIsVertical:Z

    if-eqz v5, :cond_39

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    :cond_39
    const/high16 v19, 0x66000000

    if-eqz v16, :cond_40

    const v19, 0x76ffffff

    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getShadowDy()F

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getShadowRadius()F

    move-result v21

    if-eqz v16, :cond_dc

    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v21, 0x40400000    # 3.0f

    :goto_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getShadowDx()F

    move-result v5

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super/range {p0 .. p1}, Landroid/widget/TextClock;->onDraw(Landroid/graphics/Canvas;)V

    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v5

    const/4 v5, 0x2

    new-array v10, v5, [F

    fill-array-data v10, :array_f0

    const-wide v22, 0x4056800000000000L    # 90.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v5, v0

    mul-float v7, v5, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v5, v0

    mul-float v8, v5, v15

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColors:[I

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->clearShadowLayer()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mIsVertical:Z

    if-eqz v5, :cond_d8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mResData:Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;->-get10(Lcom/android/systemui/widget/KeyguardTextClockForUser$ResData;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d8

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/LinearGradient;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v15, v6

    neg-float v6, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_d8
    invoke-super/range {p0 .. p1}, Landroid/widget/TextClock;->onDraw(Landroid/graphics/Canvas;)V

    :goto_db
    return-void

    :cond_dc
    const/high16 v20, 0x40000000    # 2.0f

    const/high16 v21, 0x40000000    # 2.0f

    goto/16 :goto_4e

    :cond_e2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super/range {p0 .. p1}, Landroid/widget/TextClock;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_db

    :array_f0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/TextClock;->onFinishInflate()V

    return-void
.end method

.method public updateStyle(I)V
    .registers 5

    const-string/jumbo v0, "KeyguardTextClockForUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle() flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mUpdateFlag:I

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

    invoke-virtual {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mAdaptiveColorEnabled:Z

    iput p1, p0, Lcom/android/systemui/widget/KeyguardTextClockForUser;->mUpdateFlag:I

    invoke-direct {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->refreshResIds()V

    invoke-direct {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->updateTextClockView()V

    invoke-direct {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->updateFont()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-direct {p0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTextFontEffect()V

    :cond_51
    return-void
.end method
