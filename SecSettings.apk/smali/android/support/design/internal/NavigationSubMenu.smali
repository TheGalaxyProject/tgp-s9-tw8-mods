.class public Landroid/support/design/internal/NavigationSubMenu;
.super Landroid/support/v7/view/menu/SubMenuBuilder;
.source "NavigationSubMenu.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/NavigationMenu;Landroid/support/v7/view/menu/MenuItemImpl;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V

    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->onItemsChanged(Z)V

    invoke-virtual {p0}, Landroid/support/design/internal/NavigationSubMenu;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method
