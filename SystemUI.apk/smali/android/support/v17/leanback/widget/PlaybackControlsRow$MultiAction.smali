.class public abstract Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.super Landroid/support/v17/leanback/widget/Action;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiAction"
.end annotation


# instance fields
.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mIndex:I

.field private mLabels:[Ljava/lang/String;

.field private mLabels2:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/Action;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getActionCount()I
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0

    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    return v0
.end method

.method public nextIndex()V
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->getActionCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_12

    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    :goto_e
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setDrawables([Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    return-void
.end method

.method public setIndex(I)V
    .registers 4

    iput p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setLabel1(Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels2:[Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels2:[Ljava/lang/String;

    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setLabel2(Ljava/lang/CharSequence;)V

    :cond_29
    return-void
.end method

.method public setLabels([Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    return-void
.end method

.method public setSecondaryLabels([Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->mLabels2:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;->setIndex(I)V

    return-void
.end method
