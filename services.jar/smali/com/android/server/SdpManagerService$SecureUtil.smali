.class public Lcom/android/server/SdpManagerService$SecureUtil;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureUtil"
.end annotation


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final ORDER_BASE:I = 0x1

.field public static final ORDER_EPHEM_DRIVEN:I = 0x4

.field public static final ORDER_MANAGED_DRIVEN:I = 0x8

.field public static final ORDER_PASSWORD_DRIVEN:I = 0x1

.field public static final ORDER_TOKEN_DRIVEN:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 8

    const-string/jumbo v1, ""

    if-nez p0, :cond_d

    const-string/jumbo v1, "null"

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_d
    const/4 v2, 0x0

    array-length v3, p0

    :goto_f
    if-ge v2, v3, :cond_8

    aget-byte v0, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "0123456789ABCDEF"

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "0123456789ABCDEF"

    and-int/lit8 v6, v0, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method public static clear(Ljava/lang/String;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->clear()V

    :cond_5
    return-void
.end method

.method public static clear([B)V
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public static varargs clearAll([Ljava/lang/Object;)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    array-length v2, p0

    if-nez v2, :cond_7

    :cond_6
    return-void

    :cond_7
    array-length v2, p0

    :goto_8
    if-ge v1, v2, :cond_22

    aget-object v0, p0, v1

    instance-of v3, v0, [B

    if-eqz v3, :cond_18

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    :cond_15
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_15

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    goto :goto_15

    :cond_22
    return-void
.end method

.method public static generateRandomBytes(I)[B
    .registers 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs isAnyoneEmptyHere([Ljava/lang/Object;)Z
    .registers 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_7

    array-length v1, p0

    if-nez v1, :cond_8

    :cond_7
    return v5

    :cond_8
    array-length v3, p0

    move v1, v2

    :goto_a
    if-ge v1, v3, :cond_18

    aget-object v0, p0, v1

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return v5

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return v2
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, [B

    array-length v0, v0

    if-nez v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    goto :goto_e

    :cond_1a
    move v0, v1

    goto :goto_e
.end method

.method public static isFailed(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1f

    :cond_11
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e

    :cond_21
    move v0, v2

    goto :goto_1e
.end method

.method public static record(Z)Z
    .registers 6

    if-nez p0, :cond_2a

    const-string/jumbo v1, "Unexpected failure with a process [ UID : %d, PID : %d ]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/Exception;)V

    :cond_2a
    return p0
.end method

.method public static safe(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_6
    return-object p0
.end method
