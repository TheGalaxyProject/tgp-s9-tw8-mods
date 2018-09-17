.class public final Landroid/support/v17/leanback/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static safeLongToInt(J)I
    .registers 4

    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Input overflows int.\n"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    long-to-int v0, p0

    return v0
.end method
