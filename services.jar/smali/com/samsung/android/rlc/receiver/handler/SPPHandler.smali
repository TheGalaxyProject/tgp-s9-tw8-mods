.class public Lcom/samsung/android/rlc/receiver/handler/SPPHandler;
.super Lcom/samsung/android/rlc/receiver/handler/PushMsgHandler;
.source "SPPHandler.java"


# static fields
.field private static final synthetic -com-samsung-android-rlc-common-Extra$PushErrorCodeSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-samsung-android-rlc-common-Extra$PushErrorCodeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->-com-samsung-android-rlc-common-Extra$PushErrorCodeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->-com-samsung-android-rlc-common-Extra$PushErrorCodeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->values()[Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->APPLICATION_ALREADY_DEREGISTRATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_182

    :goto_18
    :try_start_18
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->BAD_REQUEST_FOR_PROVISION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_21} :catch_17f

    :goto_21
    :try_start_21
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->CONNECTION_MAX_EXCEEDED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2b} :catch_17c

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->DEREGISTRATION_FAILED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_179

    :goto_35
    :try_start_35
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->FAIL_TO_AUTHENTICATE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_3e} :catch_176

    :goto_3e
    :try_start_3e
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INITIALIZATION_ALREADY_COMPLETED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_173

    :goto_48
    :try_start_48
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INITIALIZATION_FAIL:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_170

    :goto_52
    :try_start_52
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INTERNAL_SERVER_ERROR:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_16d

    :goto_5c
    :try_start_5c
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INTERRUPTED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_66} :catch_16a

    :goto_66
    :try_start_66
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_6f} :catch_167

    :goto_6f
    :try_start_6f
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_DEVICE_TOKEN:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_164

    :goto_79
    :try_start_79
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_DEVICE_TOKEN_TO_REPROVISION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_161

    :goto_83
    :try_start_83
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8c} :catch_15e

    :goto_8c
    :try_start_8c
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->INVALID_STATE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_15b

    :goto_96
    :try_start_96
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a0} :catch_158

    :goto_a0
    :try_start_a0
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->PROVISIONING_DATA_EXISTS:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_aa} :catch_155

    :goto_aa
    :try_start_aa
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->PROVISIONING_FAIL:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_152

    :goto_b4
    :try_start_b4
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->PROVISION_EXCEPTION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_be} :catch_14f

    :goto_be
    :try_start_be
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->REGISTRATION_FAILED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c8} :catch_14c

    :goto_c8
    :try_start_c8
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->REPROVISIONING_REQUIRED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d2} :catch_14a

    :goto_d2
    :try_start_d2
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->RESET_BY_NEW_INITIALIZATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_dc} :catch_148

    :goto_dc
    :try_start_dc
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->SUCCESS:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e6} :catch_146

    :goto_e6
    :try_start_e6
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->TIMEOUT:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f0} :catch_144

    :goto_f0
    :try_start_f0
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNDEFINED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_f9} :catch_142

    :goto_f9
    :try_start_f9
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNEXPECTED_MESSAGE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_103} :catch_140

    :goto_103
    :try_start_103
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNKOWN_MESSAGE_TYPE:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_10d} :catch_13e

    :goto_10d
    :try_start_10d
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNSUPPORTED_PING_SPECIFICATION:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_117
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_117} :catch_13c

    :goto_117
    :try_start_117
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_APP_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_117 .. :try_end_120} :catch_13a

    :goto_120
    :try_start_120
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_DEVICE_TOKEN:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_12a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12a} :catch_138

    :goto_12a
    :try_start_12a
    sget-object v1, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->WRONG_REG_ID:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12a .. :try_end_133} :catch_136

    :goto_133
    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->-com-samsung-android-rlc-common-Extra$PushErrorCodeSwitchesValues:[I

    return-object v0

    :catch_136
    move-exception v1

    goto :goto_133

    :catch_138
    move-exception v1

    goto :goto_12a

    :catch_13a
    move-exception v1

    goto :goto_120

    :catch_13c
    move-exception v1

    goto :goto_117

    :catch_13e
    move-exception v1

    goto :goto_10d

    :catch_140
    move-exception v1

    goto :goto_103

    :catch_142
    move-exception v1

    goto :goto_f9

    :catch_144
    move-exception v1

    goto :goto_f0

    :catch_146
    move-exception v1

    goto :goto_e6

    :catch_148
    move-exception v1

    goto :goto_dc

    :catch_14a
    move-exception v1

    goto :goto_d2

    :catch_14c
    move-exception v1

    goto/16 :goto_c8

    :catch_14f
    move-exception v1

    goto/16 :goto_be

    :catch_152
    move-exception v1

    goto/16 :goto_b4

    :catch_155
    move-exception v1

    goto/16 :goto_aa

    :catch_158
    move-exception v1

    goto/16 :goto_a0

    :catch_15b
    move-exception v1

    goto/16 :goto_96

    :catch_15e
    move-exception v1

    goto/16 :goto_8c

    :catch_161
    move-exception v1

    goto/16 :goto_83

    :catch_164
    move-exception v1

    goto/16 :goto_79

    :catch_167
    move-exception v1

    goto/16 :goto_6f

    :catch_16a
    move-exception v1

    goto/16 :goto_66

    :catch_16d
    move-exception v1

    goto/16 :goto_5c

    :catch_170
    move-exception v1

    goto/16 :goto_52

    :catch_173
    move-exception v1

    goto/16 :goto_48

    :catch_176
    move-exception v1

    goto/16 :goto_3e

    :catch_179
    move-exception v1

    goto/16 :goto_35

    :catch_17c
    move-exception v1

    goto/16 :goto_2b

    :catch_17f
    move-exception v1

    goto/16 :goto_21

    :catch_182
    move-exception v1

    goto/16 :goto_18
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/rlc/receiver/handler/PushMsgHandler;-><init>()V

    return-void
.end method

.method public static deregisterFromSPP(Landroid/content/Context;)V
    .registers 2

    const-string/jumbo v0, "eb850acb179b3447"

    invoke-static {p0, v0}, Lcom/samsung/android/rlc/util/SppAPI;->deregistration(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static handlePushMsg(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "[handlePushMsg]"

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "appId"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v10, "notificationId"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "msg"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "ack"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v10, "sender"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "appData"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "timeStamp"

    const-wide/16 v12, 0x0

    invoke-virtual {p1, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string/jumbo v10, "sessionInfo"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "connectionTerm"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "appId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notiId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "msg = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ack = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sender = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "appData = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "timestamp = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sessionInfo = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "connectionTerm = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15c

    :try_start_136
    const-string/jumbo v10, "SPP"

    invoke-static {p0, v5, v10}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->handleMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13c} :catch_13d

    :goto_13c
    return-void

    :catch_13d
    move-exception v4

    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception is occured in PushMsgHandler.handleMsg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13c

    :cond_15c
    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "message is null"

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13c
.end method

.method public static handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/16 v9, 0xa

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "[handleRegistration]"

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "com.sec.spp.Status"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "Error"

    sget-object v7, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->UNDEFINED:Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    invoke-virtual {v7}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->getValue()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v6, "appId"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "RegistrationID"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "errorCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->valueOf(I)Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "appId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "regId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v5, :pswitch_data_180

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "ignored!!"

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b6
    return-void

    :pswitch_b7
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Config.PUSH_REGISTRATION_SUCCESS"

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11f

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Registration Completed."

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPBackoff(Landroid/content/Context;)V

    const-string/jumbo v6, "SPP"

    invoke-static {p0, v6}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[SPP]Saved Registration ID :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[SPP]New Registration ID :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "SPP"

    invoke-static {p0, v3, v6}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRegistraionID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "SPP"

    invoke-static {p0, v6}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->makeMgRegistrationBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v6, 0x6

    invoke-static {p0, v1, v6}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_b6

    :cond_11f
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Registration ID is null or empty!!"

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v6, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_b6

    :pswitch_130
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Config.PUSH_REGISTRATION_FAIL"

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->-getcom-samsung-android-rlc-common-Extra$PushErrorCodeSwitchesValues()[I

    move-result-object v6

    invoke-static {v2}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->valueOf(I)Lcom/samsung/android/rlc/common/Extra$PushErrorCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/rlc/common/Extra$PushErrorCode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_18c

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v6, v9}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto/16 :goto_b6

    :pswitch_153
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "ignored!!"

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b6

    :pswitch_15d
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Config.PUSH_DEREGISTRATION_SUCCESS"

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearSPPBackoff(Landroid/content/Context;)V

    const-string/jumbo v6, "SPP"

    invoke-static {p0, v6}, Lcom/samsung/android/rlc/util/PreferencesUtil;->clearRegistraionID(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v6, "SPP"

    invoke-static {p0, v6}, Lcom/samsung/android/rlc/util/PreferencesUtil;->unmarkMGRegistered(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b6

    :pswitch_176
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/SPPHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Config.PUSH_DEREGISTRATION_FAIL"

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b6

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_130
        :pswitch_15d
        :pswitch_176
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
        :pswitch_153
    .end packed-switch
.end method

.method public static registerAtSPP(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "eb850acb179b3447"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/SppAPI;->registration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
