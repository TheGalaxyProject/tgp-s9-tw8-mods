.class Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RecyclerItemAdapter.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatchedLayerDrawable"
.end annotation


# direct methods
.method constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_18

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_18

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_18

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    xor-int/lit8 v1, v1, 0x1

    :cond_1a
    return v1
.end method
