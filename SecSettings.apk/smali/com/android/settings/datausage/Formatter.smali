.class public final Lcom/android/settings/datausage/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/Formatter$BytesResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_1a

    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1a
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Lcom/android/settings/datausage/Formatter$BytesResult;
    .registers 23

    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-gez v13, :cond_94

    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_e

    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    :cond_e
    move-wide/from16 v0, p1

    long-to-float v3, v0

    const v11, 0x1040178

    const-wide/16 v4, 0x1

    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_24

    const v11, 0x1040482

    const-wide/16 v4, 0x400

    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    :cond_24
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_33

    const v11, 0x1040567

    const-wide/32 v4, 0x100000

    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    :cond_33
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_42

    const v11, 0x1040389

    const-wide/32 v4, 0x40000000

    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    :cond_42
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_53

    const v11, 0x1040a13

    const-wide v4, 0x10000000000L

    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    :cond_53
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_61

    const v11, 0x104080d

    const-wide/high16 v4, 0x4000000000000L

    const/high16 v13, 0x44800000    # 1024.0f

    div-float/2addr v3, v13

    :cond_61
    const-wide/16 v14, 0x1

    cmp-long v13, v4, v14

    if-eqz v13, :cond_6d

    const/high16 v13, 0x42c80000    # 100.0f

    cmpl-float v13, v3, v13

    if-ltz v13, :cond_97

    :cond_6d
    const/4 v6, 0x1

    const-string/jumbo v7, "%.0f"

    :goto_71
    if-eqz v2, :cond_74

    neg-float v3, v3

    :cond_74
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    and-int/lit8 v13, p3, 0x2

    if-nez v13, :cond_c8

    const-wide/16 v8, 0x0

    :goto_88
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/settings/datausage/Formatter$BytesResult;

    invoke-direct {v13, v10, v12, v8, v9}, Lcom/android/settings/datausage/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v13

    :cond_94
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_97
    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v3, v13

    if-gez v13, :cond_a3

    const/16 v6, 0x64

    const-string/jumbo v7, "%.2f"

    goto :goto_71

    :cond_a3
    const/high16 v13, 0x41200000    # 10.0f

    cmpg-float v13, v3, v13

    if-gez v13, :cond_b9

    and-int/lit8 v13, p3, 0x1

    if-eqz v13, :cond_b3

    const/16 v6, 0xa

    const-string/jumbo v7, "%.1f"

    goto :goto_71

    :cond_b3
    const/16 v6, 0x64

    const-string/jumbo v7, "%.2f"

    goto :goto_71

    :cond_b9
    and-int/lit8 v13, p3, 0x1

    if-eqz v13, :cond_c2

    const/4 v6, 0x1

    const-string/jumbo v7, "%.0f"

    goto :goto_71

    :cond_c2
    const/16 v6, 0x64

    const-string/jumbo v7, "%.2f"

    goto :goto_71

    :cond_c8
    int-to-float v13, v6

    mul-float/2addr v13, v3

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-long v14, v13

    mul-long/2addr v14, v4

    int-to-long v0, v6

    move-wide/from16 v16, v0

    div-long v8, v14, v16

    goto :goto_88
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    if-nez p0, :cond_7

    const-string/jumbo v1, ""

    return-object v1

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, v3}, Lcom/android/settings/datausage/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/android/settings/datausage/Formatter$BytesResult;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/datausage/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/android/settings/datausage/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x1040356

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/datausage/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x1

    if-nez p0, :cond_7

    const-string/jumbo v1, ""

    return-object v1

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, v4}, Lcom/android/settings/datausage/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/android/settings/datausage/Formatter$BytesResult;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/settings/datausage/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/android/settings/datausage/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v2, v1, v4

    const v2, 0x1040356

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/datausage/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
