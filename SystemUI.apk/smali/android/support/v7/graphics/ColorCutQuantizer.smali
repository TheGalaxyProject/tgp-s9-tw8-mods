.class final Landroid/support/v7/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/ColorCutQuantizer$1;,
        Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mColors:[I

.field final mFilters:[Landroid/support/v7/graphics/Palette$Filter;

.field final mHistogram:[I

.field final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field final mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v7/graphics/ColorCutQuantizer$1;

    invoke-direct {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([II[Landroid/support/v7/graphics/Palette$Filter;)V
    .registers 19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTempHsl:[F

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    const v9, 0x8000

    new-array v6, v9, [I

    iput-object v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    const/4 v7, 0x0

    :goto_17
    move-object/from16 v0, p1

    array-length v9, v0

    if-ge v7, v9, :cond_2d

    aget v9, p1, v7

    invoke-static {v9}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v8

    aput v8, p1, v7

    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_2d
    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2f
    array-length v9, v6

    if-ge v1, v9, :cond_48

    aget v9, v6, v1

    if-lez v9, :cond_3f

    invoke-direct {p0, v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v9

    if-eqz v9, :cond_3f

    const/4 v9, 0x0

    aput v9, v6, v1

    :cond_3f
    aget v9, v6, v1

    if-lez v9, :cond_45

    add-int/lit8 v3, v3, 0x1

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_48
    new-array v2, v3, [I

    iput-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_4e
    array-length v9, v6

    if-ge v1, v9, :cond_5d

    aget v9, v6, v1

    if-lez v9, :cond_5a

    add-int/lit8 v5, v4, 0x1

    aput v1, v2, v4

    move v4, v5

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_5d
    move/from16 v0, p2

    if-gt v3, v0, :cond_81

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    const/4 v9, 0x0

    array-length v10, v2

    :goto_6a
    if-ge v9, v10, :cond_89

    aget v1, v2, v9

    iget-object v11, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v12, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v13

    aget v14, v6, v1

    invoke-direct {v12, v13, v14}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    :cond_81
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    :cond_89
    return-void
.end method

.method private static approximateToRgb888(I)I
    .registers 4

    invoke-static {p0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    invoke-static {p0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    return v0
.end method

.method static approximateToRgb888(III)I
    .registers 7

    const/16 v3, 0x8

    const/4 v2, 0x5

    invoke-static {p0, v2, v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    invoke-static {p1, v2, v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    invoke-static {p2, v2, v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    invoke-virtual {v2}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getAverageColor()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    return-object v0
.end method

.method static modifySignificantOctet([IIII)V
    .registers 8

    packed-switch p1, :pswitch_data_3c

    :cond_3
    :pswitch_3
    return-void

    :pswitch_4
    move v1, p2

    :goto_5
    if-gt v1, p3, :cond_3

    aget v0, p0, v1

    invoke-static {v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    invoke-static {v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    invoke-static {v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_20
    move v1, p2

    :goto_21
    if-gt v1, p3, :cond_3

    aget v0, p0, v1

    invoke-static {v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    invoke-static {v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    invoke-static {v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :pswitch_data_3c
    .packed-switch -0x3
        :pswitch_3
        :pswitch_4
        :pswitch_20
    .end packed-switch
.end method

.method private static modifyWordWidth(III)I
    .registers 5

    if-le p2, p1, :cond_c

    sub-int v1, p2, p1

    shl-int v0, p0, v1

    :goto_6
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    return v1

    :cond_c
    sub-int v1, p1, p2

    shr-int v0, p0, v1

    goto :goto_6
.end method

.method private static quantizeFromRgb888(I)I
    .registers 7

    const/16 v5, 0x8

    const/4 v4, 0x5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3, v5, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v5, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3, v5, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    shl-int/lit8 v3, v2, 0xa

    shl-int/lit8 v4, v1, 0x5

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    return v3
.end method

.method private quantizePixels(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Landroid/support/v7/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v1, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;-><init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Landroid/support/v7/graphics/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    invoke-direct {p0, v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static quantizedBlue(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static quantizedGreen(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static quantizedRed(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private shouldIgnoreColor(I)Z
    .registers 4

    invoke-static {p1}, Landroid/support/v7/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-direct {p0, v0, v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v1

    return v1
.end method

.method private shouldIgnoreColor(I[F)Z
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    array-length v2, v2

    if-lez v2, :cond_1f

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    array-length v0, v2

    :goto_e
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    aget-object v2, v2, v1

    invoke-interface {v2, p1, p2}, Landroid/support/v7/graphics/Palette$Filter;->isAllowed(I[F)Z

    move-result v2

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    return v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    return v3
.end method

.method private shouldIgnoreColor(Landroid/support/v7/graphics/Palette$Swatch;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v0

    return v0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-ge v1, p2, :cond_20

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->splitBox()Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1f
    return-void

    :cond_20
    return-void
.end method


# virtual methods
.method getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method
