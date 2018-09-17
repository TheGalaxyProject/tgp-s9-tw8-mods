.class public Lcom/samsung/android/settings/safetycare/PanicModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PanicModeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;,
        Lcom/samsung/android/settings/safetycare/PanicModeSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

.field private mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/safetycare/PanicModeSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->updateSendSOSMessageSummary()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;-><init>(Lcom/samsung/android/settings/safetycare/PanicModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private updatePreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "key_safety_assistance_swa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string/jumbo v1, "key_safety_assistance_swa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_27
    return-object v0
.end method

.method private updateSendSOSMessageSummary()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "send_emergency_message"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    :goto_17
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_24

    const v1, 0x7f121b7e

    :goto_1e
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_17

    :cond_24
    const v1, 0x7f121b7d

    goto :goto_1e
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x11f8

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01d1

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->removeHeaderView()V

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->setHeaderView(Landroid/view/View;)V

    :cond_22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "PanicModeSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500aa

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "PanicModeSettings"

    const-string/jumbo v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d01d1

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->setHeaderView(Landroid/view/View;)V

    :cond_25
    return-object v1
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_14
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "PanicModeSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->updatePreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->updateSendSOSMessageSummary()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "send_emergency_message"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2b
    return-void
.end method

.method public rebuildLayout(Landroid/view/View;)V
    .registers 7

    const v4, 0x7f0a0238

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0235

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a0086

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_48

    const v4, 0x7f12142a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_30
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4f

    const v4, 0x7f080518

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3c
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_47
    return-void

    :cond_48
    const v4, 0x7f121429

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_30

    :cond_4f
    const v4, 0x7f080517

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3c
.end method
