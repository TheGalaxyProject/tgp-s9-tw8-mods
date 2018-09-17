.class Landroid/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    new-array v0, v1, [J

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .registers 8

    const/4 v1, 0x0

    add-int/lit8 v0, p1, -0x1

    :goto_3
    if-gt v1, v0, :cond_16

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget v3, p0, v2

    if-ge v3, p2, :cond_10

    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    :cond_10
    if-le v3, p2, :cond_15

    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    :cond_15
    return v2

    :cond_16
    not-int v4, v1

    return v4
.end method

.method static binarySearch([JIJ)I
    .registers 10

    const/4 v1, 0x0

    add-int/lit8 v0, p1, -0x1

    :goto_3
    if-gt v1, v0, :cond_1a

    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    aget-wide v4, p0, v2

    cmp-long v3, v4, p2

    if-gez v3, :cond_12

    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    :cond_12
    cmp-long v3, v4, p2

    if-lez v3, :cond_19

    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    :cond_19
    return v2

    :cond_1a
    not-int v3, v1

    return v3
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_9

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static idealByteArraySize(I)I
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_14

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    return v1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    return p0
.end method

.method public static idealIntArraySize(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .registers 2

    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
