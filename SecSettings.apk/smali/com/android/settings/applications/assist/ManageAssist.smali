.class public Lcom/android/settings/applications/assist/ManageAssist;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ManageAssist.java"

# interfaces
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/ManageAssist$1;,
        Lcom/android/settings/applications/assist/ManageAssist$2;,
        Lcom/android/settings/applications/assist/ManageAssist$3;,
        Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field protected final mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

.field private mDefaultAssistPref:Lcom/samsung/android/settings/SecGearPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field final mHandler:Landroid/os/Handler;

.field private mVoiceInputPref:Lcom/samsung/android/settings/SecGearPreference;


# direct methods
.method static synthetic -get0()Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sget-object v0, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/assist/ManageAssist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sput-object p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)Ljava/util/List;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/assist/ManageAssist;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/assist/ManageAssist;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/ManageAssist;->updatePreferenceStates()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/applications/assist/ManageAssist$1;

    invoke-direct {v0}, Lcom/android/settings/applications/assist/ManageAssist$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/assist/ManageAssist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;-><init>(Lcom/android/settings/applications/assist/ManageAssist;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    new-instance v0, Lcom/android/settings/applications/assist/ManageAssist$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/ManageAssist$2;-><init>(Lcom/android/settings/applications/assist/ManageAssist;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/applications/assist/ManageAssist$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/ManageAssist$3;-><init>(Lcom/android/settings/applications/assist/ManageAssist;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/gestures/AssistGesturePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/gestures/AssistGesturePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/assist/AssistContextPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/assist/AssistFlashScreenPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public exeCustomAction()V
    .registers 1

    return-void
.end method

.method public exeOptAction()V
    .registers 1

    return-void
.end method

.method public exePrefAction()V
    .registers 23

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/assist/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/support/v7/preference/PreferenceScreen;Z)Z

    move-result v20

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "DeviceAssistanceAppList"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_153

    if-nez v20, :cond_32

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v4, "AppName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/assist/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v21

    const/4 v1, 0x1

    move/from16 v0, v21

    if-ge v0, v1, :cond_77

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exePrefAction)size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v4, "AppName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecGearPreference;->performClick()V

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/assist/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exePrefAction)queryAppName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bc

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v4, "AppName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecGearPreference;->performClick()V

    :goto_b6
    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :cond_bb
    :goto_bb
    return-void

    :cond_bc
    const/16 v19, 0x0

    const/16 v18, 0x0

    new-instance v12, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/assist/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->getDefaultAssistListCandidates()Ljava/util/List;

    move-result-object v14

    const/16 v17, 0x0

    :goto_cf
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_103

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_134

    invoke-virtual {v13, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_134

    const/16 v19, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    iget-object v1, v1, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;

    move-result-object v18

    :cond_103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecGearPreference;->performClick()V

    if-eqz v18, :cond_11b

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;->isVoiceInteractionService()Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/assist/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v12, v1, v0}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->setAssistService(Landroid/content/Context;Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V

    :cond_11b
    :goto_11b
    if-eqz v19, :cond_141

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "AppName"

    const-string/jumbo v8, "Match"

    const-string/jumbo v9, "yes"

    const-string/jumbo v10, "AppName"

    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6

    :cond_134
    add-int/lit8 v17, v17, 0x1

    goto :goto_cf

    :cond_137
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/assist/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v12, v1, v0}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->setAssistActivity(Landroid/content/Context;Lcom/android/settings/applications/assist/DefaultAssistPicker$Info;)V

    goto :goto_11b

    :cond_141
    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v4, "AppName"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b6

    :cond_153
    const-string/jumbo v1, "DeviceAssistanceAppSetting"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    if-eqz v20, :cond_1a5

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/SecGearPreference;->getGearIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_191

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/SecGearPreference;->getGearIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "Settings"

    const-string/jumbo v8, "Available"

    const-string/jumbo v9, "yes"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_18a
    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_bb

    :cond_191
    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "Settings"

    const-string/jumbo v8, "Available"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18a

    :cond_1a5
    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "Settings"

    const-string/jumbo v8, "Available"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18a

    :cond_1b9
    const-string/jumbo v1, "AnalyzeOnScreenTextOn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_203

    if-eqz v20, :cond_1e5

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1ec

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "AnalyzeOnScreenText"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "yes"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e5
    :goto_1e5
    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_bb

    :cond_1ec
    invoke-virtual {v15}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "AnalyzeOnScreenText"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e5

    :cond_203
    const-string/jumbo v1, "AnalyzeOnScreenTextOff"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24d

    if-eqz v20, :cond_22f

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_236

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "AnalyzeOnScreenText"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "yes"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22f
    :goto_22f
    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_bb

    :cond_236
    invoke-virtual {v15}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "AnalyzeOnScreenText"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22f

    :cond_24d
    const-string/jumbo v1, "AnalyzeOnScreenImagesOn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_297

    if-eqz v20, :cond_279

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_280

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "AnalyzeOnScreenImages"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "yes"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_279
    :goto_279
    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_bb

    :cond_280
    invoke-virtual {v15}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "AnalyzeOnScreenImages"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_279

    :cond_297
    const-string/jumbo v1, "AnalyzeOnScreenImagesOff"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    if-eqz v20, :cond_2c3

    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v15}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2ca

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "AnalyzeOnScreenImages"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "yes"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c3
    :goto_2c3
    sget-object v1, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto/16 :goto_bb

    :cond_2ca
    invoke-virtual {v15}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    sget-object v4, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v6, "DeviceAssistanceApp"

    const-string/jumbo v7, "AnalyzeOnScreenImages"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "no"

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c3
.end method

