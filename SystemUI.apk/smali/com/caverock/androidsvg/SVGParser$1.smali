.class synthetic Lcom/caverock/androidsvg/SVGParser$1;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

.field static final synthetic $SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->values()[Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    :try_start_9
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6f1

    :goto_14
    :try_start_14
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6ee

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_6eb

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_6e8

    :goto_35
    :try_start_35
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->version:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_6e5

    :goto_40
    :try_start_40
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_6e2

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->preserveAspectRatio:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_6df

    :goto_56
    :try_start_56
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->d:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_6dc

    :goto_62
    :try_start_62
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->pathLength:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6d9

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->rx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_6d6

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ry:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_6d3

    :goto_86
    :try_start_86
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_6d0

    :goto_92
    :try_start_92
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_6cd

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->r:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_6ca

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_6c7

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_6c4

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_6c1

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_6be

    :goto_da
    :try_start_da
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_6bb

    :goto_e6
    :try_start_e6
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_6b8

    :goto_f2
    :try_start_f2
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFeatures:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_6b5

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredExtensions:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_6b2

    :goto_10a
    :try_start_10a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->systemLanguage:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_6af

    :goto_116
    :try_start_116
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFormats:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_6ac

    :goto_122
    :try_start_122
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFonts:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_6a9

    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refX:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_6a6

    :goto_13a
    :try_start_13a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refY:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_6a3

    :goto_146
    :try_start_146
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerWidth:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_152
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_152} :catch_6a0

    :goto_152
    :try_start_152
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerHeight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_69d

    :goto_15e
    :try_start_15e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_69a

    :goto_16a
    :try_start_16a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->orient:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16a .. :try_end_176} :catch_697

    :goto_176
    :try_start_176
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_182} :catch_694

    :goto_182
    :try_start_182
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18e} :catch_691

    :goto_18e
    :try_start_18e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->spreadMethod:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_19a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18e .. :try_end_19a} :catch_68e

    :goto_19a
    :try_start_19a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19a .. :try_end_1a6} :catch_68b

    :goto_1a6
    :try_start_1a6
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a6 .. :try_end_1b2} :catch_688

    :goto_1b2
    :try_start_1b2
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->offset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1be} :catch_685

    :goto_1be
    :try_start_1be
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clipPathUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1ca} :catch_682

    :goto_1ca
    :try_start_1ca
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->startOffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ca .. :try_end_1d6} :catch_67f

    :goto_1d6
    :try_start_1d6
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_1e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d6 .. :try_end_1e2} :catch_67c

    :goto_1e2
    :try_start_1e2
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e2 .. :try_end_1ee} :catch_679

    :goto_1ee
    :try_start_1ee
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ee .. :try_end_1fa} :catch_676

    :goto_1fa
    :try_start_1fa
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_206
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_206} :catch_673

    :goto_206
    :try_start_206
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_212
    .catch Ljava/lang/NoSuchFieldError; {:try_start_206 .. :try_end_212} :catch_670

    :goto_212
    :try_start_212
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_21e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_212 .. :try_end_21e} :catch_66d

    :goto_21e
    :try_start_21e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->CLASS:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_22a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21e .. :try_end_22a} :catch_66a

    :goto_22a
    :try_start_22a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_236
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22a .. :try_end_236} :catch_667

    :goto_236
    :try_start_236
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_242
    .catch Ljava/lang/NoSuchFieldError; {:try_start_236 .. :try_end_242} :catch_664

    :goto_242
    :try_start_242
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_24e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_242 .. :try_end_24e} :catch_661

    :goto_24e
    :try_start_24e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_25a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24e .. :try_end_25a} :catch_65e

    :goto_25a
    :try_start_25a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_266
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25a .. :try_end_266} :catch_65b

    :goto_266
    :try_start_266
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_272
    .catch Ljava/lang/NoSuchFieldError; {:try_start_266 .. :try_end_272} :catch_658

    :goto_272
    :try_start_272
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linecap:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_27e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_272 .. :try_end_27e} :catch_655

    :goto_27e
    :try_start_27e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linejoin:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_28a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27e .. :try_end_28a} :catch_652

    :goto_28a
    :try_start_28a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_miterlimit:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_296
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28a .. :try_end_296} :catch_64f

    :goto_296
    :try_start_296
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dasharray:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_2a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_296 .. :try_end_2a2} :catch_64c

    :goto_2a2
    :try_start_2a2
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dashoffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_2ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a2 .. :try_end_2ae} :catch_649

    :goto_2ae
    :try_start_2ae
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_2ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ae .. :try_end_2ba} :catch_646

    :goto_2ba
    :try_start_2ba
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_2c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ba .. :try_end_2c6} :catch_643

    :goto_2c6
    :try_start_2c6
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_2d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c6 .. :try_end_2d2} :catch_640

    :goto_2d2
    :try_start_2d2
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_family:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_2de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d2 .. :try_end_2de} :catch_63d

    :goto_2de
    :try_start_2de
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_size:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_2ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2de .. :try_end_2ea} :catch_63a

    :goto_2ea
    :try_start_2ea
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_weight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_2f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ea .. :try_end_2f6} :catch_637

    :goto_2f6
    :try_start_2f6
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_302
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f6 .. :try_end_302} :catch_634

    :goto_302
    :try_start_302
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_decoration:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_30e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_302 .. :try_end_30e} :catch_631

    :goto_30e
    :try_start_30e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->direction:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_31a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30e .. :try_end_31a} :catch_62e

    :goto_31a
    :try_start_31a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_anchor:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_326
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31a .. :try_end_326} :catch_62b

    :goto_326
    :try_start_326
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->overflow:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_332
    .catch Ljava/lang/NoSuchFieldError; {:try_start_326 .. :try_end_332} :catch_628

    :goto_332
    :try_start_332
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_33e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_332 .. :try_end_33e} :catch_625

    :goto_33e
    :try_start_33e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_start:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_34a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33e .. :try_end_34a} :catch_622

    :goto_34a
    :try_start_34a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_mid:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_356
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34a .. :try_end_356} :catch_61f

    :goto_356
    :try_start_356
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_end:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_362
    .catch Ljava/lang/NoSuchFieldError; {:try_start_356 .. :try_end_362} :catch_61c

    :goto_362
    :try_start_362
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->display:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_36e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_362 .. :try_end_36e} :catch_619

    :goto_36e
    :try_start_36e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->visibility:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_37a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36e .. :try_end_37a} :catch_616

    :goto_37a
    :try_start_37a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_386
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37a .. :try_end_386} :catch_613

    :goto_386
    :try_start_386
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_392
    .catch Ljava/lang/NoSuchFieldError; {:try_start_386 .. :try_end_392} :catch_610

    :goto_392
    :try_start_392
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_39e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_392 .. :try_end_39e} :catch_60d

    :goto_39e
    :try_start_39e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_path:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_3aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39e .. :try_end_3aa} :catch_60a

    :goto_3aa
    :try_start_3aa
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_3b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3aa .. :try_end_3b6} :catch_607

    :goto_3b6
    :try_start_3b6
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->mask:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_3c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b6 .. :try_end_3c2} :catch_604

    :goto_3c2
    :try_start_3c2
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_3ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c2 .. :try_end_3ce} :catch_601

    :goto_3ce
    :try_start_3ce
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_3da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ce .. :try_end_3da} :catch_5fe

    :goto_3da
    :try_start_3da
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_3e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3da .. :try_end_3e6} :catch_5fb

    :goto_3e6
    :try_start_3e6
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_3f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e6 .. :try_end_3f2} :catch_5f8

    :goto_3f2
    :try_start_3f2
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->vector_effect:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_3fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f2 .. :try_end_3fe} :catch_5f5

    :goto_3fe
    :try_start_3fe
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewBox:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_40a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3fe .. :try_end_40a} :catch_5f2

    :goto_40a
    :try_start_40a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->type:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_416
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40a .. :try_end_416} :catch_5ef

    :goto_416
    :try_start_416
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->media:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_422
    .catch Ljava/lang/NoSuchFieldError; {:try_start_416 .. :try_end_422} :catch_5ec

    :goto_422
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->values()[Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    :try_start_42b
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->svg:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_436
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42b .. :try_end_436} :catch_5e9

    :goto_436
    :try_start_436
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->g:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_441
    .catch Ljava/lang/NoSuchFieldError; {:try_start_436 .. :try_end_441} :catch_5e6

    :goto_441
    :try_start_441
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->a:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_44c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_441 .. :try_end_44c} :catch_5e3

    :goto_44c
    :try_start_44c
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->defs:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_457
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44c .. :try_end_457} :catch_5e0

    :goto_457
    :try_start_457
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->use:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_462
    .catch Ljava/lang/NoSuchFieldError; {:try_start_457 .. :try_end_462} :catch_5dd

    :goto_462
    :try_start_462
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->path:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_46d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_462 .. :try_end_46d} :catch_5da

    :goto_46d
    :try_start_46d
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->rect:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_478
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46d .. :try_end_478} :catch_5d7

    :goto_478
    :try_start_478
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->circle:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_484
    .catch Ljava/lang/NoSuchFieldError; {:try_start_478 .. :try_end_484} :catch_5d4

    :goto_484
    :try_start_484
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ellipse:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_490
    .catch Ljava/lang/NoSuchFieldError; {:try_start_484 .. :try_end_490} :catch_5d1

    :goto_490
    :try_start_490
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->line:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_49c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_490 .. :try_end_49c} :catch_5ce

    :goto_49c
    :try_start_49c
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->polyline:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49c .. :try_end_4a8} :catch_5cb

    :goto_4a8
    :try_start_4a8
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->polygon:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_4b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a8 .. :try_end_4b4} :catch_5c8

    :goto_4b4
    :try_start_4b4
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->text:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_4c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b4 .. :try_end_4c0} :catch_5c5

    :goto_4c0
    :try_start_4c0
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->tspan:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_4cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c0 .. :try_end_4cc} :catch_5c2

    :goto_4cc
    :try_start_4cc
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->tref:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_4d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4cc .. :try_end_4d8} :catch_5bf

    :goto_4d8
    :try_start_4d8
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->SWITCH:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_4e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d8 .. :try_end_4e4} :catch_5bc

    :goto_4e4
    :try_start_4e4
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->symbol:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_4f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e4 .. :try_end_4f0} :catch_5b9

    :goto_4f0
    :try_start_4f0
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->marker:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_4fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f0 .. :try_end_4fc} :catch_5b6

    :goto_4fc
    :try_start_4fc
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->linearGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_508
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4fc .. :try_end_508} :catch_5b3

    :goto_508
    :try_start_508
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->radialGradient:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_514
    .catch Ljava/lang/NoSuchFieldError; {:try_start_508 .. :try_end_514} :catch_5b0

    :goto_514
    :try_start_514
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->stop:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_520
    .catch Ljava/lang/NoSuchFieldError; {:try_start_514 .. :try_end_520} :catch_5ad

    :goto_520
    :try_start_520
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_52c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_520 .. :try_end_52c} :catch_5ab

    :goto_52c
    :try_start_52c
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_538
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52c .. :try_end_538} :catch_5a9

    :goto_538
    :try_start_538
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->clipPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_544
    .catch Ljava/lang/NoSuchFieldError; {:try_start_538 .. :try_end_544} :catch_5a7

    :goto_544
    :try_start_544
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->textPath:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_550
    .catch Ljava/lang/NoSuchFieldError; {:try_start_544 .. :try_end_550} :catch_5a5

    :goto_550
    :try_start_550
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->pattern:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_55c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_550 .. :try_end_55c} :catch_5a3

    :goto_55c
    :try_start_55c
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->image:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_568
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55c .. :try_end_568} :catch_5a1

    :goto_568
    :try_start_568
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->view:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_574
    .catch Ljava/lang/NoSuchFieldError; {:try_start_568 .. :try_end_574} :catch_59f

    :goto_574
    :try_start_574
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->mask:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_580
    .catch Ljava/lang/NoSuchFieldError; {:try_start_574 .. :try_end_580} :catch_59d

    :goto_580
    :try_start_580
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->style:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_58c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_580 .. :try_end_58c} :catch_59b

    :goto_58c
    :try_start_58c
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->solidColor:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_598
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58c .. :try_end_598} :catch_599

    :goto_598
    return-void

    :catch_599
    move-exception v0

    goto :goto_598

    :catch_59b
    move-exception v0

    goto :goto_58c

    :catch_59d
    move-exception v0

    goto :goto_580

    :catch_59f
    move-exception v0

    goto :goto_574

    :catch_5a1
    move-exception v0

    goto :goto_568

    :catch_5a3
    move-exception v0

    goto :goto_55c

    :catch_5a5
    move-exception v0

    goto :goto_550

    :catch_5a7
    move-exception v0

    goto :goto_544

    :catch_5a9
    move-exception v0

    goto :goto_538

    :catch_5ab
    move-exception v0

    goto :goto_52c

    :catch_5ad
    move-exception v0

    goto/16 :goto_520

    :catch_5b0
    move-exception v0

    goto/16 :goto_514

    :catch_5b3
    move-exception v0

    goto/16 :goto_508

    :catch_5b6
    move-exception v0

    goto/16 :goto_4fc

    :catch_5b9
    move-exception v0

    goto/16 :goto_4f0

    :catch_5bc
    move-exception v0

    goto/16 :goto_4e4

    :catch_5bf
    move-exception v0

    goto/16 :goto_4d8

    :catch_5c2
    move-exception v0

    goto/16 :goto_4cc

    :catch_5c5
    move-exception v0

    goto/16 :goto_4c0

    :catch_5c8
    move-exception v0

    goto/16 :goto_4b4

    :catch_5cb
    move-exception v0

    goto/16 :goto_4a8

    :catch_5ce
    move-exception v0

    goto/16 :goto_49c

    :catch_5d1
    move-exception v0

    goto/16 :goto_490

    :catch_5d4
    move-exception v0

    goto/16 :goto_484

    :catch_5d7
    move-exception v0

    goto/16 :goto_478

    :catch_5da
    move-exception v0

    goto/16 :goto_46d

    :catch_5dd
    move-exception v0

    goto/16 :goto_462

    :catch_5e0
    move-exception v0

    goto/16 :goto_457

    :catch_5e3
    move-exception v0

    goto/16 :goto_44c

    :catch_5e6
    move-exception v0

    goto/16 :goto_441

    :catch_5e9
    move-exception v0

    goto/16 :goto_436

    :catch_5ec
    move-exception v0

    goto/16 :goto_422

    :catch_5ef
    move-exception v0

    goto/16 :goto_416

    :catch_5f2
    move-exception v0

    goto/16 :goto_40a

    :catch_5f5
    move-exception v0

    goto/16 :goto_3fe

    :catch_5f8
    move-exception v0

    goto/16 :goto_3f2

    :catch_5fb
    move-exception v0

    goto/16 :goto_3e6

    :catch_5fe
    move-exception v0

    goto/16 :goto_3da

    :catch_601
    move-exception v0

    goto/16 :goto_3ce

    :catch_604
    move-exception v0

    goto/16 :goto_3c2

    :catch_607
    move-exception v0

    goto/16 :goto_3b6

    :catch_60a
    move-exception v0

    goto/16 :goto_3aa

    :catch_60d
    move-exception v0

    goto/16 :goto_39e

    :catch_610
    move-exception v0

    goto/16 :goto_392

    :catch_613
    move-exception v0

    goto/16 :goto_386

    :catch_616
    move-exception v0

    goto/16 :goto_37a

    :catch_619
    move-exception v0

    goto/16 :goto_36e

    :catch_61c
    move-exception v0

    goto/16 :goto_362

    :catch_61f
    move-exception v0

    goto/16 :goto_356

    :catch_622
    move-exception v0

    goto/16 :goto_34a

    :catch_625
    move-exception v0

    goto/16 :goto_33e

    :catch_628
    move-exception v0

    goto/16 :goto_332

    :catch_62b
    move-exception v0

    goto/16 :goto_326

    :catch_62e
    move-exception v0

    goto/16 :goto_31a

    :catch_631
    move-exception v0

    goto/16 :goto_30e

    :catch_634
    move-exception v0

    goto/16 :goto_302

    :catch_637
    move-exception v0

    goto/16 :goto_2f6

    :catch_63a
    move-exception v0

    goto/16 :goto_2ea

    :catch_63d
    move-exception v0

    goto/16 :goto_2de

    :catch_640
    move-exception v0

    goto/16 :goto_2d2

    :catch_643
    move-exception v0

    goto/16 :goto_2c6

    :catch_646
    move-exception v0

    goto/16 :goto_2ba

    :catch_649
    move-exception v0

    goto/16 :goto_2ae

    :catch_64c
    move-exception v0

    goto/16 :goto_2a2

    :catch_64f
    move-exception v0

    goto/16 :goto_296

    :catch_652
    move-exception v0

    goto/16 :goto_28a

    :catch_655
    move-exception v0

    goto/16 :goto_27e

    :catch_658
    move-exception v0

    goto/16 :goto_272

    :catch_65b
    move-exception v0

    goto/16 :goto_266

    :catch_65e
    move-exception v0

    goto/16 :goto_25a

    :catch_661
    move-exception v0

    goto/16 :goto_24e

    :catch_664
    move-exception v0

    goto/16 :goto_242

    :catch_667
    move-exception v0

    goto/16 :goto_236

    :catch_66a
    move-exception v0

    goto/16 :goto_22a

    :catch_66d
    move-exception v0

    goto/16 :goto_21e

    :catch_670
    move-exception v0

    goto/16 :goto_212

    :catch_673
    move-exception v0

    goto/16 :goto_206

    :catch_676
    move-exception v0

    goto/16 :goto_1fa

    :catch_679
    move-exception v0

    goto/16 :goto_1ee

    :catch_67c
    move-exception v0

    goto/16 :goto_1e2

    :catch_67f
    move-exception v0

    goto/16 :goto_1d6

    :catch_682
    move-exception v0

    goto/16 :goto_1ca

    :catch_685
    move-exception v0

    goto/16 :goto_1be

    :catch_688
    move-exception v0

    goto/16 :goto_1b2

    :catch_68b
    move-exception v0

    goto/16 :goto_1a6

    :catch_68e
    move-exception v0

    goto/16 :goto_19a

    :catch_691
    move-exception v0

    goto/16 :goto_18e

    :catch_694
    move-exception v0

    goto/16 :goto_182

    :catch_697
    move-exception v0

    goto/16 :goto_176

    :catch_69a
    move-exception v0

    goto/16 :goto_16a

    :catch_69d
    move-exception v0

    goto/16 :goto_15e

    :catch_6a0
    move-exception v0

    goto/16 :goto_152

    :catch_6a3
    move-exception v0

    goto/16 :goto_146

    :catch_6a6
    move-exception v0

    goto/16 :goto_13a

    :catch_6a9
    move-exception v0

    goto/16 :goto_12e

    :catch_6ac
    move-exception v0

    goto/16 :goto_122

    :catch_6af
    move-exception v0

    goto/16 :goto_116

    :catch_6b2
    move-exception v0

    goto/16 :goto_10a

    :catch_6b5
    move-exception v0

    goto/16 :goto_fe

    :catch_6b8
    move-exception v0

    goto/16 :goto_f2

    :catch_6bb
    move-exception v0

    goto/16 :goto_e6

    :catch_6be
    move-exception v0

    goto/16 :goto_da

    :catch_6c1
    move-exception v0

    goto/16 :goto_ce

    :catch_6c4
    move-exception v0

    goto/16 :goto_c2

    :catch_6c7
    move-exception v0

    goto/16 :goto_b6

    :catch_6ca
    move-exception v0

    goto/16 :goto_aa

    :catch_6cd
    move-exception v0

    goto/16 :goto_9e

    :catch_6d0
    move-exception v0

    goto/16 :goto_92

    :catch_6d3
    move-exception v0

    goto/16 :goto_86

    :catch_6d6
    move-exception v0

    goto/16 :goto_7a

    :catch_6d9
    move-exception v0

    goto/16 :goto_6e

    :catch_6dc
    move-exception v0

    goto/16 :goto_62

    :catch_6df
    move-exception v0

    goto/16 :goto_56

    :catch_6e2
    move-exception v0

    goto/16 :goto_4b

    :catch_6e5
    move-exception v0

    goto/16 :goto_40

    :catch_6e8
    move-exception v0

    goto/16 :goto_35

    :catch_6eb
    move-exception v0

    goto/16 :goto_2a

    :catch_6ee
    move-exception v0

    goto/16 :goto_1f

    :catch_6f1
    move-exception v0

    goto/16 :goto_14
.end method
