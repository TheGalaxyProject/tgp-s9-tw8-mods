.class public final Lorg/apache/http/util/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsBlanks(Ljava/lang/CharSequence;)Z
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    :goto_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    return v2

    :cond_b
    return v2

    :cond_c
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_19

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    const/4 v1, 0x1

    return v1
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_c

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_d

    return v3

    :cond_c
    return v3

    :cond_d
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1a
    return v2
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_c

    :goto_a
    return v0

    :cond_b
    return v1

    :cond_c
    move v0, v1

    goto :goto_a
.end method
