.class public Lcom/samsung/android/support/sesl/core/util/SeslPair;
.super Ljava/lang/Object;
.source "SeslPair.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method private static objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    if-eqz v2, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/util/SeslPair;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/util/SeslPair;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    :goto_12
    return v1

    :cond_13
    return v1

    :cond_14
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/util/SeslPair;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v1, 0x1

    goto :goto_12
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    xor-int/2addr v0, v1

    return v0

    :cond_17
    move v0, v1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SeslPair{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslPair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
