.class public Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;
.super Ljava/lang/Object;
.source "UnlockReportHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .registers 11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    :try_start_16
    invoke-static {v0, v5}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/security/SignatureException; {:try_start_16 .. :try_end_19} :catch_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_19} :catch_3d
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_19} :catch_38

    move-result-object v7

    :goto_1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    invoke-virtual {v4, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    return-object v4

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1a

    :catch_3d
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1a

    :catch_42
    move-exception v3

    invoke-virtual {v3}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_1a
.end method

.method public static makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "body"

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v11, 0x1

    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "UnlockReportManager run"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Normal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Rlc status is not normal"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "unlock_report"

    const-string/jumbo v9, "N"

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "retry_17"

    const-string/jumbo v9, ""

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v8, "body"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    new-instance v1, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v5

    if-nez v5, :cond_57

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const/16 v9, 0x11

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    :goto_56
    return-void

    :cond_57
    const-string/jumbo v8, "https://%s/dm/v1/dev/unlocked"

    invoke-static {p0, v8}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v5, v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v6

    if-eqz v6, :cond_c6

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_bd

    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "UnlockReportManager - success "

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "unlock_report"

    const-string/jumbo v9, "N"

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "retry_17"

    const-string/jumbo v9, ""

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.rmm.blink_stop"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const-string/jumbo v9, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {p0, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_96} :catch_97

    goto :goto_56

    :catch_97
    move-exception v3

    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {p0, v8, v11}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_56

    :cond_bd
    :try_start_bd
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_56

    :cond_c6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ce} :catch_97

    goto :goto_56
.end method

.method static setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .registers 7

    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[setRetry]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    const-string/jumbo v1, "unlock_report"

    const-string/jumbo v2, "Y"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1c

    const-string/jumbo v1, "cert"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/16 v1, 0x11

    invoke-static {p0, p1, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_22

    :goto_21
    return-void

    :catch_22
    move-exception v0

    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
