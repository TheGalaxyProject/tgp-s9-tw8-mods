.class public Lcom/android/systemui/qs/PagedTileLayout$TilePage;
.super Lcom/android/systemui/qs/TileLayout;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TilePage"
.end annotation


# instance fields
.field private mMaxRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    const v0, 0x7f0a0138

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setNextFocusUpId(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setFocusablility()V

    return-void
.end method

.method private getRows()I
    .registers 4

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "qs_tile_row"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public isFull()Z
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setFocusablility()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mListening:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setFocusable(Z)V

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setDescendantFocusability(I)V

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setFocusable(Z)V

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setDescendantFocusability(I)V

    goto :goto_d
.end method

.method public setListening(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/TileLayout;->setListening(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setFocusablility()V

    return-void
.end method

.method public updateResources()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getRows()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    if-eq v1, v2, :cond_17

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_10

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->requestLayout()V

    :cond_10
    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result v2

    if-nez v2, :cond_19

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_9

    :cond_19
    const/4 v0, 0x1

    goto :goto_16
.end method
