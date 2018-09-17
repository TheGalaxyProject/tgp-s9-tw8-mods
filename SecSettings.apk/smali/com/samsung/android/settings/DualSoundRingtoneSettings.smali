.class public Lcom/samsung/android/settings/DualSoundRingtoneSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;,
        Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;
    }
.end annotation


# static fields
.field private static myContext:Landroid/content/Context;


# instance fields
.field private mActivePhone:I

.field private mAudioManager:Landroid/media/AudioManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationPreference:Landroid/support/v7/preference/SecPreference;

.field private mRingtone2Preference:Landroid/support/v7/preference/SecPreference;

.field private mRingtoneNotificationRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/support/v7/preference/SecPreference;

.field private offset:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/support/v7/preference/Preference;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/support/v7/preference/Preference;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iput-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings$1;-><init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings$2;-><init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private UpdateRingtoneNotificationNames()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 11

    const/4 v7, 0x0

    const-string/jumbo v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    if-eqz p2, :cond_a1

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside canSetRingtone ringtone uri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "Inside cansetringtone ringtone uri not null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9f

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    :try_start_53
    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_73

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_73
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_9f

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "returning false because rtTemp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "getRingtone() null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_94} :catch_95

    return v7

    :catch_95
    move-exception v1

    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    const/4 v4, 0x1

    return v4

    :cond_a1
    const-string/jumbo v4, "DualSoundRingtoneSettings"

    const-string/jumbo v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f
.end method

.method private configureActionBar()V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_f
    return-void
.end method

.method private setActivePhone()V
    .registers 13

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v7, "phone"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    const-string/jumbo v7, "gsm.sim.state"

    const-string/jumbo v8, "UNKNOWN"

    invoke-static {v7, v10, v8}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "gsm.sim.state"

    const-string/jumbo v8, "UNKNOWN"

    invoke-static {v7, v9, v8}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "gsm.sim.currentcardstatus"

    const-string/jumbo v8, "9"

    invoke-static {v7, v10, v8}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "gsm.sim.currentcardstatus"

    const-string/jumbo v8, "9"

    invoke-static {v7, v9, v8}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_42

    const-string/jumbo v7, "sim Id"

    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_42
    if-ne v0, v11, :cond_93

    const-string/jumbo v7, "3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_56

    const-string/jumbo v7, "3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    :cond_56
    const-string/jumbo v7, "READY"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6b

    const-string/jumbo v7, "READY"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    :cond_68
    iput v9, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    :goto_6a
    return-void

    :cond_6b
    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v9, :cond_90

    invoke-virtual {v6, v9}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v8, v7, :cond_90

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "phone2_on"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_90

    iput v9, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    goto :goto_6a

    :cond_90
    iput v10, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    goto :goto_6a

    :cond_93
    iput v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    goto :goto_6a
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 15

    const/4 v12, 0x0

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    const-string/jumbo v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_40

    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_40

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_40
    :try_start_40
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_135

    const-string/jumbo v9, "3ga"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_9d} :catch_148

    :cond_9d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "mime_type"

    const-string/jumbo v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_135
    :try_start_135
    const-string/jumbo v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9d

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    const-string/jumbo v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_147} :catch_148

    return-object v12

    :catch_148
    move-exception v1

    const-string/jumbo v9, "DualSoundRingtoneSettings"

    const-string/jumbo v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v12
.end method

.method private updateRingtoneData(I)V
    .registers 5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    invoke-direct {p0, v2, v0, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/support/v7/preference/Preference;I)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/support/v7/preference/SecPreference;

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/support/v7/preference/Preference;I)V

    goto :goto_c
.end method

.method private updateRingtoneName(ILandroid/support/v7/preference/Preference;I)V
    .registers 15

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x10408cc

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v1, :cond_27

    const v0, 0x10408cb

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_27
    const/4 v7, 0x0

    :try_start_28
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_49
    :goto_49
    if-eqz v7, :cond_56

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_55} :catch_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_55} :catch_90
    .catchall {:try_start_28 .. :try_end_55} :catchall_9f

    move-result-object v10

    :cond_56
    if-eqz v7, :cond_1b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    :cond_5c
    :try_start_5c
    const-string/jumbo v0, "settings"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_49

    :cond_6e
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_8e} :catch_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_8e} :catch_90
    .catchall {:try_start_5c .. :try_end_8e} :catchall_9f

    move-result-object v7

    goto :goto_49

    :catch_90
    move-exception v8

    if-eqz v7, :cond_1b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    :catch_97
    move-exception v9

    if-eqz v7, :cond_1b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1b

    :catchall_9f
    move-exception v0

    if-eqz v7, :cond_a5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a5
    throw v0
.end method

.method private updateState(Z)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-eqz p1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_14
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xfab

    return v0
.end method

