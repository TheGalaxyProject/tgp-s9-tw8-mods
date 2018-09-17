.class public Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AssistScreenshotPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;

    if-eqz p2, :cond_16

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    :cond_16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    return-void
.end method

.method private updatePreference()V
    .registers 6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    instance-of v2, v2, Landroid/support/v7/preference/TwoStatePreference;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    :cond_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assist_screenshot_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v0, 0x1

    :goto_37
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v2, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assist_structure_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v1, 0x1

    :goto_4e
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_54
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_27

    :cond_5c
    const/4 v0, 0x0

    goto :goto_37

    :cond_5e
    const/4 v1, 0x0

    goto :goto_4e
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getBixbyStateId()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "AnalyzeOnScreenImagesOn"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "AnalyzeOnScreenImagesOff"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "screenshot"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onPause()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assist_screenshot_enabled"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_14
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v1

    :cond_2a
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onResume()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->updatePreference()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->updatePreference()V

    return-void
.end method
