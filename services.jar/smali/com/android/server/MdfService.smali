.class public Lcom/android/server/MdfService;
.super Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;
.source "MdfService.java"


# instance fields
.field private mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;-><init>()V

    new-instance v2, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-direct {v2, p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    iget-object v2, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    if-nez v2, :cond_18

    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "mdfService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v2, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isCCModeSupport()Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v1, 0x0

    :try_start_21
    iget-object v2, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v2, "MdfService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initCCMode res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_47} :catch_48

    goto :goto_17

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0

    :cond_4d
    const-string/jumbo v2, "MdfService"

    const-string/jumbo v3, "This device does not support the MDF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method


# virtual methods
.method public initCCMode()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    if-nez v1, :cond_6

    const/4 v1, -0x2

    return v1

    :cond_6
    iget-object v1, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0
.end method
