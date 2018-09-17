.class public Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;
.super Ljava/lang/Object;
.source "CompleteHandler.java"


# static fields
.field private static final INTENT_RMM_NOTI:Ljava/lang/String; = "com.samsung.android.rmm.notification"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCompleteBody(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .registers 17

    sget-object v11, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "[getCompleteBody]"

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, ""

    const-string/jumbo v9, ""

    const-string/jumbo v6, ""

    const-string/jumbo v5, ""

    const/4 v1, 0x0

    const/4 v0, -0x1

    :try_start_16
    const-string/jumbo v11, "nonceSvr"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "cert"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "cmd"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "oprtId"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_31} :catch_b9

    move-result-object v6

    :goto_32
    sget-object v11, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[getCompleteBody] RLC operation command : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "Activating"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bf

    const/4 v0, 0x1

    :cond_55
    :goto_55
    new-instance v7, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v7}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    const-string/jumbo v11, "Messaging"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f7

    :try_start_63
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v12

    if-nez v4, :cond_ed

    const/4 v11, 0x0

    :goto_7e
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_8a} :catch_f2

    move-result-object v1

    :goto_8b
    sget-object v12, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[getCompleteBody] Device Msg L : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v1, :cond_129

    array-length v11, v1

    :goto_9c
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    return-object v7

    :catch_b9
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_32

    :cond_bf
    const-string/jumbo v11, "Unlocking"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ca

    const/4 v0, 0x3

    goto :goto_55

    :cond_ca
    const-string/jumbo v11, "Locking"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d5

    const/4 v0, 0x2

    goto :goto_55

    :cond_d5
    const-string/jumbo v11, "Completing"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e1

    const/4 v0, 0x4

    goto/16 :goto_55

    :cond_e1
    const-string/jumbo v11, "Blinking"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_55

    const/4 v0, 0x5

    goto/16 :goto_55

    :cond_ed
    :try_start_ed
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_f2

    move-result-object v11

    goto :goto_7e

    :catch_f2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8b

    :cond_f7
    :try_start_f7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v14, 0x2

    invoke-static {v11, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v14

    if-nez v8, :cond_11e

    const/4 v11, 0x0

    :goto_118
    invoke-virtual {v12, v13, v14, v11, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->prepareRlc([B[B[BI)[B

    move-result-object v1

    goto/16 :goto_8b

    :cond_11e
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_121} :catch_123

    move-result-object v11

    goto :goto_118

    :catch_123
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8b

    :cond_129
    const/4 v11, 0x0

    goto/16 :goto_9c
.end method

.method public static makeCompleteBundle(Lorg/json/JSONObject;Landroid/content/Context;)Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "body"

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->getCompleteBody(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :try_start_f
    const-string/jumbo v2, "cmd"

    const-string/jumbo v3, "cmd"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "oprtId"

    const-string/jumbo v3, "oprtId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_29} :catch_2a

    :goto_29
    return-object v0

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_29
.end method

.method public static run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 15

    const/4 v12, 0x0

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "RLC_CompleteHandler run"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_c

    return-object v12

    :cond_c
    :try_start_c
    const-string/jumbo v9, "body"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    const-string/jumbo v9, "cmd"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ""

    const-string/jumbo v9, "Activating"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ba

    const-string/jumbo v7, "https://%s/dm/v1/dev/cmd/activate"

    :cond_2b
    :goto_2b
    invoke-static {p0, v7}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    invoke-static {p0, v1, v8}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v6

    if-eqz v6, :cond_12a

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "RLC_CompleteHandler(isfailed): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_109

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "RLC_CompleteHandler : SUCCESS "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "Messaging"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_100

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b9

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.rmm.notification"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "msg"

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "requestor"

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "tel"

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "iconUrl"

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getIcon()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_b9
    return-object v12

    :cond_ba
    const-string/jumbo v9, "Unlocking"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c8

    const-string/jumbo v7, "https://%s/dm/v1/dev/cmd/unlock"

    goto/16 :goto_2b

    :cond_c8
    const-string/jumbo v9, "Locking"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    const-string/jumbo v7, "https://%s/dm/v1/dev/cmd/lock"

    goto/16 :goto_2b

    :cond_d6
    const-string/jumbo v9, "Completing"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e4

    const-string/jumbo v7, "https://%s/dm/v1/dev/cmd/complete"

    goto/16 :goto_2b

    :cond_e4
    const-string/jumbo v9, "Messaging"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f2

    const-string/jumbo v7, "https://%s/dm/v1/dev/cmd/message"

    goto/16 :goto_2b

    :cond_f2
    const-string/jumbo v9, "Blinking"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    const-string/jumbo v7, "https://%s/dm/v1/dev/cmd/blink"

    goto/16 :goto_2b

    :cond_100
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-static {p0, v9, v5}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->makeReportBundle(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    return-object v9

    :cond_109
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    const/16 v10, 0x193

    if-ne v9, v10, :cond_12b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "clearOp"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v9, 0xc

    invoke-static {p0, v0, v9}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "RLC_CompleteHandler : not supported device "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12a
    :goto_12a
    return-object v12

    :cond_12b
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    const/16 v10, 0x191

    if-eq v9, v10, :cond_12a

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_136} :catch_13a

    move-result v9

    const/16 v10, 0x1f4

    goto :goto_12a

    :catch_13a
    move-exception v2

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12a
.end method
