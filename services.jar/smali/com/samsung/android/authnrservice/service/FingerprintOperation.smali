.class final Lcom/samsung/android/authnrservice/service/FingerprintOperation;
.super Ljava/lang/Object;
.source "FingerprintOperation.java"


# static fields
.field private static final APP_ID_AUTHNR:Ljava/lang/String; = "authnr"

.field private static final FIDO_CMD_GET_WRAPPED_OBJECT:S = 0x2s

.field private static final FIDO_CMD_SET_CHALLENGE:S = 0x1s

.field private static final LENGTH_FIELD_SIZE:S = 0x2s

.field private static final MAX_RESPONSE_LENGTH:I = 0x2800

.field private static final OPERATION_CODE_FIELD_SIZE:S = 0x2s

.field private static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FPO"

.field private static sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_14

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_14
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    .registers 3

    const-class v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    if-nez v0, :cond_e

    new-instance v0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    invoke-direct {v0, p0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    :cond_e
    sget-object v0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized sendRequest([B)[B
    .registers 11

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "FPO"

    const-string/jumbo v1, "sendRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1d

    const-string/jumbo v0, "FPO"

    const-string/jumbo v1, "Fingerprint Service not found"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_ae

    monitor-exit p0

    return-object v0

    :cond_1d
    if-eqz p1, :cond_22

    :try_start_1f
    array-length v0, p1

    if-nez v0, :cond_2d

    :cond_22
    const-string/jumbo v0, "FPO"

    const-string/jumbo v1, "invalid input"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_ae

    monitor-exit p0

    return-object v8

    :cond_2d
    :try_start_2d
    const-string/jumbo v0, "authnr"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v2, v0, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/16 v1, 0x5301

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const-string/jumbo v0, "authnr"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    array-length v1, p1

    add-int/2addr v0, v1

    int-to-short v0, v0

    const/4 v1, 0x2

    invoke-virtual {v6, v1, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    const/16 v1, 0x5302

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const-string/jumbo v0, "authnr"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    const/4 v1, 0x6

    invoke-virtual {v6, v1, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const-string/jumbo v0, "authnr"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string/jumbo v1, "authnr"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v0, "authnr"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    array-length v1, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v0, 0x2800

    new-array v3, v0, [B

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v7

    if-nez v7, :cond_a8

    const-string/jumbo v0, "FPO"

    const-string/jumbo v1, "request failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_2d .. :try_end_a6} :catchall_ae

    monitor-exit p0

    return-object v8

    :cond_a8
    :try_start_a8
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ae

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_ae
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getWrappedObject([B)[B
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string/jumbo v3, "FPO"

    const-string/jumbo v4, "getWrappedObject"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, p1

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    array-length v3, p1

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sendRequest([B)[B

    move-result-object v1

    if-eqz v1, :cond_3a

    array-length v3, v1

    if-nez v3, :cond_48

    :cond_3a
    const-string/jumbo v3, "FPO"

    const-string/jumbo v4, "sendRequest failed"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [B
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_67

    monitor-exit p0

    return-object v3

    :cond_48
    :try_start_48
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    if-eqz v2, :cond_65

    const-string/jumbo v3, "FPO"

    const-string/jumbo v4, "getWrappedObject failed"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [B
    :try_end_63
    .catchall {:try_start_48 .. :try_end_63} :catchall_67

    monitor-exit p0

    return-object v3

    :cond_65
    monitor-exit p0

    return-object v1

    :catchall_67
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setChallenge([B)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_3
    const-string/jumbo v3, "FPO"

    const-string/jumbo v4, "set challenge"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, p1

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    array-length v3, p1

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sendRequest([B)[B

    move-result-object v1

    if-eqz v1, :cond_3c

    array-length v3, v1

    if-nez v3, :cond_47

    :cond_3c
    const-string/jumbo v3, "FPO"

    const-string/jumbo v4, "sendRequest failed"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_63

    monitor-exit p0

    return v6

    :cond_47
    :try_start_47
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    if-eqz v2, :cond_61

    const-string/jumbo v3, "FPO"

    const-string/jumbo v4, "setChallenge failed"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_63

    monitor-exit p0

    return v6

    :cond_61
    monitor-exit p0

    return v7

    :catchall_63
    move-exception v3

    monitor-exit p0

    throw v3
.end method
