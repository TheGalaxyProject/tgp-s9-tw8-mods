.class final Lcom/samsung/android/authnrservice/service/AuthnrTaController;
.super Ljava/lang/Object;
.source "AuthnrTaController.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/service/ITaController;


# static fields
.field private static final TAG:Ljava/lang/String; = "ATC"

.field private static sIsNativeLoaded:Z

.field private static sIsPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    :try_start_0
    const-string/jumbo v3, "authnrtactrl_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_20
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_9} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v3, "ATC"

    const-string/jumbo v4, "NPE"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_15
    move-exception v2

    const-string/jumbo v3, "ATC"

    const-string/jumbo v4, "ULE"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_20
    move-exception v1

    const-string/jumbo v3, "ATC"

    const-string/jumbo v4, "SE"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeInitialize(IJJ)Z
.end method

.method private native nativeInitializeOperation()Z
.end method

.method private native nativeProcess([B)[B
.end method

.method private native nativeTerminate()Z
.end method

.method private native nativeTerminateOperation()Z
.end method


# virtual methods
.method public initialize(IJJ)Z
    .registers 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "initialize"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z

    if-nez v1, :cond_19

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_19
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    if-eqz v1, :cond_27

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "already prepared"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_27
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeInitializeOperation()Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "nativeInitializeOperation failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_37
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeInitialize(IJJ)Z

    move-result v0

    if-nez v0, :cond_47

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "nativeInitialize failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_47
    sput-boolean v4, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    return v4
.end method

.method public process([B)[B
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "process"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z

    if-nez v1, :cond_1a

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [B

    return-object v1

    :cond_1a
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    if-nez v1, :cond_2a

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "not prepared"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [B

    return-object v1

    :cond_2a
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeProcess([B)[B

    move-result-object v0

    if-eqz v0, :cond_33

    array-length v1, v0

    if-nez v1, :cond_3c

    :cond_33
    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "processNative failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    if-nez v0, :cond_40

    new-array v0, v3, [B

    :cond_40
    return-object v0
.end method

.method public terminate()Z
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "terminate"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsNativeLoaded:Z

    if-nez v1, :cond_18

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_18
    sget-boolean v1, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    if-nez v1, :cond_26

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "not prepared"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_26
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeTerminate()Z

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "nativeTerminate failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_36
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->nativeTerminateOperation()Z

    move-result v0

    if-nez v0, :cond_46

    const-string/jumbo v1, "ATC"

    const-string/jumbo v2, "nativeTerminateOperation failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_46
    sput-boolean v3, Lcom/samsung/android/authnrservice/service/AuthnrTaController;->sIsPrepared:Z

    const/4 v1, 0x1

    return v1
.end method
