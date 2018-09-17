.class public Lcom/android/settings/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z

.field private mDisabledAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/settings/CheckableLinearLayout;->mDisabledAlpha:F

    return-void
.end method

.method private updateChecked()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/CheckableLinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_19

    invoke-virtual {p0, v2}, Lcom/android/settings/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/Checkable;

    if-eqz v3, :cond_16

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/android/settings/CheckableLinearLayout;->mChecked:Z

    invoke-interface {v1, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/CheckableLinearLayout;->mChecked:Z

    invoke-direct {p0}, Lcom/android/settings/CheckableLinearLayout;->updateChecked()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/CheckableLinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Lcom/android/settings/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_18

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_12
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    iget v2, p0, Lcom/android/settings/CheckableLinearLayout;->mDisabledAlpha:F

    goto :goto_12

    :cond_1b
    return-void
.end method

.method public toggle()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/CheckableLinearLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/CheckableLinearLayout;->setChecked(Z)V

    return-void
.end method
