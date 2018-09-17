.class Lcom/samsung/android/sdk/bixby/ParamFillingReader;
.super Ljava/lang/Object;
.source "ParamFillingReader.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_a
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "utterance"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "intent"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "appName"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "screenStates"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    const/4 v14, 0x0

    :goto_2e
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v14, v1, :cond_48

    const-string/jumbo v1, "screenParameters"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    const/4 v12, 0x0

    :goto_3c
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_54

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_48
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2e

    :cond_54
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    new-instance v17, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;-><init>()V

    const-string/jumbo v1, "slotType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_eb

    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setSlotType(Ljava/lang/String;)V

    :goto_72
    const-string/jumbo v1, "slotName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_108

    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setSlotName(Ljava/lang/String;)V

    :goto_85
    const-string/jumbo v1, "slotValue"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_118

    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setSlotValue(Ljava/lang/String;)V

    :goto_98
    const-string/jumbo v1, "CH_ObjectType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_128

    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setCHObjectType(Ljava/lang/String;)V

    :goto_ab
    const-string/jumbo v1, "CH_Objects"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_138

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setCHObjects(Ljava/util/List;)V

    :goto_bc
    const-string/jumbo v1, "parameterName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b1

    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setParameterName(Ljava/lang/String;)V

    :goto_cf
    const-string/jumbo v1, "parameterType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c1

    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setParameterType(Ljava/lang/String;)V

    :goto_e2
    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3c

    :cond_eb
    const-string/jumbo v1, "slotType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setSlotType(Ljava/lang/String;)V
    :try_end_f9
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_f9} :catch_fb

    goto/16 :goto_72

    :catch_fb
    move-exception v11

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_108
    :try_start_108
    const-string/jumbo v1, "slotName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_85

    :cond_118
    const-string/jumbo v1, "slotValue"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_98

    :cond_128
    const-string/jumbo v1, "CH_ObjectType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_138
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "CH_Objects"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v13, 0x0

    :goto_147
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v13, v1, :cond_154

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setCHObjects(Ljava/util/List;)V

    goto/16 :goto_bc

    :cond_154
    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v10, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-direct {v10}, Lcom/samsung/android/sdk/bixby/data/CHObject;-><init>()V

    const-string/jumbo v1, "CH_Type"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_190

    const-string/jumbo v1, ""

    invoke-virtual {v10, v1}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    :goto_16c
    const-string/jumbo v1, "CH_Value"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19b

    const-string/jumbo v1, ""

    invoke-virtual {v10, v1}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    :goto_17b
    const-string/jumbo v1, "CH_ValueType"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a6

    const-string/jumbo v1, ""

    invoke-virtual {v10, v1}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    :goto_18a
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_147

    :cond_190
    const-string/jumbo v1, "CH_Type"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto :goto_16c

    :cond_19b
    const-string/jumbo v1, "CH_Value"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_17b

    :cond_1a6
    const-string/jumbo v1, "CH_ValueType"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_18a

    :cond_1b1
    const-string/jumbo v1, "parameterName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setParameterName(Ljava/lang/String;)V

    goto/16 :goto_cf

    :cond_1c1
    const-string/jumbo v1, "parameterType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->setParameterType(Ljava/lang/String;)V
    :try_end_1cf
    .catch Lorg/json/JSONException; {:try_start_108 .. :try_end_1cf} :catch_fb

    goto/16 :goto_e2
.end method
