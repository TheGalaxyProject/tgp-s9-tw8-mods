.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;
.super Ljava/lang/Object;
.source "HWRVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFields:[I

.field private final mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 13

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_11

    :cond_7
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    new-array v7, v10, [I

    iput-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    return-void

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v2, -0x2

    new-array v6, v4, [I

    const/4 v1, 0x0

    :goto_24
    if-ne v2, v9, :cond_2e

    :goto_26
    new-array v7, v1, [I

    iput-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    const/4 v3, 0x0

    :goto_2b
    if-lt v3, v1, :cond_84

    return-void

    :cond_2e
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v9, :cond_4d

    :try_start_38
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v1

    :goto_48
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v2, 0x1

    goto :goto_24

    :cond_4d
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v1
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_5d} :catch_5e

    goto :goto_48

    :catch_5e
    move-exception v0

    sget-object v7, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Number version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is corrupted"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput v10, v6, v1

    goto :goto_26

    :cond_84
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v8, v6, v3

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)I
    .registers 10

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    array-length v1, v3

    iget-object v3, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    array-length v2, v3

    const/4 v0, 0x0

    :goto_14
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v0, v3, :cond_1c

    return v5

    :cond_1b
    return v5

    :cond_1c
    if-eq v1, v0, :cond_37

    if-eq v2, v0, :cond_38

    iget-object v3, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v4, v4, v0

    if-gt v3, v4, :cond_39

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v3, v3, v0

    iget-object v4, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mFields:[I

    aget v4, v4, v0

    if-gt v3, v4, :cond_3a

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_37
    return v6

    :cond_38
    return v7

    :cond_39
    return v6

    :cond_3a
    return v7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->compareTo(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->compareTo(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->mString:Ljava/lang/String;

    return-object v0
.end method
