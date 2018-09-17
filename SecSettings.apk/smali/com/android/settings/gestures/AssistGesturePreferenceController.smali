.class public Lcom/android/settings/gestures/AssistGesturePreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "AssistGesturePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

.field private final mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;

.field private mWasAvailable:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/gestures/AssistGesturePreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/gestures/AssistGesturePreferenceController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mWasAvailable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/gestures/AssistGesturePreferenceController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mWasAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/gestures/AssistGesturePreferenceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    new-instance v0, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;-><init>(Lcom/android/settings/gestures/AssistGesturePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mWasAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/AssistGesturePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mCallback:Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    return-void
.end method

.method private updatePreference()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1e
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settings/gestures/GesturePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "gesture_assist"

    return-object v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "gesture_assist_video"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isSwitchPrefEnabled()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assist_gesture_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method public onPause()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assist_gesture_enabled"

    if-eqz v0, :cond_17

    move v1, v2

    :goto_13
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onResume()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gestures/AssistGesturePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    iget-boolean v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mWasAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_1d

    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->updatePreference()V

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGesturePreferenceController;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/gestures/AssistGesturePreferenceController;->mWasAvailable:Z

    :cond_1d
    return-void
.end method
