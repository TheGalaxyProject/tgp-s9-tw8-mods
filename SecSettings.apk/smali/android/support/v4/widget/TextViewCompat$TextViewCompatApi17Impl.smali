.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi17Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;
.source "TextViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi17Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_18

    aget-object v3, v0, v7

    aget-object v1, v0, v6

    aput-object v3, v0, v6

    aput-object v1, v0, v7

    :cond_18
    return-object v0

    :cond_19
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_13

    move-object v1, p4

    :goto_b
    if-eqz v0, :cond_15

    :goto_d
    invoke-virtual {p1, v1, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_8

    :cond_13
    move-object v1, p2

    goto :goto_b

    :cond_15
    move-object p2, p4

    goto :goto_d
.end method
