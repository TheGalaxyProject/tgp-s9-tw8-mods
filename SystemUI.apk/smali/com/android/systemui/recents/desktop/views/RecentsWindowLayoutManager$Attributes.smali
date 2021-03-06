.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;
.super Ljava/lang/Object;
.source "RecentsWindowLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field public mBtnContainerMarginRight:I

.field public mBtnContainerMarginTopRow1:I

.field public mBtnContainerMarginTopRow2:I

.field public mButtonContainterHeight:I

.field public mNaviBarHeight:I

.field public mRecentsLayoutHeightRow1:I

.field public mRecentsLayoutHeightRow2:I

.field public mRecentsLayoutWidth:I

.field public mTaskViewBottomMargin:I

.field public mTaskViewFocusPadding:I

.field public mTaskViewGap:I

.field public mTaskViewHeight:I

.field public mTaskViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->load(Landroid/content/Context;)V

    return-void
.end method

.method private load(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070575

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    const v1, 0x7f070572

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutHeightRow1:I

    const v1, 0x7f070573

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutHeightRow2:I

    const v1, 0x7f070568

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    const v1, 0x7f070567

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewFocusPadding:I

    const v1, 0x7f070571

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewWidth:I

    const v1, 0x7f07056e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewHeight:I

    const v1, 0x7f070566

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewBottomMargin:I

    const v1, 0x7f07055c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mBtnContainerMarginTopRow1:I

    const v1, 0x7f07055d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mBtnContainerMarginTopRow2:I

    const v1, 0x7f07055b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mBtnContainerMarginRight:I

    const v1, 0x7f0704f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mButtonContainterHeight:I

    const-string/jumbo v1, "navigation_bar_height"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mNaviBarHeight:I

    return-void
.end method


# virtual methods
.method public reinitialize(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->load(Landroid/content/Context;)V

    return-void
.end method
