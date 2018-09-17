.class public final Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 8

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/16 v0, 0x63

    if-gt p0, v0, :cond_b

    if-eqz p2, :cond_e

    if-lt p3, v3, :cond_e

    :cond_b
    add-int/lit8 v0, p1, 0x3

    return v0

    :cond_e
    const/16 v0, 0x9

    if-gt p0, v0, :cond_16

    if-eqz p2, :cond_19

    if-lt p3, v2, :cond_19

    :cond_16
    add-int/lit8 v0, p1, 0x2

    return v0

    :cond_19
    if-nez p2, :cond_1d

    if-lez p0, :cond_20

    :cond_1d
    add-int/lit8 v0, p1, 0x1

    return v0

    :cond_20
    return v1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 9
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_d
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 10
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v2

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    monitor-exit v2

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .registers 23

    sget-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_d

    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    :cond_d
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_25

    const/4 v5, 0x0

    add-int/lit8 p2, p2, -0x1

    :goto_18
    if-lez p2, :cond_1f

    const/16 v4, 0x20

    aput-char v4, v2, v5

    goto :goto_18

    :cond_1f
    const/16 v4, 0x30

    aput-char v4, v2, v5

    const/4 v4, 0x1

    return v4

    :cond_25
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_b0

    const/16 v16, 0x2b

    :goto_2d
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v17, v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const v4, 0x15180

    move/from16 v0, v17

    if-le v0, v4, :cond_53

    const v4, 0x15180

    div-int v3, v17, v4

    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v17, v17, v4

    :cond_53
    const/16 v4, 0xe10

    move/from16 v0, v17

    if-le v0, v4, :cond_61

    move/from16 v0, v17

    div-int/lit16 v12, v0, 0xe10

    mul-int/lit16 v4, v12, 0xe10

    sub-int v17, v17, v4

    :cond_61
    const/16 v4, 0x3c

    move/from16 v0, v17

    if-le v0, v4, :cond_6d

    div-int/lit8 v14, v17, 0x3c

    mul-int/lit8 v4, v14, 0x3c

    sub-int v17, v17, v4

    :cond_6d
    const/4 v5, 0x0

    if-eqz p2, :cond_c1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    if-lez v15, :cond_b9

    const/4 v4, 0x1

    :goto_7a
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_bb

    const/4 v4, 0x1

    :goto_84
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_bd

    const/4 v4, 0x1

    :goto_8e
    const/4 v6, 0x1

    const/4 v7, 0x2

    move/from16 v0, v17

    invoke-static {v0, v6, v4, v7}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    if-lez v15, :cond_bf

    const/4 v4, 0x3

    :goto_9a
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v13, v6, v7, v4}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    :goto_a3
    move/from16 v0, p2

    if-ge v15, v0, :cond_c1

    const/16 v4, 0x20

    aput-char v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_a3

    :cond_b0
    const/16 v16, 0x2d

    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_2d

    :cond_b9
    const/4 v4, 0x0

    goto :goto_7a

    :cond_bb
    const/4 v4, 0x0

    goto :goto_84

    :cond_bd
    const/4 v4, 0x0

    goto :goto_8e

    :cond_bf
    const/4 v4, 0x0

    goto :goto_9a

    :cond_c1
    aput-char v16, v2, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v18, v5

    if-eqz p2, :cond_11f

    const/16 v19, 0x1

    :goto_cb
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    move/from16 v0, v18

    if-eq v5, v0, :cond_122

    const/4 v10, 0x1

    :goto_d8
    if-eqz v19, :cond_124

    const/4 v11, 0x2

    :goto_db
    const/16 v8, 0x68

    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    move/from16 v0, v18

    if-eq v5, v0, :cond_126

    const/4 v10, 0x1

    :goto_e9
    if-eqz v19, :cond_128

    const/4 v11, 0x2

    :goto_ec
    const/16 v8, 0x6d

    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    move/from16 v0, v18

    if-eq v5, v0, :cond_12a

    const/4 v10, 0x1

    :goto_fa
    if-eqz v19, :cond_12c

    const/4 v11, 0x2

    :goto_fd
    const/16 v8, 0x73

    move-object v6, v2

    move/from16 v7, v17

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    if-eqz v19, :cond_12e

    move/from16 v0, v18

    if-eq v5, v0, :cond_12e

    const/4 v11, 0x3

    :goto_10e
    const/16 v8, 0x6d

    const/4 v10, 0x1

    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    const/16 v4, 0x73

    aput-char v4, v2, v5

    add-int/lit8 v4, v5, 0x1

    return v4

    :cond_11f
    const/16 v19, 0x0

    goto :goto_cb

    :cond_122
    const/4 v10, 0x0

    goto :goto_d8

    :cond_124
    const/4 v11, 0x0

    goto :goto_db

    :cond_126
    const/4 v10, 0x0

    goto :goto_e9

    :cond_128
    const/4 v11, 0x0

    goto :goto_ec

    :cond_12a
    const/4 v10, 0x0

    goto :goto_fa

    :cond_12c
    const/4 v11, 0x0

    goto :goto_fd

    :cond_12e
    const/4 v11, 0x0

    goto :goto_10e
.end method

.method private static printField([CICIZI)I
    .registers 9

    if-nez p4, :cond_4

    if-lez p1, :cond_32

    :cond_4
    move v1, p3

    if-eqz p4, :cond_33

    const/4 v2, 0x3

    if-lt p5, v2, :cond_33

    :goto_a
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    :cond_16
    if-eqz p4, :cond_38

    const/4 v2, 0x2

    if-lt p5, v2, :cond_38

    :cond_1b
    :goto_1b
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    :cond_27
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_32
    return p3

    :cond_33
    const/16 v2, 0x63

    if-le p1, v2, :cond_16

    goto :goto_a

    :cond_38
    const/16 v2, 0x9

    if-gt p1, v2, :cond_1b

    if-eq v1, p3, :cond_27

    goto :goto_1b
.end method
