.class public Landroid/support/v7/preference/SecEditTextPreference;
.super Lcom/android/settings/CustomEditTextPreference;
.source "SecEditTextPreference.java"


# instance fields
.field private mInputType:I

.field private mIsSetInputType:I

.field private mIsSummaryColorPrimaryDark:Z

.field private mMaxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const v2, 0x7f04009c

    const v3, 0x1010092

    invoke-static {p1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/preference/SecEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v2, 0x7f0d029b

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecEditTextPreference;->setDialogLayoutResource(I)V

    const-string/jumbo v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "maxLength"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2b

    iput v1, p0, Landroid/support/v7/preference/SecEditTextPreference;->mMaxLength:I

    :cond_2b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SecEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v1, p0, Landroid/support/v7/preference/SecEditTextPreference;->mIsSummaryColorPrimaryDark:Z

    const/16 v0, 0x40

    iput v0, p0, Landroid/support/v7/preference/SecEditTextPreference;->mMaxLength:I

    iput v1, p0, Landroid/support/v7/preference/SecEditTextPreference;->mIsSetInputType:I

    iput v1, p0, Landroid/support/v7/preference/SecEditTextPreference;->mInputType:I

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_32

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Landroid/support/v7/preference/SecEditTextPreference;->mMaxLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget v1, p0, Landroid/support/v7/preference/SecEditTextPreference;->mIsSetInputType:I

    if-ne v1, v4, :cond_32

    iget v1, p0, Landroid/support/v7/preference/SecEditTextPreference;->mInputType:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_32
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/CustomEditTextPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v2, p0, Landroid/support/v7/preference/SecEditTextPreference;->mIsSummaryColorPrimaryDark:Z

    if-eqz v2, :cond_20

    invoke-static {v0}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColorPrimaryDark(Landroid/widget/TextView;)V

    :goto_1f
    return-void

    :cond_20
    invoke-static {v0}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColorSecondary(Landroid/widget/TextView;)V

    goto :goto_1f
.end method

.method public setInputType(I)V
    .registers 3

    iput p1, p0, Landroid/support/v7/preference/SecEditTextPreference;->mInputType:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/preference/SecEditTextPreference;->mIsSetInputType:I

    return-void
.end method
