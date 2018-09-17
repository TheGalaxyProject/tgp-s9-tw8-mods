.class Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;
.super Ljava/lang/Object;
.source "CommandHandlerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final CMD_ALL_STATES:Ljava/lang/String; = "emes_all_states"

.field static final CMD_CHATTY_MODE:Ljava/lang/String; = "emes_chatty_mode"

.field static final CMD_CONTEXT:Ljava/lang/String; = "emes_request_context"

.field static final CMD_FILLING:Ljava/lang/String; = "emes_request_param_filling"

.field static final CMD_PARTIAL_LANDING_STATE:Ljava/lang/String; = "emes_partial_landing_state"

.field static final CMD_PATH_RULE_INFO:Ljava/lang/String; = "emes_pathrule_info"

.field static final CMD_SPLIT_STATE:Ljava/lang/String; = "emes_split_state"

.field static final CMD_STATE:Ljava/lang/String; = "emes_state"

.field static final CMD_TTS_RESULT:Ljava/lang/String; = "emes_tts_result"

.field static final CMD_USER_CONFIRM:Ljava/lang/String; = "emes_user_confirm"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private final mJsonCommand:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_0.2.4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mJsonCommand:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private getContent(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 16

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mJsonCommand:Ljava/lang/String;

    invoke-direct {v6, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "command"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Command from EM: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "emes_request_context"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9f

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->getContent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v12, "emes_state"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a5

    const-string/jumbo v12, "emes_request_param_filling"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c1

    const-string/jumbo v12, "emes_pathrule_info"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d6

    const-string/jumbo v12, "emes_chatty_mode"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f0

    const-string/jumbo v12, "emes_split_state"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_108

    const-string/jumbo v12, "emes_all_states"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_115

    const-string/jumbo v12, "emes_partial_landing_state"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_123

    const-string/jumbo v12, "emes_user_confirm"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_131

    const-string/jumbo v12, "emes_tts_result"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14e

    sget-object v12, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown command arrived : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9e
    return-void

    :cond_9f
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestContext()V

    return-void

    :cond_a5
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v13, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mJsonCommand:Ljava/lang/String;

    iput-object v13, v12, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStateCommandJsonFromBa:Ljava/lang/String;

    const-string/jumbo v12, "state"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v7}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendState(Ljava/lang/String;)V
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_bb} :catch_bc

    goto :goto_9e

    :catch_bc
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9e

    :cond_c1
    :try_start_c1
    const-string/jumbo v12, "slotFillingResult"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/sdk/bixby/ParamFillingReader;->read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    move-result-object v9

    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    goto :goto_9e

    :cond_d6
    const-string/jumbo v12, "pathRuleInfo"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->handleLandingKeyboardOffMode(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;->read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v10

    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v10}, Lcom/samsung/android/sdk/bixby/BixbyApi;->handlePathRuleInfo(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V

    goto :goto_9e

    :cond_f0
    const-string/jumbo v12, "utterance"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v12, "directSend"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendChatText(Ljava/lang/String;Z)V

    goto :goto_9e

    :cond_108
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v13, "stateIds"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendMultiStates(Lorg/json/JSONArray;)V

    goto :goto_9e

    :cond_115
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v13, "states"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendAllStates(Lorg/json/JSONArray;)V

    goto/16 :goto_9e

    :cond_123
    const-string/jumbo v12, "isLanded"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setPartiallyLanded(Z)V

    goto/16 :goto_9e

    :cond_131
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v13, "appName"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "result"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendUserConfirm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9e

    :cond_14e
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v13, "result"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendTtsResult(Ljava/lang/String;)V
    :try_end_15e
    .catch Lorg/json/JSONException; {:try_start_c1 .. :try_end_15e} :catch_bc

    goto/16 :goto_9e
.end method
