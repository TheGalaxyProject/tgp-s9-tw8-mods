.class public final Lorg/apache/http/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"


# static fields
.field public static final HASH_OFFSET:I = 0x25

.field public static final HASH_SEED:I = 0x11


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    if-eqz p1, :cond_b

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_c

    :cond_6
    return v1

    :cond_7
    if-eqz p1, :cond_a

    :goto_9
    return v1

    :cond_a
    move v1, v2

    goto :goto_9

    :cond_c
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_6

    const/4 v0, 0x0

    :goto_11
    array-length v3, p0

    if-lt v0, v3, :cond_15

    return v2

    :cond_15
    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    return v1
.end method

.method public static hashCode(II)I
    .registers 3

    mul-int/lit8 v0, p0, 0x25

    add-int/2addr v0, p1

    return v0
.end method

.method public static hashCode(ILjava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static hashCode(IZ)I
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_8

    :goto_3
    invoke-static {p0, v0}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method
