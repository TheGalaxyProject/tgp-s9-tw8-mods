.class public Lcom/samsung/android/settings/csc/CscSettingsLoader;
.super Ljava/lang/Object;
.source "CscSettingsLoader.java"


# instance fields
.field private final PATH_OPERATORS_DEFAULTRINGER:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private mParser:Lcom/samsung/android/settings/csc/CscParser;

.field private mResolver:Landroid/content/ContentResolver;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Operators.DefaultRinger"

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->PATH_OPERATORS_DEFAULTRINGER:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "USER_PREFERENCES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public update()V
    .registers 10

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d0

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3ac

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "auto_time"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "auto_time_zone"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3db

    const-string/jumbo v1, "CscSettingsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v4, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Settings.Main.Sound.MediaVolume"

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_7a
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e6

    const-string/jumbo v1, "CscSettingsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Settings.Main.Sound.NotificationVolume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v4, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Settings.Main.Sound.MsgToneVolume"

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_af
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Sound.RngVolume"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f1

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Sound.RingVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Settings.Main.Sound.RngVolume"

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_c9
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Sound.ALARMVolume"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3fc

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Sound.AlarmVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Settings.Main.Sound.ALARMVolume"

    invoke-virtual {p0, v8, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_e3
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Sound.RngToneAlertType"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_407

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Sound.RngToneAlertType"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Settings.Main.Sound.RngToneAlertType"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateSilentMode(Ljava/lang/String;)V

    :goto_fd
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_412

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_117
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c9

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Phone.BackLightTime"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "15sec"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41d

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    const/16 v3, 0x3a98

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_14e
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f0

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Sound.TouchTone"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d4

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_17c
    :goto_17c
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_517

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Setting Power Saving Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4fb

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "psm_switch"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1aa
    :goto_1aa
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.GPS.GPSActivation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57f

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Setting GPS Satelites"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_541

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.GPS.GPSActivation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_522

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "location_providers_allowed"

    const-string/jumbo v3, "gps,network"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1ed
    :goto_1ed
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38a

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a6

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Phone.Motion.MotionActivation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58a

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "motion_engine"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_228
    :goto_228
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5cd

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_GLANCE_VIEW"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5cd

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Phone.Motion.GlanceView"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b1

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "air_motion_glance_view"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_263
    :goto_263
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5f4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f4

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Motion.DirctCall"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d8

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "motion_pick_up_to_call_out"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_29e
    :goto_29e
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61b

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61b

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "motion_pick_up"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2d9
    :goto_2d9
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_642

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_642

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Phone.Motion.TurnOver"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_626

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "motion_overturn"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_314
    :goto_314
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_669

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_669

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64d

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "surface_palm_swipe"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_34f
    :goto_34f
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_690

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_690

    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_674

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "surface_palm_touch"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_38a
    :goto_38a
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "PREF_RINGTONE_SET"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "PREF_NOTIFICATION_SET"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "PREF_ALARMTONE_SET"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    return-void

    :cond_3ac
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "auto_time"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "auto_time_zone"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_45

    :cond_3d0
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Timezone Update is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    :cond_3db
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Media volume is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    :cond_3e6
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Notification volume is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_af

    :cond_3f1
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Ring Volume is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c9

    :cond_3fc
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "ALARM Volume is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e3

    :cond_407
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "RngToneAlertType is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fd

    :cond_412
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "KeyTones is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_117

    :cond_41d
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "30sec"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43b

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14e

    :cond_43b
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45a

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0xea60

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14e

    :cond_45a
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_479

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0x1d4c0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14e

    :cond_479
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "5min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_498

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0x493e0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14e

    :cond_498
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "10min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b7

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_timeout"

    const v3, 0x927c0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_14e

    :cond_4b7
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "30min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_14e

    :cond_4c9
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "BackLight Time is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14e

    :cond_4d4
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17c

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_17c

    :cond_4f0
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Touch Sounds is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17c

    :cond_4fb
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "psm_switch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1aa

    :cond_517
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "Setting Power Saving Mode is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1aa

    :cond_522
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.GPS.GPSActivation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ed

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "location_providers_allowed"

    const-string/jumbo v3, "-gps"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1ed

    :cond_541
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.GPS.GPSActivation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_560

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "location_providers_allowed"

    const-string/jumbo v3, "gps"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1ed

    :cond_560
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.GPS.GPSActivation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ed

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "location_providers_allowed"

    const-string/jumbo v3, "-gps"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1ed

    :cond_57f
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "GPS Satelites is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ed

    :cond_58a
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_228

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "motion_engine"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_228

    :cond_5a6
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "MotionActivation is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_228

    :cond_5b1
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_263

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "air_motion_glance_view"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_263

    :cond_5cd
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "GlanceView is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_263

    :cond_5d8
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29e

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "motion_pick_up_to_call_out"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_29e

    :cond_5f4
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "DirctCall is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29e

    :cond_5ff
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d9

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "motion_pick_up"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2d9

    :cond_61b
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "SmartAlert is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d9

    :cond_626
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_314

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "motion_overturn"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_314

    :cond_642
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "TurnOver is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_314

    :cond_64d
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34f

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "surface_palm_swipe"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_34f

    :cond_669
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "PalmSwipe is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34f

    :cond_674
    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v2, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38a

    iget-object v1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "surface_palm_touch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_38a

    :cond_690
    const-string/jumbo v1, "CscSettingsLoader"

    const-string/jumbo v2, "PalmTouch is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38a
.end method

.method public updateRingtones(I)V
    .registers 20

    new-instance v8, Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-direct {v8, v14}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v14, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    const-string/jumbo v15, "CscFeature_Common_UseChameleon"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_67

    new-instance v5, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "Operators.DefaultRinger"

    invoke-virtual {v5, v14}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_38

    return-void

    :cond_38
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/media/RingtoneManager;->setType(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v15, "Settings.Main.Sound.RingTone.src"

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v14, "CscSettingsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Chameleon Tag_Str: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1

    :cond_67
    const-string/jumbo v14, "CscSettingsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Setting Ringtones (type) : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_1bb

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/media/RingtoneManager;->setType(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v15, "Settings.Main.Sound.RingTone.src"

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v14, "CscSettingsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "1. Tag_Str: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    :goto_b5
    move-object v3, v2

    if-eqz v2, :cond_f7

    const-string/jumbo v14, "(.*)&amp;(.*)"

    invoke-virtual {v3, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f7

    const-string/jumbo v14, "&amp;"

    const-string/jumbo v15, "&"

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v14, "CscSettingsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Tag_Str change (before : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " / after : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    if-eqz v2, :cond_3a1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_223

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v15, "PREF_RINGTONE_SET"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_12e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "PREF_RINGTONE_SET"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "CSC Ringtone found: PREF_RINGTONE_SET(1)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12e
    :goto_12e
    invoke-virtual {v8}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    const-string/jumbo v14, "title"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v7, 0x0

    :goto_13d
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_17d

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "Ringtone title : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v14, "CscSettingsLoader"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_279

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "Ringtone equalsIgnoreCase (position): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v14, "CscSettingsLoader"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17d
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-eqz v14, :cond_189

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-lt v7, v14, :cond_31f

    :cond_189
    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "No matched ringtones"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_2a0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v15, "PREF_RINGTONE_SET"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_280

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "Aleady failed. The Ringtone is not exist"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1bb
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v0, v14, :cond_1ef

    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Landroid/media/RingtoneManager;->setType(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v15, "Settings.Main.Sound.MessageTone.src"

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v14, "CscSettingsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "1. Tag_Str: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    :cond_1ef
    const/4 v14, 0x4

    move/from16 v0, p1

    if-ne v0, v14, :cond_b5

    const/4 v14, 0x4

    invoke-virtual {v8, v14}, Landroid/media/RingtoneManager;->setType(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v15, "Settings.Main.Sound.AlarmTone.src"

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v14, "CscSettingsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "1. Tag_Str: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    :cond_223
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v0, v14, :cond_24e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v15, "PREF_NOTIFICATION_SET"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_12e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "PREF_NOTIFICATION_SET"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "CSC Notification found: PREF_NOTIFICATION_SET(1)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12e

    :cond_24e
    const/4 v14, 0x4

    move/from16 v0, p1

    if-ne v0, v14, :cond_12e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v15, "PREF_ALARMTONE_SET"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_12e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "PREF_ALARMTONE_SET"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "CSC Alarmtone found: PREF_ALARMTONE_SET(1)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12e

    :cond_279
    add-int/lit8 v7, v7, 0x1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_13d

    :cond_280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "PREF_RINGTONE_SET"

    const/16 v16, 0x2

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "Ringtone not found. Media DB was not prepared: PREF_RINGTONE_SET(2)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_295
    :goto_295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2a0
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v0, v14, :cond_2df

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v15, "PREF_NOTIFICATION_SET"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2c9

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "Aleady failed. Notification is not exist"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2c9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "PREF_NOTIFICATION_SET"

    const/16 v16, 0x2

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "Notification not found. Media DB was not prepared: PREF_NOTIFICATION_SET(2)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_295

    :cond_2df
    const/4 v14, 0x4

    move/from16 v0, p1

    if-ne v0, v14, :cond_295

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v15, "PREF_ALARMTONE_SET"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_308

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "Aleady failed. Alarmtone is not exist"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "PREF_ALARMTONE_SET"

    const/16 v16, 0x2

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "Alarmtone not found. Media DB was not prepared: PREF_ALARMTONE_SET(2)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_295

    :cond_31f
    invoke-virtual {v8, v7}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v13

    const-string/jumbo v14, "CscSettingsLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Ringtone uri : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_397

    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_3a7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-static {v14, v15, v13}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    if-eqz v13, :cond_374

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "DEBUG_RINGTONE"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CscSettings : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_374
    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "CSC Ringtone was set : Before PREF_RINGTONE_SET(3)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x2710

    :try_start_37f
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_382
    .catch Ljava/lang/Exception; {:try_start_37f .. :try_end_382} :catch_3a2

    :goto_382
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "PREF_RINGTONE_SET"

    const/16 v16, 0x3

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "CSC Ringtone was set : PREF_RINGTONE_SET(3)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_397
    :goto_397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3a1
    return-void

    :catch_3a2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_382

    :cond_3a7
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v0, v14, :cond_3fa

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const/4 v15, 0x2

    invoke-static {v14, v15, v13}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "DEBUG_RINGTONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CscSettings : "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3f6

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_3db
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "PREF_NOTIFICATION_SET"

    const/16 v16, 0x3

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "CSC Notification was set : PREF_NOTIFICATION_SET(3)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_397

    :cond_3f6
    const-string/jumbo v14, ""

    goto :goto_3db

    :cond_3fa
    const/4 v14, 0x4

    move/from16 v0, p1

    if-ne v0, v14, :cond_397

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const/4 v15, 0x4

    invoke-static {v14, v15, v13}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "DEBUG_RINGTONE"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "CscSettings : "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_44a

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_42e
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "PREF_ALARMTONE_SET"

    const/16 v16, 0x3

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "CscSettingsLoader"

    const-string/jumbo v15, "CSC Alarmtone was set : PREF_ALARMTONE_SET(3)"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_397

    :cond_44a
    const-string/jumbo v14, ""

    goto :goto_42e
.end method

.method public updateSilentMode(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "CscSettingsLoader"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c0

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v2, "melody"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " melody"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_4d
    return-void

    :cond_4e
    const-string/jumbo v2, "mute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : mute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4d

    :cond_76
    const-string/jumbo v2, "vib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : vib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4d

    :cond_9d
    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : vibmelody"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4d

    :cond_c0
    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d
.end method

.method public updateVolume(ILjava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v3, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v3, "CscSettingsLoader"

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {v3, p2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    :try_start_25
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2d} :catch_2e

    :goto_2d
    return-void

    :catch_2e
    move-exception v2

    const-string/jumbo v3, "CscSettingsLoader"

    const-string/jumbo v4, "updateVolume explain error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :cond_39
    const-string/jumbo v3, "CscSettingsLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method