.method public getmActivePhone()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .registers 11

    const v7, 0x7f121c7f

    const/4 v6, 0x0

    if-eqz p1, :cond_c

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_c
    const-string/jumbo v3, "DualSoundRingtoneSettings"

    const-string/jumbo v4, "handleRingtonePicked() : Not changed"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateRingtoneData(I)V

    return-void

    :cond_19
    const-string/jumbo v3, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    sget-object v3, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->myContext:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    const-string/jumbo v4, "Inside cansetringtone false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_43
    const-string/jumbo v3, "DualSoundRingtoneSettings"

    const-string/jumbo v4, "handleRingtonePicked updating media DB"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_74

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    const-string/jumbo v4, "handleRingtonePicked - pickedUri is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    :cond_74
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "is_ringtone"

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_82
    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRingtonePicked - pickedUri("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "), ringtoneType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_be} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_be} :catch_d4

    :goto_be
    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    if-eqz v3, :cond_15

    const/16 v3, 0x80

    if-ne p2, v3, :cond_12a

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "recommendation_time_2"

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_15

    :catch_d4
    move-exception v0

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRingtonePicked(Exception): pickedUri is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_be

    :catch_ff
    move-exception v1

    const-string/jumbo v3, "DualSoundRingtoneSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRingtonePicked(IllegalArgumentException): pickedUri is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_be

    :cond_12a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "recommendation_time"

    iget-object v5, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_15
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v1, "DualSoundRingtoneSettings"

    const-string/jumbo v2, "onActivityResult()"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_4e

    :cond_11
    :goto_11
    :pswitch_11
    return-void

    :pswitch_12
    if-eq p2, v3, :cond_17

    if-eq p2, v4, :cond_17

    return-void

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    if-ne p2, v3, :cond_11

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "highlight_offset"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    if-ne p1, v4, :cond_3d

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_11

    :cond_3d
    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_11

    :pswitch_43
    if-eq p2, v3, :cond_46

    return-void

    :cond_46
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_11

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_43
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_43
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->setActivePhone()V

    const v2, 0x7f15005f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->addPreferencesFromResource(I)V

    :try_start_18
    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->myContext:Landroid/content/Context;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_a1

    :goto_26
    const-string/jumbo v2, "ringtone"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    check-cast v2, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObjectDual(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_41
    const-string/jumbo v2, "ringtone2"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/support/v7/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/support/v7/preference/SecPreference;

    check-cast v2, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObjectDual(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5c
    const-string/jumbo v2, "notification_sound"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    check-cast v2, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObjectDual(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_77
    invoke-direct {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->configureActionBar()V

    new-instance v2, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;-><init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iput-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/DualSoundRingtoneSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings$4;-><init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V

    iput-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :catch_a1
    move-exception v0

    const-string/jumbo v2, "DualSoundRingtoneSettings"

    const-string/jumbo v3, "GPS sound settings: error getting activity of create package context"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26
.end method

.method public onDestroy()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_d

    :goto_9
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "DualSoundRingtoneSettings"

    const-string/jumbo v2, "The QCOM HOT SWAP receiver is already unregistered"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public onMusicPickerChosen(I)V
    .registers 12

    const/4 v9, 0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "android.intent.action.GET_CONTENT"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "audio/*"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x4000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "enable_ringtone_recommender"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "DocumentsUIPolicy"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_34

    :try_start_2a
    const-string/jumbo v7, "com.samsung.android.app.soundpicker"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v6, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_34} :catch_54

    :cond_34
    :goto_34
    if-eqz v6, :cond_4d

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.samsung.android.app.soundpicker"

    const-string/jumbo v8, "com.samsung.android.app.soundpicker.SoundPickerActivity"

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v7, "DualSoundRingtoneSettings"

    const-string/jumbo v8, "SoundPickerActivity is enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    if-ne p1, v9, :cond_5e

    const/4 v7, 0x1

    :try_start_50
    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_53
    .catch Landroid/content/ActivityNotFoundException; {:try_start_50 .. :try_end_53} :catch_59

    :goto_53
    return-void

    :catch_54
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_34

    :catch_59
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_53

    :cond_5e
    const/4 v7, 0x2

    :try_start_5f
    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_62
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_53

    :catch_63
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_53
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Ringtone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    if-eq p1, v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v2, :cond_2c

    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v2, :cond_33

    iget v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    if-ne v2, v3, :cond_31

    const/4 v0, 0x2

    :goto_1d
    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v4, v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_31
    const/4 v0, 0x1

    goto :goto_1d

    :cond_33
    iget v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    if-ne v2, v3, :cond_49

    const/16 v0, 0x8

    :goto_39
    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getRingtonePickerIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v4, v3}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2c

    :cond_49
    const/4 v0, 0x4

    goto :goto_39
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->updateState(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->UpdateRingtoneNotificationNames()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Ringtone"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