.method public exeViewAction()V
    .registers 1

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ManageAssist"

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xc9

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/ManageAssist;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    invoke-static {p1, v0, v1}, Lcom/android/settings/applications/assist/ManageAssist;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .registers 2

    const v0, 0x7f15008e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "assist_description"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/assist/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/UnclickablePreference;

    invoke-static {}, Lcom/android/settings/Utils;->isNavigationBar()Z

    move-result v1

    if-nez v1, :cond_18

    const v1, 0x7f120240

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    :cond_18
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DeviceAssistanceApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string/jumbo v1, "default_assist"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/assist/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/SecGearPreference;

    iput-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/SecGearPreference;

    const-string/jumbo v1, "voice_input_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/assist/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/SecGearPreference;

    iput-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v4, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string/jumbo v5, "isChangeAssistDefaultAppAllowed"

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v1, :cond_41

    iget-object v4, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v0, :cond_72

    move v1, v2

    :goto_3e
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    :cond_41
    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v0, :cond_4a

    move v3, v2

    :cond_4a
    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    :cond_4d
    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "DeviceAssistanceApp"

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_5f
    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mDefaultAssistPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_68
    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mVoiceInputPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/SecGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_71
    return-void

    :cond_72
    move v1, v3

    goto :goto_3e
.end method

.method public setActionType(Ljava/lang/String;)V
    .registers 13

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/ManageAssist;->getPreferenceControllers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/core/PreferenceController;

    invoke-virtual {v6}, Lcom/android/settings/core/PreferenceController;->getBixbyStateId()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    const/4 v0, 0x0

    array-length v1, v8

    :goto_20
    if-ge v0, v1, :cond_c

    aget-object v10, v8, v0

    invoke-static {v10, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-virtual {v6}, Lcom/android/settings/core/PreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object v0, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/ManageAssist;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    return-void

    :cond_45
    const-string/jumbo v2, "AnalyzeOnScreenTextOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string/jumbo v2, "AnalyzeOnScreenTextOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string/jumbo v2, "AnalyzeOnScreenImagesOn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string/jumbo v2, "AnalyzeOnScreenImagesOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    :cond_69
    sget-object v0, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, "DeviceAssistanceApp"

    const-string/jumbo v3, "Settings"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_85
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ManageAssist setActionType:cannot find stateId in preferenceControllers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopAction()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    sput-object v2, Lcom/android/settings/applications/assist/ManageAssist;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    :cond_e
    return-void
.end method
