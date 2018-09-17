.class public Lcom/android/settings/SelectableEditTextPreference;
.super Lcom/android/settings/CustomEditTextPreference;
.source "SelectableEditTextPreference.java"


# instance fields
.field private mSelectionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/SelectableEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_16
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    iget v2, p0, Lcom/android/settings/SelectableEditTextPreference;->mSelectionMode:I

    packed-switch v2, :pswitch_data_34

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/4 v1, 0x0

    goto :goto_16

    :pswitch_28
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_25

    :pswitch_2c
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_25

    :pswitch_30
    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_25

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_28
        :pswitch_2c
        :pswitch_30
    .end packed-switch
.end method
