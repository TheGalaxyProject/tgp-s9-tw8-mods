.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultVoiceInputPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

.field private mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v0, Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/assist/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/VoiceInputHelper;->buildUi()V

    if-eqz p2, :cond_22

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    :cond_22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    return-void
.end method

.method private getDefaultAppKey()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-static {v1}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updatePreference()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/VoiceInputHelper;->buildUi()V

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_33
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method protected getDefaultAppInfo()Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
    .registers 9

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getDefaultAppKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v5

    :cond_9
    iget-object v4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v4, v4, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    iget-object v4, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v6, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mUserId:I

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    return-object v4

    :cond_2f
    iget-object v4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    iget-object v4, v4, Lcom/android/settings/applications/assist/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;

    iget-object v4, v2, Lcom/android/settings/applications/assist/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    new-instance v4, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v6, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mUserId:I

    invoke-direct {v4, v5, v6, v2, v7}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V

    return-object v4

    :cond_55
    return-object v5
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "voice_input_settings"

    return-object v0
.end method

.method protected getSettingIntent(Lcom/android/settings/applications/defaultapps/DefaultAppInfo;)Landroid/content/Intent;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->getDefaultAppInfo()Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    :cond_d
    return-object v2

    :cond_e
    check-cast v0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->getSettingIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public isAvailable()Z
    .registers 5

    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/applications/assist/VoiceInputHelper;

    invoke-static {v2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getCurrentService(Lcom/android/settings/applications/assist/VoiceInputHelper;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->isCurrentAssistVoiceService(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public onPause()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onResume()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->updatePreference()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->updatePreference()V

    return-void
.end method
