.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-ne p0, p1, :cond_6

    return v0

    :cond_6
    if-nez p0, :cond_1f

    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1d

    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a

    :cond_1d
    move v0, v1

    goto :goto_1a

    :cond_1f
    if-nez p1, :cond_35

    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_34

    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_34

    move v1, v0

    :cond_34
    return v1

    :cond_35
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_56

    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_56

    move v1, v0

    :cond_56
    return v1
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v9, -0x1

    if-nez p0, :cond_23

    const/4 v2, -0x1

    :goto_5
    if-nez p1, :cond_2b

    const/4 v3, -0x1

    :goto_8
    if-nez p0, :cond_33

    const/4 v4, -0x1

    :goto_b
    if-nez p1, :cond_3b

    const/4 v5, -0x1

    :goto_e
    if-eq v2, v9, :cond_12

    if-ne v4, v9, :cond_43

    :cond_12
    const/4 v6, 0x0

    const v0, 0x7fffffff

    :goto_16
    if-eq v3, v9, :cond_1a

    if-ne v5, v9, :cond_4a

    :cond_1a
    const/4 v7, 0x0

    const v1, 0x7fffffff

    :goto_1e
    if-gt v6, v7, :cond_51

    if-gt v7, v0, :cond_51

    return v10

    :cond_23
    const-string/jumbo v8, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_5

    :cond_2b
    const-string/jumbo v8, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_8

    :cond_33
    const-string/jumbo v8, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_b

    :cond_3b
    const-string/jumbo v8, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_e

    :cond_43
    mul-int v6, v4, v2

    add-int v8, v6, v4

    add-int/lit8 v0, v8, -0x1

    goto :goto_16

    :cond_4a
    mul-int v7, v5, v3

    add-int v8, v7, v5

    add-int/lit8 v1, v8, -0x1

    goto :goto_1e

    :cond_51
    if-gt v6, v1, :cond_56

    if-gt v1, v0, :cond_56

    return v10

    :cond_56
    const/4 v8, 0x0

    return v8
.end method
