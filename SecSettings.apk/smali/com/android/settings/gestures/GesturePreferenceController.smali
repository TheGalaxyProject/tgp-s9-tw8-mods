.class public abstract Lcom/android/settings/gestures/GesturePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "GesturePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnStart;
.implements Lcom/android/settings/core/lifecycle/events/OnStop;


# instance fields
.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_8

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    :cond_8
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->getVideoPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/VideoPreference;

    iput-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    :cond_15
    return-void
.end method

.method protected abstract getVideoPrefKey()Ljava/lang/String;
.end method

.method protected abstract isSwitchPrefEnabled()Z
.end method

.method public onStart()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->onViewVisible()V

    :cond_9
    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->onViewInvisible()V

    :cond_9
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->isSwitchPrefEnabled()Z

    move-result v0

    if-eqz p1, :cond_12

    instance-of v1, p1, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v1, :cond_13

    check-cast p1, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    if-eqz v0, :cond_1c

    const v1, 0x7f120c91

    :goto_18
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_12

    :cond_1c
    const v1, 0x7f120c90

    goto :goto_18
.end method
