.class public Lcom/android/server/accessibility/ColorTransferTable;
.super Ljava/lang/Object;
.source "ColorTransferTable.java"


# static fields
.field public static final BLUE:I = 0x5

.field public static final CYAN:I = 0x4

.field private static final DEUTAN:I = 0x1

.field private static final Deutan_severity:[D

.field private static final Deutan_userParameter:[D

.field public static final GREEN:I = 0x3

.field public static final MAGENTA:I = 0x6

.field private static final MAX:I = 0x0

.field private static final MAX_MIN_COLOR_TRANSFER_NUM:I = 0x2

.field private static final MIN:I = 0x1

.field private static final PROTAN:I = 0x0

.field private static final Protan_severity:[D

.field private static final Protan_userParameter:[D

.field public static final RED:I = 0x1

.field private static final TRITAN:I = 0x2

.field private static final Tritan_severity:[D

.field private static final Tritan_userParameter:[D

.field public static final YELLOW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x19

    new-array v0, v1, [D

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_96

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_fe

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_166

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1ce

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_236

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    return-void

    nop

    :array_2e
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_96
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_fe
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_166
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1ce
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_236
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3ff0000000000000L    # 1.0
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMaxMinColorTrnasferValue_BB_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xcc

    const/16 v1, 0xc9

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xcc

    const/16 v1, 0xc9

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xcc

    const/16 v1, 0xcc

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xcc

    const/16 v1, 0xcd

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xcd

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xcc

    const/16 v1, 0xda

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xcc

    const/16 v1, 0xe1

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xcc

    const/16 v1, 0xe7

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xcc

    const/16 v1, 0xed

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xcc

    const/16 v1, 0xf4

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_92

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_ac

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_8e

    packed-switch v0, :pswitch_data_c6

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x6

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/16 v1, 0xc

    goto :goto_11

    :pswitch_6e
    const/4 v3, 0x0

    const/16 v1, 0x10

    goto :goto_11

    :pswitch_72
    const/4 v3, 0x0

    const/16 v1, 0x15

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/16 v1, 0x1a

    goto :goto_11

    :pswitch_7a
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_11

    :pswitch_7e
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/16 v1, 0x33

    goto :goto_11

    :pswitch_86
    const/4 v3, 0x0

    const/16 v1, 0x3d

    goto :goto_11

    :pswitch_8a
    const/4 v3, 0x0

    const/16 v1, 0x47

    goto :goto_11

    :cond_8e
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6e
        :pswitch_72
        :pswitch_76
        :pswitch_7a
        :pswitch_7e
        :pswitch_82
        :pswitch_86
        :pswitch_8a
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_8e

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_a8

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_8a

    packed-switch v0, :pswitch_data_c2

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_11

    :pswitch_7a
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_11

    :pswitch_7e
    const/4 v3, 0x0

    const/16 v1, 0x33

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/16 v1, 0x3d

    goto :goto_11

    :pswitch_86
    const/4 v3, 0x0

    const/16 v1, 0x47

    goto :goto_11

    :cond_8a
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_7a
        :pswitch_7e
        :pswitch_82
        :pswitch_86
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_96

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_b0

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_91

    packed-switch v0, :pswitch_data_ca

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x6

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/16 v1, 0xc

    goto :goto_11

    :pswitch_6e
    const/4 v3, 0x0

    const/16 v1, 0x10

    goto :goto_11

    :pswitch_72
    const/4 v3, 0x0

    const/16 v1, 0x15

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/16 v1, 0x1a

    goto :goto_11

    :pswitch_7a
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_11

    :pswitch_7e
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_11

    :pswitch_82
    const/16 v3, 0x20

    const/16 v1, 0x53

    goto :goto_11

    :pswitch_87
    const/16 v3, 0x29

    const/16 v1, 0x66

    goto :goto_11

    :pswitch_8c
    const/16 v3, 0x2f

    const/16 v1, 0x76

    goto :goto_11

    :cond_91
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6e
        :pswitch_72
        :pswitch_76
        :pswitch_7a
        :pswitch_7e
        :pswitch_82
        :pswitch_87
        :pswitch_8c
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_3c

    packed-switch v0, :pswitch_data_a0

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/16 v1, 0x9

    goto :goto_11

    :pswitch_1d
    const/4 v3, 0x0

    const/16 v1, 0xf

    goto :goto_11

    :pswitch_21
    const/4 v3, 0x0

    const/16 v1, 0x16

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/16 v1, 0x1e

    goto :goto_11

    :pswitch_29
    const/4 v3, 0x0

    const/16 v1, 0x27

    goto :goto_11

    :pswitch_2d
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_30
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_33
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_36
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_39
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_3c
    if-ne p1, v5, :cond_68

    packed-switch v0, :pswitch_data_ba

    goto :goto_11

    :pswitch_42
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_45
    const/4 v3, 0x0

    const/16 v1, 0xb

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/16 v1, 0x11

    goto :goto_11

    :pswitch_4d
    const/4 v3, 0x0

    const/16 v1, 0x18

    goto :goto_11

    :pswitch_51
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_11

    :pswitch_59
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_5c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_5f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_62
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_65
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_68
    if-ne p1, v6, :cond_9c

    packed-switch v0, :pswitch_data_d4

    goto :goto_11

    :pswitch_6e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_71
    const/4 v3, 0x0

    const/4 v1, 0x4

    goto :goto_11

    :pswitch_74
    const/4 v3, 0x0

    const/4 v1, 0x6

    goto :goto_11

    :pswitch_77
    const/4 v3, 0x0

    const/16 v1, 0x8

    goto :goto_11

    :pswitch_7b
    const/4 v3, 0x0

    const/16 v1, 0x9

    goto :goto_11

    :pswitch_7f
    const/4 v3, 0x0

    const/16 v1, 0xa

    goto :goto_11

    :pswitch_83
    const/4 v3, 0x0

    const/16 v1, 0x20

    goto :goto_11

    :pswitch_87
    const/4 v3, 0x0

    const/16 v1, 0x29

    goto :goto_11

    :pswitch_8b
    const/16 v3, 0x20

    const/16 v1, 0x53

    goto :goto_11

    :pswitch_90
    const/16 v3, 0x29

    const/16 v1, 0x66

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0x2f

    const/16 v1, 0x76

    goto/16 :goto_11

    :cond_9c
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_42
        :pswitch_45
        :pswitch_49
        :pswitch_4d
        :pswitch_51
        :pswitch_55
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_71
        :pswitch_74
        :pswitch_77
        :pswitch_7b
        :pswitch_7f
        :pswitch_83
        :pswitch_87
        :pswitch_8b
        :pswitch_90
        :pswitch_96
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xcc

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xc9

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xcc

    const/16 v1, 0xc9

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xcc

    const/16 v1, 0xc8

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xcc

    const/16 v1, 0xcd

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xcc

    const/16 v1, 0xd7

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xe1

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xcc

    const/16 v1, 0xe6

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xcf

    const/16 v1, 0xe6

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xcc

    const/16 v1, 0xd8

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xcc

    const/16 v1, 0xe0

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xe8

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xcc

    const/16 v1, 0xf2

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xcc

    const/16 v1, 0xfd

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xcc

    const/16 v1, 0xd0

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xcc

    const/16 v1, 0xd2

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xcc

    const/16 v1, 0xd2

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_88

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_a2

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_85

    packed-switch v0, :pswitch_data_bc

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_79
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_85
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_88

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_a2

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_85

    packed-switch v0, :pswitch_data_bc

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_79
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_85
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4b

    packed-switch v0, :pswitch_data_ba

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/16 v3, 0x13

    const/16 v1, 0x13

    goto :goto_11

    :pswitch_1e
    const/16 v3, 0x25

    const/16 v1, 0x25

    goto :goto_11

    :pswitch_23
    const/16 v3, 0x33

    const/16 v1, 0x33

    goto :goto_11

    :pswitch_28
    const/16 v3, 0x3f

    const/16 v1, 0x3f

    goto :goto_11

    :pswitch_2d
    const/16 v3, 0x4b

    const/16 v1, 0x4b

    goto :goto_11

    :pswitch_32
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_11

    :pswitch_37
    const/16 v3, 0x5d

    const/16 v1, 0x5d

    goto :goto_11

    :pswitch_3c
    const/16 v3, 0x67

    const/16 v1, 0x67

    goto :goto_11

    :pswitch_41
    const/16 v3, 0x6d

    const/16 v1, 0x6d

    goto :goto_11

    :pswitch_46
    const/16 v3, 0x73

    const/16 v1, 0x73

    goto :goto_11

    :cond_4b
    if-ne p1, v5, :cond_86

    packed-switch v0, :pswitch_data_d4

    goto :goto_11

    :pswitch_51
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_54
    const/16 v3, 0x13

    const/16 v1, 0x13

    goto :goto_11

    :pswitch_59
    const/16 v3, 0x23

    const/16 v1, 0x23

    goto :goto_11

    :pswitch_5e
    const/16 v3, 0x2f

    const/16 v1, 0x2f

    goto :goto_11

    :pswitch_63
    const/16 v3, 0x39

    const/16 v1, 0x39

    goto :goto_11

    :pswitch_68
    const/16 v3, 0x41

    const/16 v1, 0x41

    goto :goto_11

    :pswitch_6d
    const/16 v3, 0x49

    const/16 v1, 0x49

    goto :goto_11

    :pswitch_72
    const/16 v3, 0x4f

    const/16 v1, 0x4f

    goto :goto_11

    :pswitch_77
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_11

    :pswitch_7c
    const/16 v3, 0x59

    const/16 v1, 0x59

    goto :goto_11

    :pswitch_81
    const/16 v3, 0x5e

    const/16 v1, 0x5e

    goto :goto_11

    :cond_86
    if-ne p1, v6, :cond_b6

    packed-switch v0, :pswitch_data_ee

    goto :goto_11

    :pswitch_8c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_8f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_92
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_96
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_9a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_9e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_a2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_a6
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_aa
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_ae
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_b2
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_b6
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_32
        :pswitch_37
        :pswitch_3c
        :pswitch_41
        :pswitch_46
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_51
        :pswitch_54
        :pswitch_59
        :pswitch_5e
        :pswitch_63
        :pswitch_68
        :pswitch_6d
        :pswitch_72
        :pswitch_77
        :pswitch_7c
        :pswitch_81
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_8f
        :pswitch_92
        :pswitch_96
        :pswitch_9a
        :pswitch_9e
        :pswitch_a2
        :pswitch_a6
        :pswitch_aa
        :pswitch_ae
        :pswitch_b2
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_41

    packed-switch v0, :pswitch_data_a0

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_11

    :pswitch_2d
    const/16 v3, 0x5d

    const/16 v1, 0x5d

    goto :goto_11

    :pswitch_32
    const/16 v3, 0x67

    const/16 v1, 0x67

    goto :goto_11

    :pswitch_37
    const/16 v3, 0x6d

    const/16 v1, 0x6d

    goto :goto_11

    :pswitch_3c
    const/16 v3, 0x73

    const/16 v1, 0x73

    goto :goto_11

    :cond_41
    if-ne p1, v5, :cond_72

    packed-switch v0, :pswitch_data_ba

    goto :goto_11

    :pswitch_47
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_50
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_53
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_56
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_59
    const/16 v3, 0x49

    const/16 v1, 0x49

    goto :goto_11

    :pswitch_5e
    const/16 v3, 0x4f

    const/16 v1, 0x4f

    goto :goto_11

    :pswitch_63
    const/16 v3, 0x55

    const/16 v1, 0x55

    goto :goto_11

    :pswitch_68
    const/16 v3, 0x59

    const/16 v1, 0x59

    goto :goto_11

    :pswitch_6d
    const/16 v3, 0x5e

    const/16 v1, 0x5e

    goto :goto_11

    :cond_72
    if-ne p1, v6, :cond_9c

    packed-switch v0, :pswitch_data_d4

    goto :goto_11

    :pswitch_78
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_81
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_84
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_87
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_8a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_8d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_90
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_94
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_98
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_9c
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2d
        :pswitch_32
        :pswitch_37
        :pswitch_3c
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5e
        :pswitch_63
        :pswitch_68
        :pswitch_6d
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_78
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
        :pswitch_84
        :pswitch_87
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_94
        :pswitch_98
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xd6

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xcc

    const/16 v1, 0xdd

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xe3

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xcc

    const/16 v1, 0xeb

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xcc

    const/16 v1, 0xf3

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xcc

    const/16 v1, 0xdc

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xcc

    const/16 v1, 0xe5

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xef

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xcc

    const/16 v1, 0xfb

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xcc

    const/16 v1, 0xd4

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xcc

    const/16 v1, 0xd7

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xcc

    const/16 v1, 0xd9

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xcc

    const/16 v1, 0xda

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xcc

    const/16 v1, 0xda

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_96

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_b0

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_91

    packed-switch v0, :pswitch_data_ca

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/16 v3, 0x15

    const/16 v1, 0x15

    goto :goto_11

    :pswitch_78
    const/16 v3, 0x26

    const/16 v1, 0x26

    goto :goto_11

    :pswitch_7d
    const/16 v3, 0x33

    const/16 v1, 0x33

    goto :goto_11

    :pswitch_82
    const/16 v3, 0x3f

    const/16 v1, 0x3f

    goto :goto_11

    :pswitch_87
    const/16 v3, 0x49

    const/16 v1, 0x49

    goto :goto_11

    :pswitch_8c
    const/16 v3, 0x51

    const/16 v1, 0x51

    goto :goto_11

    :cond_91
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_78
        :pswitch_7d
        :pswitch_82
        :pswitch_87
        :pswitch_8c
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_92

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_ac

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_8f

    packed-switch v0, :pswitch_data_c6

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_76
    const/16 v3, 0x26

    const/16 v1, 0x26

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0x33

    const/16 v1, 0x33

    goto :goto_11

    :pswitch_80
    const/16 v3, 0x3f

    const/16 v1, 0x3f

    goto :goto_11

    :pswitch_85
    const/16 v3, 0x49

    const/16 v1, 0x49

    goto :goto_11

    :pswitch_8a
    const/16 v3, 0x51

    const/16 v1, 0x51

    goto :goto_11

    :cond_8f
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
        :pswitch_8a
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xea

    const/16 v1, 0xee

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xda

    const/16 v1, 0xe4

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xbe

    const/16 v1, 0xe4

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xb3

    const/16 v1, 0xe4

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_11

    :pswitch_43
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_11

    :pswitch_48
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xea

    const/16 v1, 0xee

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xda

    const/16 v1, 0xe4

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xbe

    const/16 v1, 0xe4

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xb3

    const/16 v1, 0xe4

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_11

    :pswitch_80
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_11

    :pswitch_85
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xcc

    const/16 v1, 0xcb

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_11

    :pswitch_43
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_11

    :pswitch_48
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xcc

    const/16 v1, 0xcd

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xcc

    const/16 v1, 0xce

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xcc

    const/16 v1, 0xd1

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xcc

    const/16 v1, 0xd2

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xa9

    const/16 v1, 0xea

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xa1

    const/16 v1, 0xf0

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0x98

    const/16 v1, 0xf6

    goto :goto_11

    :pswitch_80
    const/16 v3, 0x90

    const/16 v1, 0xfa

    goto :goto_11

    :pswitch_85
    const/16 v3, 0x8a

    const/16 v1, 0xfc

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xcc

    const/16 v1, 0xd8

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xcc

    const/16 v1, 0xde

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xcc

    const/16 v1, 0xe4

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xcc

    const/16 v1, 0xeb

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xcc

    const/16 v1, 0xf1

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_8c

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x1

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x1

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_a6

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_88

    packed-switch v0, :pswitch_data_c0

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x5

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/16 v1, 0xb

    goto :goto_11

    :pswitch_6e
    const/4 v3, 0x0

    const/16 v1, 0xd

    goto :goto_11

    :pswitch_72
    const/4 v3, 0x0

    const/16 v1, 0xa

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/4 v1, 0x4

    goto :goto_11

    :pswitch_79
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_85
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_88
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6e
        :pswitch_72
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
        :pswitch_85
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_88

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x1

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x1

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_a2

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_85

    packed-switch v0, :pswitch_data_bc

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_79
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_85
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xff

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xf0

    const/16 v1, 0xf0

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xdf

    const/16 v1, 0xdf

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xcc

    const/16 v1, 0xcc

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xb6

    const/16 v1, 0xb6

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xf9

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xcc

    const/16 v1, 0xfa

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xcc

    const/16 v1, 0xe1

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xcc

    const/16 v1, 0xe8

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xcc

    const/16 v1, 0xed

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xcc

    const/16 v1, 0xee

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xcc

    const/16 v1, 0xec

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xf0

    const/16 v1, 0xf0

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xdf

    const/16 v1, 0xdf

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xcc

    const/16 v1, 0xcc

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xb6

    const/16 v1, 0xb6

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_41

    packed-switch v0, :pswitch_data_a0

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/16 v1, 0x24

    goto :goto_11

    :pswitch_1d
    const/4 v3, 0x0

    const/16 v1, 0x42

    goto :goto_11

    :pswitch_21
    const/4 v3, 0x0

    const/16 v1, 0x5c

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/16 v1, 0x75

    goto :goto_11

    :pswitch_29
    const/4 v3, 0x0

    const/16 v1, 0x88

    goto :goto_11

    :pswitch_2d
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_11

    :pswitch_35
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_11

    :pswitch_39
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_11

    :cond_41
    if-ne p1, v5, :cond_72

    packed-switch v0, :pswitch_data_ba

    goto :goto_11

    :pswitch_47
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4a
    const/4 v3, 0x0

    const/16 v1, 0x24

    goto :goto_11

    :pswitch_4e
    const/4 v3, 0x0

    const/16 v1, 0x42

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x0

    const/16 v1, 0x5c

    goto :goto_11

    :pswitch_56
    const/4 v3, 0x0

    const/16 v1, 0x75

    goto :goto_11

    :pswitch_5a
    const/4 v3, 0x0

    const/16 v1, 0x88

    goto :goto_11

    :pswitch_5e
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_11

    :pswitch_62
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_11

    :pswitch_66
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_6e
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_11

    :cond_72
    if-ne p1, v6, :cond_9c

    packed-switch v0, :pswitch_data_d4

    goto :goto_11

    :pswitch_78
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_81
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_84
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_87
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_8a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_8d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_90
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_94
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :pswitch_98
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_9c
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_47
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
        :pswitch_56
        :pswitch_5a
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_6a
        :pswitch_6e
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_78
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
        :pswitch_84
        :pswitch_87
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_94
        :pswitch_98
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_3c

    packed-switch v0, :pswitch_data_92

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_11

    :pswitch_2c
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_11

    :pswitch_30
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_38
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_11

    :cond_3c
    if-ne p1, v5, :cond_68

    packed-switch v0, :pswitch_data_ac

    goto :goto_11

    :pswitch_42
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_45
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_48
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_4b
    const/4 v3, 0x0

    const/4 v1, 0x2

    goto :goto_11

    :pswitch_4e
    const/4 v3, 0x0

    const/4 v1, 0x2

    goto :goto_11

    :pswitch_51
    const/4 v3, 0x0

    const/4 v1, 0x3

    goto :goto_11

    :pswitch_54
    const/4 v3, 0x0

    const/16 v1, 0x9c

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x0

    const/16 v1, 0xac

    goto :goto_11

    :pswitch_5c
    const/4 v3, 0x0

    const/16 v1, 0xbc

    goto :goto_11

    :pswitch_60
    const/4 v3, 0x0

    const/16 v1, 0xca

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/16 v1, 0xd8

    goto :goto_11

    :cond_68
    if-ne p1, v6, :cond_8f

    packed-switch v0, :pswitch_data_c6

    goto :goto_11

    :pswitch_6e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_71
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_74
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_77
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_80
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_83
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_86
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_89
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_8c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_8f
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_58
        :pswitch_5c
        :pswitch_60
        :pswitch_64
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_71
        :pswitch_74
        :pswitch_77
        :pswitch_7a
        :pswitch_7d
        :pswitch_80
        :pswitch_83
        :pswitch_86
        :pswitch_89
        :pswitch_8c
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_88

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_a2

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_85

    packed-switch v0, :pswitch_data_bc

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_79
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_85
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_88

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_a2

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_85

    packed-switch v0, :pswitch_data_bc

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_79
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_85
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xef

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xcc

    const/16 v1, 0xee

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xcc

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xff

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xcc

    const/16 v1, 0xdc

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xcc

    const/16 v1, 0xe4

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xcc

    const/16 v1, 0xe4

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xcc

    const/16 v1, 0xe2

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_88

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_a2

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_85

    packed-switch v0, :pswitch_data_bc

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_79
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_85
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_37

    packed-switch v0, :pswitch_data_88

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_19
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_1c
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_1f
    const/4 v3, 0x0

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_22
    const/4 v3, 0x0

    const/4 v1, 0x2

    goto :goto_11

    :pswitch_25
    const/4 v3, 0x0

    const/4 v1, 0x2

    goto :goto_11

    :pswitch_28
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_2e
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_31
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_34
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_37
    if-ne p1, v5, :cond_5e

    packed-switch v0, :pswitch_data_a2

    goto :goto_11

    :pswitch_3d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_40
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_43
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_46
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_49
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_4f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_52
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_55
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_58
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_5b
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_5e
    if-ne p1, v6, :cond_85

    packed-switch v0, :pswitch_data_bc

    goto :goto_11

    :pswitch_64
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_67
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6a
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_6d
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_70
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_73
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_76
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_79
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7c
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_7f
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :pswitch_82
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_11

    :cond_85
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto :goto_11

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_64
        :pswitch_67
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xcc

    const/16 v1, 0xd1

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xcc

    const/16 v1, 0xd5

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xcc

    const/16 v1, 0xd8

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xcc

    const/16 v1, 0xd0

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xcc

    const/16 v1, 0xd5

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xcc

    const/16 v1, 0xd8

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xcc

    const/16 v1, 0xcf

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xcc

    const/16 v1, 0xd0

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xcc

    const/16 v1, 0xd2

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xcc

    const/16 v1, 0xd3

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xcc

    const/16 v1, 0xd4

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_DMC(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I
    .registers 14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-array v2, v6, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    if-nez p1, :cond_4d

    packed-switch v0, :pswitch_data_d6

    :goto_11
    aput v1, v2, v4

    aput v3, v2, v5

    return-object v2

    :pswitch_16
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_1b
    const/16 v3, 0xcc

    const/16 v1, 0xc2

    goto :goto_11

    :pswitch_20
    const/16 v3, 0xcc

    const/16 v1, 0xbc

    goto :goto_11

    :pswitch_25
    const/16 v3, 0xcc

    const/16 v1, 0xb5

    goto :goto_11

    :pswitch_2a
    const/16 v3, 0xcc

    const/16 v1, 0xad

    goto :goto_11

    :pswitch_2f
    const/16 v3, 0xcc

    const/16 v1, 0xa4

    goto :goto_11

    :pswitch_34
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_39
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_3e
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_43
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :pswitch_48
    const/16 v3, 0xfe

    const/16 v1, 0xfe

    goto :goto_11

    :cond_4d
    if-ne p1, v5, :cond_8a

    packed-switch v0, :pswitch_data_f0

    goto :goto_11

    :pswitch_53
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_58
    const/16 v3, 0xcc

    const/16 v1, 0xc0

    goto :goto_11

    :pswitch_5d
    const/16 v3, 0xcc

    const/16 v1, 0xba

    goto :goto_11

    :pswitch_62
    const/16 v3, 0xcc

    const/16 v1, 0xb3

    goto :goto_11

    :pswitch_67
    const/16 v3, 0xcc

    const/16 v1, 0xab

    goto :goto_11

    :pswitch_6c
    const/16 v3, 0xcc

    const/16 v1, 0xa2

    goto :goto_11

    :pswitch_71
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_76
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_7b
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_80
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :pswitch_85
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto :goto_11

    :cond_8a
    if-ne p1, v6, :cond_d2

    packed-switch v0, :pswitch_data_10a

    goto :goto_11

    :pswitch_90
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_96
    const/16 v3, 0xcc

    const/16 v1, 0xc7

    goto/16 :goto_11

    :pswitch_9c
    const/16 v3, 0xcc

    const/16 v1, 0xc5

    goto/16 :goto_11

    :pswitch_a2
    const/16 v3, 0xcc

    const/16 v1, 0xc3

    goto/16 :goto_11

    :pswitch_a8
    const/16 v3, 0xcc

    const/16 v1, 0xc2

    goto/16 :goto_11

    :pswitch_ae
    const/16 v3, 0xcc

    const/16 v1, 0xc1

    goto/16 :goto_11

    :pswitch_b4
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_ba
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c0
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_c6
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :pswitch_cc
    const/16 v3, 0xff

    const/16 v1, 0xff

    goto/16 :goto_11

    :cond_d2
    const/4 v3, -0x1

    const/4 v1, -0x1

    goto/16 :goto_11

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
        :pswitch_34
        :pswitch_39
        :pswitch_3e
        :pswitch_43
        :pswitch_48
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
        :pswitch_67
        :pswitch_6c
        :pswitch_71
        :pswitch_76
        :pswitch_7b
        :pswitch_80
        :pswitch_85
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_96
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
    .end packed-switch
.end method

.method private roundHalfUp(D)I
    .registers 8

    const/4 v0, 0x0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    return v0
.end method


# virtual methods
.method public getColorTransferValue_DMC(IIIDD)I
    .registers 20

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_40

    const/4 v2, 0x1

    if-ne p2, v2, :cond_24

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_DMC(IDD)[I

    move-result-object v10

    :cond_14
    :goto_14
    if-eqz v10, :cond_22

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_138

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_138

    :cond_22
    const/4 v2, -0x1

    return v2

    :cond_24
    const/4 v2, 0x3

    if-ne p2, v2, :cond_32

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_DMC(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_32
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_DMC(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_40
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6d

    const/4 v2, 0x1

    if-ne p2, v2, :cond_51

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_DMC(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_51
    const/4 v2, 0x3

    if-ne p2, v2, :cond_5f

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_DMC(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_5f
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_DMC(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_6d
    const/4 v2, 0x3

    if-ne p1, v2, :cond_9b

    const/4 v2, 0x1

    if-ne p2, v2, :cond_7e

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_DMC(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_7e
    const/4 v2, 0x3

    if-ne p2, v2, :cond_8c

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_DMC(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_8c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_9b
    const/4 v2, 0x4

    if-ne p1, v2, :cond_cb

    const/4 v2, 0x1

    if-ne p2, v2, :cond_ad

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_ad
    const/4 v2, 0x3

    if-ne p2, v2, :cond_bc

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_bc
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_cb
    const/4 v2, 0x5

    if-ne p1, v2, :cond_fb

    const/4 v2, 0x1

    if-ne p2, v2, :cond_dd

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_dd
    const/4 v2, 0x3

    if-ne p2, v2, :cond_ec

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_ec
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_fb
    const/4 v2, 0x6

    if-ne p1, v2, :cond_12b

    const/4 v2, 0x1

    if-ne p2, v2, :cond_10d

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_10d
    const/4 v2, 0x3

    if-ne p2, v2, :cond_11c

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_11c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_DMC(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_12b
    const/4 v2, 0x2

    new-array v10, v2, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v10, v3

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v10, v3

    goto/16 :goto_14

    :cond_138
    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    sub-int v8, v2, v3

    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v9

    int-to-double v2, v8

    int-to-double v4, v9

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v11, v2

    return v11
.end method

.method public getColorTransferValue_Hybrid(IIIDD)I
    .registers 20

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_40

    const/4 v2, 0x1

    if-ne p2, v2, :cond_24

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I

    move-result-object v10

    :cond_14
    :goto_14
    if-eqz v10, :cond_22

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_138

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_138

    :cond_22
    const/4 v2, -0x1

    return v2

    :cond_24
    const/4 v2, 0x3

    if-ne p2, v2, :cond_32

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_32
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_40
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6d

    const/4 v2, 0x1

    if-ne p2, v2, :cond_51

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_51
    const/4 v2, 0x3

    if-ne p2, v2, :cond_5f

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_5f
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_6d
    const/4 v2, 0x3

    if-ne p1, v2, :cond_9b

    const/4 v2, 0x1

    if-ne p2, v2, :cond_7e

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_7e
    const/4 v2, 0x3

    if-ne p2, v2, :cond_8c

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I

    move-result-object v10

    goto :goto_14

    :cond_8c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_9b
    const/4 v2, 0x4

    if-ne p1, v2, :cond_cb

    const/4 v2, 0x1

    if-ne p2, v2, :cond_ad

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_ad
    const/4 v2, 0x3

    if-ne p2, v2, :cond_bc

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_bc
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_cb
    const/4 v2, 0x5

    if-ne p1, v2, :cond_fb

    const/4 v2, 0x1

    if-ne p2, v2, :cond_dd

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_dd
    const/4 v2, 0x3

    if-ne p2, v2, :cond_ec

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_ec
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_fb
    const/4 v2, 0x6

    if-ne p1, v2, :cond_12b

    const/4 v2, 0x1

    if-ne p2, v2, :cond_10d

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_10d
    const/4 v2, 0x3

    if-ne p2, v2, :cond_11c

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_11c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_14

    move-object v2, p0

    move v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I

    move-result-object v10

    goto/16 :goto_14

    :cond_12b
    const/4 v2, 0x2

    new-array v10, v2, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v10, v3

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v10, v3

    goto/16 :goto_14

    :cond_138
    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    sub-int v8, v2, v3

    move-wide/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v9

    int-to-double v2, v8

    int-to-double v4, v9

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v11, v2

    return v11
.end method

.method public getPredefinedValueForEachType(II)[D
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [D

    add-int/lit8 v1, p1, -0x1

    packed-switch v1, :pswitch_data_34

    const/4 v1, 0x0

    return-object v1

    :pswitch_c
    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v4

    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v5

    :goto_18
    return-object v0

    :pswitch_19
    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v4

    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v5

    goto :goto_18

    :pswitch_26
    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v4

    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    aget-wide v2, v1, p2

    aput-wide v2, v0, v5

    goto :goto_18

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_c
        :pswitch_19
        :pswitch_26
    .end packed-switch
.end method
