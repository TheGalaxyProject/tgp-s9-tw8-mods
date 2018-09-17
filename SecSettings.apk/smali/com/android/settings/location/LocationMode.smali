.class public Lcom/android/settings/location/LocationMode;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationMode$1;
    }
.end annotation


# static fields
.field private static isDCM:Z


# instance fields
.field private mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

.field private mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/LocationRadioButtonPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/location/LocationMode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/LocationRadioButtonPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/LocationRadioButtonPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/location/LocationMode;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/location/LocationMode;->isDCM:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    new-instance v0, Lcom/android/settings/location/LocationMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationMode$1;-><init>(Lcom/android/settings/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_9
    const v1, 0x7f150085

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationMode;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "high_accuracy"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/LocationRadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    const-string/jumbo v1, "battery_saving"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/LocationRadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    const-string/jumbo v1, "sensors_only"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/location/LocationRadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    const v2, 0x7f120fc6

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationRadioButtonPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    const v2, 0x7f120fc0

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationRadioButtonPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    const v2, 0x7f120fc3

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationRadioButtonPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    const v2, 0x7f120fbd

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationRadioButtonPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    const v2, 0x7f120fcb

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationRadioButtonPreference;->setSummary(I)V

    :cond_66
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    const v2, 0x7f120fcd

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationRadioButtonPreference;->setTitle(I)V

    :cond_74
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/location/LocationRadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/location/LocationRadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/location/LocationRadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/LocationRadioButtonPreference$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationMode;->refreshLocationMode(Landroid/content/Context;)V

    return-object v0
.end method

.method private updateRadioButtons(Lcom/android/settings/location/LocationRadioButtonPreference;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    goto :goto_13

    :cond_28
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    if-ne p1, v0, :cond_3c

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    goto :goto_13

    :cond_3c
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/LocationRadioButtonPreference;->setChecked(Z)V

    goto :goto_13
.end method


# virtual methods
.method public getHelpResource()I
    .registers 2

    const v0, 0x7f120d0f

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onModeChanged(IZ)V
    .registers 13

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_94

    :goto_5
    if-eqz p1, :cond_85

    xor-int/lit8 v0, p2, 0x1

    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "gps"

    invoke-static {v7, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "network"

    invoke-static {v7, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    const/4 v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    if-eqz v7, :cond_52

    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    const-string/jumbo v9, "gps"

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_87

    if-nez v3, :cond_89

    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    invoke-virtual {v7}, Lcom/samsung/android/knox/location/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v7

    xor-int/lit8 v2, v7, 0x1

    :goto_3b
    xor-int/lit8 v1, v2, 0x1

    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    const-string/jumbo v9, "network"

    invoke-virtual {v7, v9}, Lcom/samsung/android/knox/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v5, v7, 0x1

    if-eqz v3, :cond_8b

    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    invoke-virtual {v7}, Lcom/samsung/android/knox/location/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v7

    xor-int/lit8 v6, v7, 0x1

    :cond_52
    :goto_52
    iget-object v9, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    if-eqz v0, :cond_8d

    if-eqz v1, :cond_8d

    move v7, v5

    :goto_59
    invoke-virtual {v9, v7}, Lcom/android/settings/location/LocationRadioButtonPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    if-eqz v0, :cond_8f

    if-eqz v5, :cond_8f

    xor-int/lit8 v7, v6, 0x1

    :goto_64
    invoke-virtual {v9, v7}, Lcom/android/settings/location/LocationRadioButtonPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    if-eqz v0, :cond_91

    :goto_6b
    invoke-virtual {v7, v1}, Lcom/android/settings/location/LocationRadioButtonPreference;->setEnabled(Z)V

    return-void

    :pswitch_6f
    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/LocationRadioButtonPreference;)V

    goto :goto_5

    :pswitch_73
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/LocationRadioButtonPreference;)V

    goto :goto_5

    :pswitch_79
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/LocationRadioButtonPreference;)V

    goto :goto_5

    :pswitch_7f
    iget-object v7, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/LocationRadioButtonPreference;)V

    goto :goto_5

    :cond_85
    const/4 v0, 0x0

    goto :goto_9

    :cond_87
    const/4 v2, 0x1

    goto :goto_3b

    :cond_89
    const/4 v2, 0x0

    goto :goto_3b

    :cond_8b
    const/4 v6, 0x0

    goto :goto_52

    :cond_8d
    move v7, v8

    goto :goto_59

    :cond_8f
    move v7, v8

    goto :goto_64

    :cond_91
    move v1, v8

    goto :goto_6b

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_73
        :pswitch_79
        :pswitch_7f
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "LocatingMethod"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/location/LocationRadioButtonPreference;)V
    .registers 13

    const v10, 0x7f120112

    const v6, 0x7f0b03fd

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DCM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sput-boolean v7, Lcom/android/settings/location/LocationMode;->isDCM:Z

    :cond_19
    iget-object v4, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/LocationRadioButtonPreference;

    if-ne p1, v4, :cond_b0

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v2, 0x3

    sget-boolean v4, Lcom/android/settings/location/LocationMode;->isDCM:Z

    if-eqz v4, :cond_9d

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "location_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_9d

    const/4 v2, 0x2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120cad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120cac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/location/LocationMode$2;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationMode$2;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120877

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/location/LocationMode$3;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationMode$3;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_9d
    :goto_9d
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/location/LocationMode;->setLocationMode(Landroid/content/Context;I)V

    sget-boolean v4, Lcom/android/settings/location/LocationMode;->isDCM:Z

    if-nez v4, :cond_af

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->onBackPressed()V

    :cond_af
    return-void

    :cond_b0
    iget-object v4, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/LocationRadioButtonPreference;

    if-ne p1, v4, :cond_cd

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v2, 0x2

    goto :goto_9d

    :cond_cd
    iget-object v4, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/LocationRadioButtonPreference;

    if-ne p1, v4, :cond_9d

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v2, 0x1

    sget-boolean v4, Lcom/android/settings/location/LocationMode;->isDCM:Z

    if-eqz v4, :cond_153

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "location_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_153

    const/4 v2, 0x2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120cad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120cac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/location/LocationMode$4;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationMode$4;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120877

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/settings/location/LocationMode$5;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationMode$5;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_9d

    :cond_153
    const/4 v2, 0x1

    goto/16 :goto_9d
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationMode;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "LocatingMethod"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
