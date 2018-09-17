.class synthetic Lcom/samsung/android/sdk/bixby/BixbyApi$2;
.super Ljava/lang/Object;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

.field static final synthetic $SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$NlgParamMode:[I

.field static final synthetic $SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

.field static final synthetic $SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$TtsMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    :try_start_9
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_1c7

    :goto_14
    :try_start_14
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1c4

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1c1

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1be

    :goto_35
    :try_start_35
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_1bb

    :goto_40
    :try_start_40
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_1b8

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_1b5

    :goto_56
    :try_start_56
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_1b2

    :goto_62
    :try_start_62
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_1af

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ResponseResults:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_1ac

    :goto_7a
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->values()[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$TtsMode:[I

    :try_start_83
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$TtsMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->CUT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8e} :catch_1a9

    :goto_8e
    :try_start_8e
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$TtsMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_99} :catch_1a6

    :goto_99
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    :try_start_a2
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SEND:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ad} :catch_1a3

    :goto_ad
    :try_start_ad
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DELETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b8} :catch_1a0

    :goto_b8
    :try_start_b8
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->TURN_ON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c3} :catch_19d

    :goto_c3
    :try_start_c3
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->APPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_ce} :catch_19a

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->FORWARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_d9} :catch_197

    :goto_d9
    :try_start_d9
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->MERGE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e4} :catch_194

    :goto_e4
    :try_start_e4
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DISCARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_ef} :catch_191

    :goto_ef
    :try_start_ef
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->RESET:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ef .. :try_end_fb} :catch_18e

    :goto_fb
    :try_start_fb
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->UPDATE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_107} :catch_18b

    :goto_107
    :try_start_107
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_113} :catch_189

    :goto_113
    :try_start_113
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->INQUIRE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11f} :catch_187

    :goto_11f
    :try_start_11f
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SAVE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_12b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_12b} :catch_185

    :goto_12b
    :try_start_12b
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->REPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_137
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12b .. :try_end_137} :catch_183

    :goto_137
    :try_start_137
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->COMMON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_143
    .catch Ljava/lang/NoSuchFieldError; {:try_start_137 .. :try_end_143} :catch_181

    :goto_143
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->values()[Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$NlgParamMode:[I

    :try_start_14c
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$NlgParamMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_157
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14c .. :try_end_157} :catch_17f

    :goto_157
    :try_start_157
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$NlgParamMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_162
    .catch Ljava/lang/NoSuchFieldError; {:try_start_157 .. :try_end_162} :catch_17d

    :goto_162
    :try_start_162
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$NlgParamMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_162 .. :try_end_16d} :catch_17b

    :goto_16d
    :try_start_16d
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$NlgParamMode:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_178} :catch_179

    :goto_178
    return-void

    :catch_179
    move-exception v0

    goto :goto_178

    :catch_17b
    move-exception v0

    goto :goto_16d

    :catch_17d
    move-exception v0

    goto :goto_162

    :catch_17f
    move-exception v0

    goto :goto_157

    :catch_181
    move-exception v0

    goto :goto_143

    :catch_183
    move-exception v0

    goto :goto_137

    :catch_185
    move-exception v0

    goto :goto_12b

    :catch_187
    move-exception v0

    goto :goto_11f

    :catch_189
    move-exception v0

    goto :goto_113

    :catch_18b
    move-exception v0

    goto/16 :goto_107

    :catch_18e
    move-exception v0

    goto/16 :goto_fb

    :catch_191
    move-exception v0

    goto/16 :goto_ef

    :catch_194
    move-exception v0

    goto/16 :goto_e4

    :catch_197
    move-exception v0

    goto/16 :goto_d9

    :catch_19a
    move-exception v0

    goto/16 :goto_ce

    :catch_19d
    move-exception v0

    goto/16 :goto_c3

    :catch_1a0
    move-exception v0

    goto/16 :goto_b8

    :catch_1a3
    move-exception v0

    goto/16 :goto_ad

    :catch_1a6
    move-exception v0

    goto/16 :goto_99

    :catch_1a9
    move-exception v0

    goto/16 :goto_8e

    :catch_1ac
    move-exception v0

    goto/16 :goto_7a

    :catch_1af
    move-exception v0

    goto/16 :goto_6e

    :catch_1b2
    move-exception v0

    goto/16 :goto_62

    :catch_1b5
    move-exception v0

    goto/16 :goto_56

    :catch_1b8
    move-exception v0

    goto/16 :goto_4b

    :catch_1bb
    move-exception v0

    goto/16 :goto_40

    :catch_1be
    move-exception v0

    goto/16 :goto_35

    :catch_1c1
    move-exception v0

    goto/16 :goto_2a

    :catch_1c4
    move-exception v0

    goto/16 :goto_1f

    :catch_1c7
    move-exception v0

    goto/16 :goto_14
.end method
