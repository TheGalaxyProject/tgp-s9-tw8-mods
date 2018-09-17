.class public Lcom/samsung/android/settings/widget/BottomBarButton;
.super Landroid/widget/Button;
.source "BottomBarButton.java"


# instance fields
.field private isEnabledShowBtnBg:Z

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->mTextColor:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->isEnabledShowBtnBg:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->mTextColor:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/BottomBarButton;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/BottomBarButton;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->isEnabledShowBtnBg:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->isEnabledShowBtnBg:Z

    if-eqz v0, :cond_36

    const v0, 0x7f08074b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;->setBackgroundResource(I)V

    :cond_36
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_b

    iget v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->mTextColor:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;->setTextColor(I)V

    :goto_a
    return-void

    :cond_b
    iget v0, p0, Lcom/samsung/android/settings/widget/BottomBarButton;->mTextColor:I

    const v1, 0x47252525

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/BottomBarButton;->setTextColor(I)V

    goto :goto_a
.end method
