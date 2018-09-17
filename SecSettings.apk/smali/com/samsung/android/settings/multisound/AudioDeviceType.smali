.class public Lcom/samsung/android/settings/multisound/AudioDeviceType;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AudioDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisound/AudioDeviceType$1;
    }
.end annotation


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mContext:Landroid/content/Context;

.field private mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/AudioDeviceType;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/multisound/AudioDeviceType;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/multisound/AudioDeviceType;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->setMultiSound(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->updateBTDevices()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->updateRadioState()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;-><init>(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private setMultiSound(I)Z
    .registers 9

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multisound_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    :try_start_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez p1, :cond_25

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->setAppDevice(II)V

    :cond_23
    :goto_23
    const/4 v3, 0x1

    return v3

    :cond_25
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->setAppDevice(II)V
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_2e} :catch_2f

    goto :goto_23

    :catch_2f
    move-exception v1

    return v6
.end method

.method private updateBTDevices()V
    .registers 8

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    if-eqz v5, :cond_6d

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_6d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v5

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_61

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_61

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4a

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    const v6, 0x7f121b0a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_52
    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->semGetActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_6c

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/notification/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    const v6, 0x7f12132e

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/RadioPreference;->setSummary(I)V

    goto :goto_6c
.end method

.method private updateRadioState()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multisound_devicetype"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    if-ne v0, v6, :cond_1c

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x150

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    const v1, 0x7f150025

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "my_phone"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;-><init>(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "bluetooth_device"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/samsung/android/settings/multisound/AudioDeviceType$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType$3;-><init>(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_54
    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->updateBTDevices()V

    invoke-direct {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->updateRadioState()V

    return-void
.end method
