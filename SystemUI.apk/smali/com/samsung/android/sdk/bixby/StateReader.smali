.class Lcom/samsung/android/sdk/bixby/StateReader;
.super Ljava/lang/Object;
.source "StateReader.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "specVer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_95

    const-string/jumbo v3, "1.0"

    :goto_1c
    const-string/jumbo v2, "seqNum"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v2, "isExecuted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v2, "appName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "stateId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "ruleId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "isLandingState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v2, "isLastState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :goto_6e
    const-string/jumbo v2, "subIntent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-string/jumbo v11, ""

    :goto_7c
    const-string/jumbo v2, "parameters"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    const/16 v18, 0x0

    :goto_87
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_b8

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/sdk/bixby/data/State;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_95
    const-string/jumbo v2, "specVer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c

    :cond_a0
    const-string/jumbo v2, "isLastState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_6e

    :cond_ae
    const-string/jumbo v2, "subIntent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7c

    :cond_b8
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    new-instance v21, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/android/sdk/bixby/data/Parameter;-><init>()V

    const-string/jumbo v2, "slotType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_179

    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotType(Ljava/lang/String;)V

    :goto_d8
    const-string/jumbo v2, "slotName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_196

    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotName(Ljava/lang/String;)V

    :goto_eb
    const-string/jumbo v2, "slotValue"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a6

    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    :goto_fe
    const-string/jumbo v2, "slotValueType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b6

    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    :goto_111
    const-string/jumbo v2, "CH_ObjectType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c6

    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    :goto_124
    const-string/jumbo v2, "CH_Objects"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d6

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjects(Ljava/util/List;)V

    :goto_135
    const-string/jumbo v2, "parameterName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_260

    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterName(Ljava/lang/String;)V

    :goto_148
    const-string/jumbo v2, "parameterType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_270

    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterType(Ljava/lang/String;)V

    :goto_15b
    const-string/jumbo v2, "isMandatory"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_280

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    :goto_170
    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_87

    :cond_179
    const-string/jumbo v2, "slotType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotType(Ljava/lang/String;)V
    :try_end_187
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_187} :catch_189

    goto/16 :goto_d8

    :catch_189
    move-exception v17

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_196
    :try_start_196
    const-string/jumbo v2, "slotName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_eb

    :cond_1a6
    const-string/jumbo v2, "slotValue"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_fe

    :cond_1b6
    const-string/jumbo v2, "slotValueType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    goto/16 :goto_111

    :cond_1c6
    const-string/jumbo v2, "CH_ObjectType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_124

    :cond_1d6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "CH_Objects"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/16 v19, 0x0

    :goto_1e6
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_1f5

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjects(Ljava/util/List;)V

    goto/16 :goto_135

    :cond_1f5
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v16, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/sdk/bixby/data/CHObject;-><init>()V

    const-string/jumbo v2, "CH_Type"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_239

    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    :goto_211
    const-string/jumbo v2, "CH_Value"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_246

    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    :goto_222
    const-string/jumbo v2, "CH_ValueType"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_253

    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    :goto_233
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_1e6

    :cond_239
    const-string/jumbo v2, "CH_Type"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto :goto_211

    :cond_246
    const-string/jumbo v2, "CH_Value"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_222

    :cond_253
    const-string/jumbo v2, "CH_ValueType"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_233

    :cond_260
    const-string/jumbo v2, "parameterName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterName(Ljava/lang/String;)V

    goto/16 :goto_148

    :cond_270
    const-string/jumbo v2, "parameterType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterType(Ljava/lang/String;)V

    goto/16 :goto_15b

    :cond_280
    const-string/jumbo v2, "isMandatory"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V
    :try_end_292
    .catch Lorg/json/JSONException; {:try_start_196 .. :try_end_292} :catch_189

    goto/16 :goto_170
.end method
