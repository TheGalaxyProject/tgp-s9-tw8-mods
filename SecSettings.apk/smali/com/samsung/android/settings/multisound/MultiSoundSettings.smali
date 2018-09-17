.class public Lcom/samsung/android/settings/multisound/MultiSoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MultiSoundSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;,
        Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceType:Landroid/support/v7/preference/PreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mGuideView:Landroid/view/View;

.field private mInitState:I

.field private mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

.field private mSetApplication:Landroid/support/v7/preference/PreferenceScreen;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/multisound/MultiSoundSettings;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    return p1
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    new-instance v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$1;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createHeadrView()Landroid/view/View;
    .registers 15

    const/4 v13, 0x0

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v10, 0x7f0d035b

    invoke-virtual {v4, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    const v11, 0x7f0a0238

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    const v11, 0x7f0a0235

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    const v11, 0x7f0a0086

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v5, 0x0

    :try_start_3d
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.android.oneconnect"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_56} :catch_96
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_56} :catch_8b

    move-result-object v5

    :cond_57
    :goto_57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a1

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f121207

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v13

    const/4 v12, 0x1

    aput-object v5, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_77
    const v10, 0x7f080604

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_88
    iget-object v10, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    return-object v10

    :catch_8b
    move-exception v3

    const-string/jumbo v10, "MultiSoundSettings"

    const-string/jumbo v11, "NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :catch_96
    move-exception v2

    const-string/jumbo v10, "MultiSoundSettings"

    const-string/jumbo v11, "NameNotFoundException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_a1
    const v10, 0x7f121208

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_77
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x150

    return v0
.end method

.method public moveSelectApp()V
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1218ad

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->createHeadrView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->setHeaderView(Landroid/view/View;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mGuideView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->setEmptyView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->createHeadrView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->setHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const v0, 0x7f150093

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "set_application"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "device_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mDeviceType:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SeparateAppSound"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/support/v7/preference/PreferenceScreen;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->moveSelectApp()V

    const/4 v0, 0x0

    return v0

    :cond_9
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 18

    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multisound_app"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f1218ac

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_34
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multisound_devicetype"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v16, :cond_80

    :try_start_46
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    new-instance v9, Landroid/text/SpannableString;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v9, :cond_80

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v9}, Landroid/text/Spannable;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v9, v1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSetApplication:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v9}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_80} :catch_18f

    :cond_80
    :goto_80
    if-eqz v13, :cond_85

    const/4 v1, 0x1

    if-ne v13, v1, :cond_b7

    :cond_85
    new-instance v12, Landroid/text/SpannableString;

    if-nez v13, :cond_109

    const v1, 0x7f121232

    :goto_8c
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v12, :cond_b7

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v12}, Landroid/text/Spannable;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v12, v1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mDeviceType:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    if-eqz v1, :cond_173

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_173

    const/4 v1, -0x1

    if-eq v13, v1, :cond_10d

    if-eqz v16, :cond_10d

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_e3
    :goto_e3
    new-instance v15, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    invoke-direct {v15, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mMultiSoundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "SeparateAppSound"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_109
    const v1, 0x7f120423

    goto :goto_8c

    :cond_10d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_134

    if-eqz v16, :cond_134

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f120260

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_e3

    :cond_134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121a7d

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121a7e

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$3;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const v2, 0x7f1213e0

    invoke-virtual {v11, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/multisound/MultiSoundSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$4;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v11, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_e3

    :cond_173
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mInitState:I

    if-nez v1, :cond_e3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_e3

    :catch_18f
    move-exception v14

    goto/16 :goto_80
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 15

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "multisound_devicetype"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "multisound_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_1f
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_27} :catch_8d

    move-result-object v0

    :goto_28
    if-eq v2, v11, :cond_2c

    if-nez v5, :cond_2d

    :cond_2c
    const/4 v4, 0x1

    :cond_2d
    if-eqz p2, :cond_9c

    if-eqz v4, :cond_9c

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f12120b

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f12120d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    const v10, 0x7f12120a

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/samsung/android/settings/multisound/MultiSoundSettings$5;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$5;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const v9, 0x7f12089e

    invoke-virtual {v1, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/samsung/android/settings/multisound/MultiSoundSettings$6;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings$6;-><init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v1, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_76
    :goto_76
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b046c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz p2, :cond_d2

    :goto_85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8, v9, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :catch_8d
    move-exception v3

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "multisound_app"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_28

    :cond_9c
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, p2}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    if-eqz p2, :cond_76

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v8

    if-nez v8, :cond_76

    if-eqz v5, :cond_76

    :try_start_ad
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v2, :cond_c6

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/media/AudioManager;->setAppDevice(II)V
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ad .. :try_end_c0} :catch_c1

    goto :goto_76

    :catch_c1
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_76

    :cond_c6
    if-ne v2, v6, :cond_76

    :try_start_c8
    iget-object v8, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Landroid/media/AudioManager;->setAppDevice(II)V
    :try_end_d1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c8 .. :try_end_d1} :catch_c1

    goto :goto_76

    :cond_d2
    move v6, v7

    goto :goto_85
.end method