.class public interface abstract Landroid/support/v7/widget/DecorToolbar;
.super Ljava/lang/Object;
.source "DecorToolbar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
.end method

.method public abstract setMenuPrepared()V
.end method

.method public abstract setWindowCallback(Landroid/view/Window$Callback;)V
.end method

.method public abstract setWindowTitle(Ljava/lang/CharSequence;)V
.end method
