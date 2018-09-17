.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    new-array v4, v9, [I

    aput v7, v4, v10

    aput v7, v4, v7

    aput v7, v4, v8

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v4, 0x5

    new-array v4, v4, [I

    aput v7, v4, v10

    aput v7, v4, v7

    aput v7, v4, v8

    aput v7, v4, v9

    aput v7, v4, v11

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    const/16 v4, 0xa

    new-array v4, v4, [[I

    new-array v5, v11, [I

    aput v9, v5, v10

    aput v8, v5, v7

    aput v7, v5, v8

    aput v7, v5, v9

    aput-object v5, v4, v10

    new-array v5, v11, [I

    aput v8, v5, v10

    aput v8, v5, v7

    aput v8, v5, v8

    aput v7, v5, v9

    aput-object v5, v4, v7

    new-array v5, v11, [I

    aput v8, v5, v10

    aput v7, v5, v7

    aput v8, v5, v8

    aput v8, v5, v9

    aput-object v5, v4, v8

    new-array v5, v11, [I

    aput v7, v5, v10

    aput v11, v5, v7

    aput v7, v5, v8

    aput v7, v5, v9

    aput-object v5, v4, v9

    new-array v5, v11, [I

    aput v7, v5, v10

    aput v7, v5, v7

    aput v9, v5, v8

    aput v8, v5, v9

    aput-object v5, v4, v11

    new-array v5, v11, [I

    aput v7, v5, v10

    aput v8, v5, v7

    aput v9, v5, v8

    aput v7, v5, v9

    const/4 v6, 0x5

    aput-object v5, v4, v6

    new-array v5, v11, [I

    aput v7, v5, v10

    aput v7, v5, v7

    aput v7, v5, v8

    aput v11, v5, v9

    const/4 v6, 0x6

    aput-object v5, v4, v6

    new-array v5, v11, [I

    aput v7, v5, v10

    aput v9, v5, v7

    aput v7, v5, v8

    aput v8, v5, v9

    const/4 v6, 0x7

    aput-object v5, v4, v6

    new-array v5, v11, [I

    aput v7, v5, v10

    aput v8, v5, v7

    aput v7, v5, v8

    aput v9, v5, v9

    const/16 v6, 0x8

    aput-object v5, v4, v6

    new-array v5, v11, [I

    aput v9, v5, v10

    aput v7, v5, v7

    aput v7, v5, v8

    aput v8, v5, v9

    const/16 v6, 0x9

    aput-object v5, v4, v6

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    const/16 v4, 0x14

    new-array v4, v4, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    const/16 v6, 0xa

    invoke-static {v4, v10, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xa

    :goto_b4
    const/16 v4, 0x14

    if-lt v0, v4, :cond_b9

    return-void

    :cond_b9
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v5, v0, -0xa

    aget-object v3, v4, v5

    array-length v4, v3

    new-array v2, v4, [I

    const/4 v1, 0x0

    :goto_c3
    array-length v4, v3

    if-lt v1, v4, :cond_cd

    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    :cond_cd
    array-length v4, v3

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c3
.end method

.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    return-void
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v6, 0x9

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v3, 0x0

    add-int/lit8 v1, v2, -0x2

    :goto_c
    if-gez v1, :cond_1a

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v2, -0x1

    :goto_12
    if-gez v1, :cond_2d

    rem-int/lit8 v5, v3, 0xa

    if-eqz v5, :cond_40

    :goto_18
    return v4

    :cond_19
    return v4

    :cond_1a
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    if-gez v0, :cond_27

    :cond_22
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_27
    if-gt v0, v6, :cond_22

    add-int/2addr v3, v0

    add-int/lit8 v1, v1, -0x2

    goto :goto_c

    :cond_2d
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    if-gez v0, :cond_3a

    :cond_35
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_3a
    if-gt v0, v6, :cond_35

    add-int/2addr v3, v0

    add-int/lit8 v1, v1, -0x2

    goto :goto_12

    :cond_40
    const/4 v4, 0x1

    goto :goto_18
.end method
