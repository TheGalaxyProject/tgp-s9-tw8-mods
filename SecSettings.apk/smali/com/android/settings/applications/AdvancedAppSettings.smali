.class public Lcom/android/settings/applications/AdvancedAppSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AdvancedAppSettings$1;,
        Lcom/android/settings/applications/AdvancedAppSettings$2;,
        Lcom/android/settings/applications/AdvancedAppSettings$3;,
        Lcom/android/settings/applications/AdvancedAppSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;


# direct methods
.method static synthetic -get0()Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sget-object v0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/AdvancedAppSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/applications/EmHandler;)Lcom/samsung/android/settings/applications/EmHandler;
    .registers 1

    sput-object p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/applications/AdvancedAppSettings$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AdvancedAppSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AdvancedAppSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/android/settings/applications/AdvancedAppSettings$2;

    invoke-direct {v0}, Lcom/android/settings/applications/AdvancedAppSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AdvancedAppSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/android/settings/applications/AdvancedAppSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AdvancedAppSettings$3;-><init>(Lcom/android/settings/applications/AdvancedAppSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
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
    .registers 18

    const/4 v14, 0x0

    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "DefaultAppSelection"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fb

    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/support/v7/preference/PreferenceScreen;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v16

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exePrefAction)size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ge v0, v1, :cond_54

    const/4 v14, 0x0

    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v3, "DefaultApplications"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    if-eqz v14, :cond_ea

    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getActionObj()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exePrefAction)selection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SetDefaultAppsAutomatically"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v13, 0x0

    :goto_8a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_app_selection_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v8, ""

    if-eqz v12, :cond_af

    invoke-virtual {v12}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_af
    if-ne v13, v11, :cond_cc

    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v3, "DefaultApplications"

    const-string/jumbo v5, "AlreadySelected"

    const-string/jumbo v6, "yes"

    const-string/jumbo v7, "SetDefaultAppSelection"

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c4
    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :goto_c9
    return-void

    :cond_ca
    const/4 v13, 0x1

    goto :goto_8a

    :cond_cc
    invoke-virtual {v12, v13}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_app_selection_option"

    invoke-static {v1, v2, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v3, "DefaultApplications"

    const-string/jumbo v5, "AlreadySelected"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c4

    :cond_ea
    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v3, "DefaultApplications"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c4

    :cond_fb
    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v14

    if-eqz v14, :cond_114

    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto :goto_c9

    :cond_114
    sget-object v2, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    goto :goto_c9
.end method

.method public exeViewAction()V
    .registers 1

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "AdvancedAppSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x82

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultWorkPhonePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultWorkPhonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/applications/defaultapps/DefaultDCMHomePreferenceController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/applications/defaultapps/DefaultDCMHomePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/applications/defaultapps/DefaultAppSelectionPreferenceController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/applications/defaultapps/DefaultAppSelectionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/applications/defaultapps/DefaultDeviceAssistPreferenceController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/applications/defaultapps/DefaultDeviceAssistPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/applications/defaultapps/ManageDomainUrlsPreferenceController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/applications/defaultapps/ManageDomainUrlsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .registers 2

    const v0, 0x7f1500cc

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DefaultApplications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DefaultApplications"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getPreferenceControllers()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getBixbyStateId()[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    array-length v6, v2

    :goto_24
    if-ge v5, v6, :cond_c

    aget-object v4, v2, v5

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_43

    sget-object v5, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    const/4 v7, 0x1

    const/16 v8, 0x7d0

    invoke-virtual {v5, v7, v6, v8}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    return-void

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_46
    sget-object v5, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AdvancedAppSettings setActionType:cannot find stateId in preferenceControllers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopAction()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    sput-object v2, Lcom/android/settings/applications/AdvancedAppSettings;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    :cond_e
    return-void
.end method
