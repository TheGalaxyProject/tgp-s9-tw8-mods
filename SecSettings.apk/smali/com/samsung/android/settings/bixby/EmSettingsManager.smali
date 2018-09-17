.class public Lcom/samsung/android/settings/bixby/EmSettingsManager;
.super Ljava/lang/Object;
.source "EmSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bixby/EmSettingsManager$1;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmChattyModeCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmPathRuleSplitCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestAllStatesCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestSetupCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestTearDownCallback;,
        Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;
    }
.end annotation


# static fields
.field public static final EM_NLG_PARAM_MODE_CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final EM_NLG_PARAM_MODE_NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final EM_NLG_PARAM_MODE_TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final EM_TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final EM_TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;


# instance fields
.field private mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

.field private mContext:Landroid/content/Context;

.field private mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmChattyModeCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmChattyModeCallback;

.field private mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

.field private mEmParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private mEmParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private mEmPathRuleSplitCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmPathRuleSplitCallback;

.field private mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

.field private mEmState:Lcom/samsung/android/sdk/bixby/data/State;

.field private mEmStateId:Ljava/lang/String;

.field private mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

.field private mEmTestAllStatesCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestAllStatesCallback;

.field private mEmTestSetupCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestSetupCallback;

.field private mEmTestTearDownCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestTearDownCallback;

.field private mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

.field private mNlgCallCount:I

.field mNlgrequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

.field private mPendingState:Z

.field private mPfScreenParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mPfScreenParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/ScreenParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseCallCount:I

.field mResultParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;",
            ">;"
        }
    .end annotation
.end field

.field mScreenParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenStates:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

.field needResultHijack:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/util/LinkedHashSet;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/bixby/EmSettingsManager;)Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/bixby/EmSettingsManager;Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/sdk/bixby/data/State;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmState:Lcom/samsung/android/sdk/bixby/data/State;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPfScreenParamMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPfScreenParams:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->resetResponseCallCount()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sput-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPfScreenParams:Ljava/util/List;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmPathRuleSplitCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmPathRuleSplitCallback;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmChattyModeCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmChattyModeCallback;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmTestSetupCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestSetupCallback;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmTestTearDownCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestTearDownCallback;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmTestAllStatesCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmTestAllStatesCallback;

    iput-boolean v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    iput v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    iput v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->needResultHijack:Z

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager$1;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mMultiPathRuleListener:Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mChattyModeListener:Lcom/samsung/android/sdk/bixby/BixbyApi$ChattyModeListener;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mTestListener:Lcom/samsung/android/sdk/bixby/BixbyApi$TestListener;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgrequestInfo:Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v1

    if-eqz v1, :cond_42

    :try_start_3c
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    return-void

    :catch_43
    move-exception v0

    const-string/jumbo v1, "EmSettingsManager"

    const-string/jumbo v2, "EmSettingsManager() getInstance IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private callRequestNlg(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_51

    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNlg() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") : NlgStateId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method private callSendResponse()V
    .registers 4

    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_46

    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResponse() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iget v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_54

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sendResponse duplicated call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    return-void
.end method

.method private clearEmCallbacks()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamFillingCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmParamFillingCallback;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmRuleCanceledCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmRuleCanceledCallback;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmPathRuleSplitCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmPathRuleSplitCallback;

    return-void
.end method

.method private resetResponseCallCount()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResponseCallCount:I

    iput v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mNlgCallCount:I

    return-void
.end method

.method private setEmCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private setEmStateReqCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    return-void
.end method

.method private setLogEnterState(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    return-void
.end method

.method private setLogEnterStates(Landroid/content/Context;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterStates(Ljava/util/Set;)V

    return-void
.end method

.method private setLogExitState(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    return-void
.end method

.method private setLogExitStates(Landroid/content/Context;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitStates(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "Already"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "Bixby_SmartView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addNlgScreenParam attrName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->needResultHijack:Z

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    if-nez v0, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;-><init>(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V
    .registers 8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v1, :cond_11

    :try_start_b
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_11} :catch_5d

    :cond_11
    :goto_11
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5c

    if-eqz p2, :cond_21

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setEmCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mInterimStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    :cond_21
    instance-of v1, p3, Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_71

    move-object v1, p3

    check-cast v1, Ljava/util/LinkedHashSet;

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogEnterStates(Landroid/content/Context;Ljava/util/Set;)V

    :cond_31
    :goto_31
    const-string/jumbo v1, "EmSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindEmService() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    return-void

    :catch_5d
    move-exception v0

    const-string/jumbo v1, "EmSettingsManager"

    const-string/jumbo v2, "bindEmService() getInstance IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Settings"

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    goto :goto_11

    :cond_71
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_31

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenStates:Ljava/util/LinkedHashSet;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogEnterState(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;)V
    .registers 6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_e

    if-eqz p4, :cond_e

    invoke-direct {p0, p4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setEmStateReqCallback(Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;)V

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public clearEmService(Ljava/lang/Object;)V
    .registers 5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmCallbacks()V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->resetResponseCallCount()V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_55

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogExitStates(Landroid/content/Context;Ljava/util/Set;)V

    :cond_2a
    :goto_2a
    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearEmService() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void

    :cond_56
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setLogExitState(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public clearNlgParams()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    return-void
.end method

.method public getCHValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-nez v3, :cond_c

    return-object v5

    :cond_c
    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getCHObjects()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/CHObject;->getCHValue()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_31
    return-object v5
.end method

.method public getParamBoolean(I)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getParamInt(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getParamString(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParamMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-nez v0, :cond_c

    return-object v2

    :cond_c
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParamsSize()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPendingState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    return v0
.end method

.method public getStateId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmStateId:Ljava/lang/String;

    return-object v0
.end method

.method public isLastState()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEmState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRuleRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v0

    return v0
.end method

.method public isTestMode()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isTestMode()Z

    move-result v0

    return v0
.end method

.method public requestNlg(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_NLG_PARAM_MODE_NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    return-void
.end method

.method public requestNlg(Ljava/lang/String;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V
    .registers 10

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    return-void

    :cond_9
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-direct {v3, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_7c

    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mScreenParamList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v4, "EmSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestNlg() ScreenParam("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getAttrValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_7c
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    if-eqz v4, :cond_d7

    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_87
    if-ge v0, v1, :cond_d7

    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mResultParamList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v4, "EmSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestNlg() ResultParam("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager$NlgParam;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    :cond_d7
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v4, v3, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->callRequestNlg(Ljava/lang/String;)V

    return-void
.end method

.method public requestNlgForNotSupportMenu()V
    .registers 4

    const-string/jumbo v0, "SettingsMenu"

    const-string/jumbo v1, "exist"

    const-string/jumbo v2, "no"

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "NLG_PRECONDITION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    return-void
.end method

.method public sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->needResultHijack:Z

    if-eqz v0, :cond_6

    sget-object p1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearNlgParams()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->callSendResponse()V

    return-void
.end method

.method public setAppVisible(Z)V
    .registers 5

    const-string/jumbo v0, "EmSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppVisible() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mEm:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setAppVisible(Z)V

    return-void
.end method

.method public setClientVisibility(Z)V
    .registers 4

    const-string/jumbo v0, "EmSettingsManager"

    const-string/jumbo v1, "setClientVisibility() : Unsupported from BixbyAgent 0.1.6"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "Already"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "Bixby_SmartView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNlgScreenParam attrName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->needResultHijack:Z

    :cond_2c
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPendingState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/bixby/EmSettingsManager;->mPendingState:Z

    return-void
.end method
