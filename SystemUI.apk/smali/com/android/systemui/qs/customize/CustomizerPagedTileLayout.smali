.class public Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.super Landroid/support/v4/view/ViewPager;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;,
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;,
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;,
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v4/view/PagerAdapter;

.field protected mCellHeight:I

.field protected mCellMargin:I

.field private mCellMarginTop:I

.field protected mCellVerticalMargin:I

.field protected mColumns:I

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDecorGroup:Landroid/view/View;

.field private final mDistribute:Ljava/lang/Runnable;

.field protected mDividerHeight:I

.field private mDragListener:Landroid/view/View$OnDragListener;

.field private mElevation:F

.field private mPageBackground:Landroid/graphics/drawable/Drawable;

.field private mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field private mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mRows:I

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pageBackgroundResourceId:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPosition:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(I)V

    return-void
.end method

.method private addPage()V
    .registers 6

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0134

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->pageBackgroundResourceId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2c
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setElevation(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private distributeTiles()V
    .registers 14

    const v9, 0x7f0d0134

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    if-nez v0, :cond_45

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v9, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->pageBackgroundResourceId:I

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3b

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3b
    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setElevation(F)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    const/4 v2, 0x0

    :goto_46
    if-ge v2, v1, :cond_a4

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v8

    if-eqz v8, :cond_91

    add-int/lit8 v3, v3, 0x1

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v3, v8, :cond_91

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v9, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->pageBackgroundResourceId:I

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_87

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_87
    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setElevation(F)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_91
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v8, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_a4
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, v3, 0x1

    if-eq v8, v9, :cond_e7

    :goto_ae
    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_cf

    const-string/jumbo v8, "CSTMPagedTileLayout"

    const-string/jumbo v9, "mPages.remove"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_ae

    :cond_cf
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v12, v12}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    :cond_e7
    const/4 v2, 0x0

    :goto_e8
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_104

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    :cond_104
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v12, v12}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method private movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .registers 14

    const/4 v11, 0x0

    const/16 v10, 0xcc

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v2

    iget v7, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    if-ne v7, v10, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_17

    return-void

    :cond_14
    if-nez v2, :cond_17

    return-void

    :cond_17
    if-ne v7, v10, :cond_42

    const/4 v3, 0x1

    :goto_1a
    if-ne v7, v10, :cond_44

    const/4 v9, 0x0

    :goto_1d
    if-ne v7, v10, :cond_4e

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    add-int/lit8 v6, v0, -0x1

    :goto_28
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    add-int/lit8 v8, v0, -0x1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v5

    if-nez v5, :cond_50

    return-void

    :cond_42
    const/4 v3, -0x1

    goto :goto_1a

    :cond_44
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x1

    goto :goto_1d

    :cond_4e
    const/4 v6, 0x0

    goto :goto_28

    :cond_50
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v5, v11}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    iget-object v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v4, v8, v11}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;IILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    invoke-virtual {v10, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private postDistributeTiles()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removePage()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_36

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    :goto_30
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void

    :cond_36
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    goto :goto_30
.end method

.method private updateTilesInfo()V
    .registers 6

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_6
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_33

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_33
    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .registers 11

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_e
    if-lt v1, v0, :cond_77

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v5

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_52

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addPage()V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v2, v7, v7}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v2, v7}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_52
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v2, v7, v7}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v2, v7}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    goto :goto_4f

    :cond_77
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, p2, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    return-void
.end method

.method public addTiles(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->postDistributeTiles()V

    return-void
.end method

.method public getColumnCount()I
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mColumns:I

    return v0
.end method

.method public getCurrentItem()I
    .registers 3

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getRtlPosition(I)I

    move-result v1

    return v1
.end method

.method public getMinimumTileNum()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v0

    return v0

    :cond_1f
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected getRtlPosition(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_14
    return p1
.end method

.method public getSpec()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_33

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_33
    const-string/jumbo v5, "CSTMPagedTileLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "newspecs =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getTilesInfo()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_20

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_20
    return-object v2
.end method

.method public getTotalPages()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    :cond_b
    return v0
.end method

.method public handleAnimate(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xca

    if-ne v3, v4, :cond_1a

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_19

    :cond_2c
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xcb

    if-eq v3, v4, :cond_38

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_3c

    :cond_38
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    goto :goto_19

    :cond_3c
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_19

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_19
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_28

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070473

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    :cond_28
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    const-string/jumbo v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "onFinishInflate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onFinishInflate()V

    const v0, 0x7f0a03ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecPageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int v0, v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellVerticalMargin:I

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMarginTop:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method public removeAllPage()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAllViews()V
    .registers 4

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_17

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeAllViews()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .registers 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_d
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_50

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v2

    if-nez v2, :cond_22

    return-void

    :cond_22
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v2, v7}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v5

    if-nez v5, :cond_4d

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_50
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v5

    if-nez v5, :cond_6f

    if-eqz v0, :cond_6f

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    :cond_6f
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->pageBackgroundResourceId:I

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setDragListener(Landroid/view/View$OnDragListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method public setElevation(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    return-void
.end method

.method public setPageMaxRows(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    return-void
.end method

.method public updateResources()Z
    .registers 9

    const-string/jumbo v5, "CSTMPagedTileLayout"

    const-string/jumbo v6, "updateResources"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_91

    const/4 v2, 0x1

    :goto_1a
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellVerticalMargin:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    const v5, 0x7f0704c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMargin:I

    const v5, 0x7f0704cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMarginTop:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDividerHeight:I

    const-class v5, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v6, "qs_tile_column"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    const/4 v1, 0x0

    :goto_6c
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_93

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_91
    const/4 v2, 0x0

    goto :goto_1a

    :cond_93
    if-eqz v0, :cond_9e

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateTilesInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    :cond_9e
    const/4 v5, 0x1

    return v5
.end method
