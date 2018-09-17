.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;,
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;,
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field private mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

.field private mAutoPowerOffTime:Landroid/support/v7/preference/Preference;

.field private mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field private mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

.field private mAutoPowerOnTime:Landroid/support/v7/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCurrentDialogId:I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOffTime(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOnTime(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private registerAutoPowerOffAlarm(Landroid/content/Context;Z)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "power_off_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "by_user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private registerAutoPowerOnAlarm(Landroid/content/Context;Z)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "power_on_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "by_user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAutoPowerOffTime(II)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_power_off_time"

    mul-int/lit8 v2, p1, 0x64

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method private setAutoPowerOnTime(II)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_power_on_time"

    mul-int/lit8 v2, p1, 0x64

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method private timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 10

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput p2, v1, Landroid/text/format/Time;->hour:I

    iput p3, v1, Landroid/text/format/Time;->minute:I

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    const/16 v0, 0x201

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v0, 0x281

    :cond_18
    invoke-static {p1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private unregisterAutoPowerOffAlarm(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "power_off_reg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private unregisterAutoPowerOnAlarm(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "power_on_reg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateStatus()V
    .registers 13

    const/16 v11, 0x7c

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_on_settings"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_b0

    const/4 v1, 0x1

    :goto_13
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_off_settings"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_b3

    const/4 v0, 0x1

    :goto_23
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_on_time"

    const/16 v10, 0x2bc

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_on_repeat_days"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    new-instance v3, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_off_time"

    const/16 v10, 0x8fc

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_power_off_repeat_days"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    new-instance v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v2, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_6e

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_6e
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_77

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_77
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/support/v7/preference/Preference;

    if-eqz v8, :cond_8a

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    div-int/lit8 v10, v7, 0x64

    rem-int/lit8 v11, v7, 0x64

    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8a
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/support/v7/preference/Preference;

    if-eqz v8, :cond_9d

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    div-int/lit8 v10, v5, 0x64

    rem-int/lit8 v11, v5, 0x64

    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9d
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v8, :cond_a6

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v8, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    :cond_a6
    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v8, :cond_af

    iget-object v8, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    :cond_af
    return-void

    :cond_b0
    const/4 v1, 0x0

    goto/16 :goto_13

    :cond_b3
    const/4 v0, 0x0

    goto/16 :goto_23
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x384

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f150027

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "auto_power_on_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "auto_power_on_time"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "auto_power_on_days"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    const-string/jumbo v0, "auto_power_off_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "auto_power_off_time"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/support/v7/preference/Preference;

    const-string/jumbo v0, "auto_power_off_days"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 11

    const/16 v8, 0x20

    packed-switch p1, :pswitch_data_64

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_power_on_time"

    const/16 v3, 0x2bc

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    div-int/lit8 v3, v7, 0x64

    rem-int/lit8 v4, v7, 0x64

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    :pswitch_37
    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_power_off_time"

    const/16 v3, 0x8fc

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    div-int/lit8 v3, v6, 0x64

    rem-int/lit8 v4, v6, 0x64

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_a
        :pswitch_37
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AutoPowerOnOff"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const v7, 0x7f0b00d2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "AutoPowerOnOffSettings"

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOnSettings"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "auto_power_on_settings"

    if-eqz v0, :cond_56

    move v2, v3

    :goto_28
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_58

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    :goto_32
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v0, :cond_4e

    move v4, v3

    :cond_4e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v5, v6, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return v3

    :cond_56
    move v2, v4

    goto :goto_28

    :cond_58
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnAlarm(Landroid/content/Context;)V

    goto :goto_32

    :cond_5e
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "AutoPowerOnOffSettings"

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOffSettings"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "auto_power_off_settings"

    if-eqz v0, :cond_af

    move v2, v3

    :goto_81
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_b1

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    :goto_8b
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v0, :cond_a7

    move v4, v3

    :cond_a7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v5, v6, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return v3

    :cond_af
    move v2, v4

    goto :goto_81

    :cond_b1
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOffAlarm(Landroid/content/Context;)V

    goto :goto_8b

    :cond_b7
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const-string/jumbo v2, "AutoPowerOnOffSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOnDays, value.getCoded() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "auto_power_on_repeat_days"

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    return v3

    :cond_f6
    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_135

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const-string/jumbo v2, "AutoPowerOnOffSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange : mAutoPowerOffDays, value.getCoded() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "auto_power_off_repeat_days"

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    return v3

    :cond_135
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "AutoPowerOnOffSettings"

    const-string/jumbo v1, "Show dialog : KEY_AUTO_POWER_ON_TIME"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->removeDialog(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->showDialog(I)V

    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "AutoPowerOnOffSettings"

    const-string/jumbo v1, "Show dialog : KEY_AUTO_POWER_OFF_TIME"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->removeDialog(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->showDialog(I)V

    goto :goto_1b
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->updateStatus()V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AutoPowerOnOff"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .registers 6

    iget v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOnTime(II)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOffTime(II)V

    goto :goto_8
.end method
