.class final Landroid/support/v4/widget/SearchViewCompat$1;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method