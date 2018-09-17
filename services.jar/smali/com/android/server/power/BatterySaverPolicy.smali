.class public Lcom/android/server/power/BatterySaverPolicy;
.super Landroid/database/ContentObserver;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/BatterySaverPolicy$ServiceType;
    }
.end annotation


# static fields
.field public static final GPS_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field public static final GPS_MODE_NO_CHANGE:I = 0x0

.field private static final KEY_ADJUST_BRIGHTNESS_DISABLED:Ljava/lang/String; = "adjust_brightness_disabled"

.field private static final KEY_ADJUST_BRIGHTNESS_FACTOR:Ljava/lang/String; = "adjust_brightness_factor"

.field private static final KEY_ANIMATION_DISABLED:Ljava/lang/String; = "animation_disabled"

.field private static final KEY_DATASAVER_DISABLED:Ljava/lang/String; = "datasaver_disabled"

.field private static final KEY_FIREWALL_DISABLED:Ljava/lang/String; = "firewall_disabled"

.field private static final KEY_FULLBACKUP_DEFERRED:Ljava/lang/String; = "fullbackup_deferred"

.field private static final KEY_GPS_MODE:Ljava/lang/String; = "gps_mode"

.field private static final KEY_KEYVALUE_DEFERRED:Ljava/lang/String; = "keyvaluebackup_deferred"

.field private static final KEY_SOUNDTRIGGER_DISABLED:Ljava/lang/String; = "soundtrigger_disabled"

.field private static final KEY_VIBRATION_DISABLED:Ljava/lang/String; = "vibration_disabled"

.field public static final SECURE_KEY_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final TAG:Ljava/lang/String; = "BatterySaverPolicy"


# instance fields
.field private mAdjustBrightnessDisabled:Z

.field private mAdjustBrightnessFactor:F

.field private mAnimationDisabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataSaverDisabled:Z

.field private mFireWallDisabled:Z

.field private mFullBackupDeferred:Z

.field private mGpsMode:I

.field private mKeyValueBackupDeferred:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mSoundTriggerDisabled:Z

.field private mVibrationDisabled:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "Battery saver policy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  Settings battery_saver_constants"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "battery_saver_constants"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  vibration_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  animation_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  fullbackup_deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  keyvaluebackup_deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  firewall_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  datasaver_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  adjust_brightness_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  adjust_brightness_factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  gps_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/os/PowerSaveState$Builder;

    invoke-direct {v1}, Landroid/os/PowerSaveState$Builder;-><init>()V

    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v0

    if-nez p2, :cond_16

    invoke-virtual {v0, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_16
    packed-switch p1, :pswitch_data_a2

    :pswitch_19
    :try_start_19
    invoke-virtual {v0, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :pswitch_23
    :try_start_23
    invoke-virtual {v0, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setGpsMode(I)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :pswitch_33
    :try_start_33
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :pswitch_3f
    :try_start_3f
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :pswitch_4b
    :try_start_4b
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :pswitch_57
    :try_start_57
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :pswitch_65
    :try_start_65
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_76
    .catchall {:try_start_65 .. :try_end_76} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :pswitch_79
    :try_start_79
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :pswitch_87
    :try_start_87
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :pswitch_93
    :try_start_93
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabled:Z

    invoke-virtual {v0, v1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9f

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_9f
    move-exception v1

    monitor-exit p0

    throw v1

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_23
        :pswitch_93
        :pswitch_33
        :pswitch_3f
        :pswitch_4b
        :pswitch_57
        :pswitch_65
        :pswitch_87
        :pswitch_19
        :pswitch_79
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "battery_saver_constants"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/BatterySaverPolicy;->updateConstants(Ljava/lang/String;)V

    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "battery_saver_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/BatterySaverPolicy;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method updateConstants(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_8a
    .catchall {:try_start_1 .. :try_end_6} :catchall_96

    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "vibration_disabled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabled:Z

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "animation_disabled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "soundtrigger_disabled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "fullbackup_deferred"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "keyvaluebackup_deferred"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "firewall_disabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "adjust_brightness_disabled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "adjust_brightness_factor"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "datasaver_disabled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "batterySaverGpsMode"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "gps_mode"

    invoke-virtual {v2, v3, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I
    :try_end_88
    .catchall {:try_start_6 .. :try_end_88} :catchall_96

    monitor-exit p0

    return-void

    :catch_8a
    move-exception v1

    :try_start_8b
    const-string/jumbo v2, "BatterySaverPolicy"

    const-string/jumbo v3, "Bad battery saver constants"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_96

    goto/16 :goto_6

    :catchall_96
    move-exception v2

    monitor-exit p0

    throw v2
.end method
