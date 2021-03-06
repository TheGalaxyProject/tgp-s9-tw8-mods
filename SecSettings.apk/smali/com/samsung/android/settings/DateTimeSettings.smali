.class public Lcom/samsung/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DateTimeSettings$1;,
        Lcom/samsung/android/settings/DateTimeSettings$2;,
        Lcom/samsung/android/settings/DateTimeSettings$3;,
        Lcom/samsung/android/settings/DateTimeSettings$4;,
        Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;,
        Lcom/samsung/android/settings/DateTimeSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static resources:Landroid/content/res/Resources;


# instance fields
.field private category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

.field private mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

.field private mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

.field private mDatePref:Landroid/support/v7/preference/SecPreference;

.field private mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mDummyDate:Ljava/util/Calendar;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFirstId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondId:I

.field private mSettingsObserver:Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;

.field private mTime24Pref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

.field private mTimePref:Landroid/support/v7/preference/SecPreference;

.field private mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

.field private mTzHidden1:Z

.field private mTzHidden2:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v14/preference/SecRestrictedSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/DateTimeSettings;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/DateTimeSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DateTimeSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/DateTimeSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DateTimeSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden1:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden2:Z

    iput v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DateTimeSettings$1;-><init>(Lcom/samsung/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DateTimeSettings$4;-><init>(Lcom/samsung/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private applyEDMDateTimeChangePolicy()V
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v8, "firstRun"

    invoke-virtual {v5, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "device_policy"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    if-eqz v7, :cond_1d

    return-void

    :cond_1d
    const-string/jumbo v8, "auto_time"

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v8, "auto_time_zone"

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "content://com.sec.knox.provider/DateTimePolicy"

    const-string/jumbo v10, "isDateTimeChangeEnalbed"

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_5d

    if-ne v6, v12, :cond_5f

    const/4 v3, 0x1

    :goto_3f
    xor-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_61

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v11}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    const/4 v3, 0x1

    goto :goto_3f

    :cond_5f
    const/4 v3, 0x0

    goto :goto_3f

    :cond_61
    const-string/jumbo v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v8, 0x4

    if-lt v0, v8, :cond_93

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v11}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_5c

    :cond_93
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v12}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v12}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5c

    :cond_b3
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v8

    if-nez v8, :cond_5c

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v12}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v12}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5c
.end method

.method static convertToArabic(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x660

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/lit16 v3, v3, 0x660

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_27
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v2, "DateTimeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in getAutoState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_2e} :catch_33

    move-result v2

    if-lez v2, :cond_32

    const/4 v1, 0x1

    :cond_32
    return v1

    :catch_33
    move-exception v0

    return v1
.end method

.method public static getTimeZoneName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const v3, 0x7f15011b

    :try_start_5
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    if-nez v2, :cond_c

    return-object p0

    :cond_c
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_c

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    :goto_15
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_44

    :goto_1b
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_28

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_48

    :cond_28
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p0

    :cond_44
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_47
    return-object p0

    :cond_48
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4b} :catch_61

    goto :goto_1b

    :catch_4c
    move-exception v1

    const-string/jumbo v3, "DateTimeSettings"

    const-string/jumbo v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_57
    :goto_57
    :try_start_57
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_6c

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_60} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_60} :catch_61

    goto :goto_57

    :catch_61
    move-exception v0

    const-string/jumbo v3, "DateTimeSettings"

    const-string/jumbo v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_6c
    :try_start_6c
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_6f} :catch_4c
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_61

    goto :goto_15
.end method

.method public static getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .registers 15

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "ZZZZ"

    invoke-direct {v1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2f

    const/4 v3, 0x1

    :goto_24
    if-eqz v3, :cond_31

    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_28
    invoke-virtual {v0, v2, v10}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_34

    return-object v2

    :cond_2f
    const/4 v3, 0x0

    goto :goto_24

    :cond_31
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_28

    :cond_34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v8

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Asia/Jerusalem"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Setting_DisableIsraelCountry"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e9

    const-string/jumbo v10, "DateTimeSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "for MEA timeZoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9c

    const-string/jumbo v10, "DateTimeSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "for MEA zoneNameString = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    :goto_9c
    if-nez v9, :cond_aa

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    :cond_aa
    const-string/jumbo v10, "GMT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_bd

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    invoke-static {v10, v11}, Lcom/samsung/android/settings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    :cond_bd
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_d0

    const-string/jumbo v10, "ar"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d0

    invoke-static {v2}, Lcom/samsung/android/settings/DateTimeSettings;->convertToArabic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_d0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :cond_e9
    invoke-static {v8, p0, v6}, Lcom/samsung/android/settings/DateTimeSettings;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto :goto_9c
.end method

.method private static getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_8
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_15
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_8
.end method

.method private initUI()V
    .registers 15

    const v13, 0x7f1208fe

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_e
    const v8, 0x7f1500ce

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v8, "auto_time"

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v8, "auto_time_zone"

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3c

    if-eq v1, v2, :cond_3c

    move v2, v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "auto_time_zone"

    if-eqz v1, :cond_23e

    move v8, v9

    :goto_39
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3c
    const-string/jumbo v8, "auto_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v8, "firstRun"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setChecked(Z)V

    const-string/jumbo v8, "auto_zone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_8f

    if-eqz v4, :cond_ab

    :cond_8f
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    const v11, 0x7f120778

    invoke-virtual {v8, v11}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "auto_time_zone"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    :cond_ab
    const-string/jumbo v8, "time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v8, "24 hour"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v8, "timezone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v8, "date"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v8, "dualclock_settings"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-eqz v8, :cond_115

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isContainerOnlyModeFromOwner(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11e

    :cond_115
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_11e
    const-string/jumbo v8, "oversea"

    const-string/jumbo v11, "ril.currentplmn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_241

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-eqz v8, :cond_241

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isContainerOnlyModeFromOwner(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_241

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f121353

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :goto_175
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_18e

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v8, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18e

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v11, 0x7f1216ac

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    :cond_18e
    if-eqz v4, :cond_199

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_199
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v11, v1, 0x1

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v11, v1, 0x1

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v11, v2, 0x1

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    const-string/jumbo v8, "auto_zone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    if-eqz v1, :cond_1cf

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setVisible(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1cf

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setVisible(Z)V

    :cond_1cf
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    const-string/jumbo v8, "category_international_roaming_time_settings"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v8, "time_zone_recommend"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    const-string/jumbo v8, "time_display_scheme_setting"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

    const-string/jumbo v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23a

    if-eqz v4, :cond_213

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v8, :cond_213

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_213
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->timeZoneRcmndAvail()Z

    move-result v8

    if-eqz v8, :cond_228

    const-string/jumbo v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_23a

    :cond_228
    iput-boolean v9, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden1:Z

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v8, v9, v10}, Lcom/samsung/android/settings/DateTimeSettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    const-string/jumbo v8, "DateTimeSettings"

    const-string/jumbo v9, "Not in roaming state"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->refresRoaming()V

    return-void

    :cond_23e
    move v8, v10

    goto/16 :goto_39

    :cond_241
    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v13}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_175
.end method

.method private is24Hour()Z
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_12_24"

    if-eqz p1, :cond_10

    const-string/jumbo v0, "24"

    :goto_c
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_10
    const-string/jumbo v0, "12"

    goto :goto_c
.end method

.method static setDate(Landroid/content/Context;III)V
    .registers 12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_34

    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_34
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .registers 11

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_3d

    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_3d
    return-void
.end method

.method private showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V
    .registers 6

    if-eqz p2, :cond_16

    if-eqz p1, :cond_16

    const-string/jumbo v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p3, :cond_17

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_16
.end method

.method private timeUpdated(Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .registers 3

    packed-switch p1, :pswitch_data_c

    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/16 v0, 0x25f

    return v0

    :pswitch_8
    const/16 v0, 0x260

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x26

    return v0
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "0"

    const-string/jumbo v1, "gsm.sim.selectnetwork"

    const-string/jumbo v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v0, "0"

    :goto_19
    return-object v0

    :cond_1a
    const-string/jumbo v1, "gsm.sim.selectnetwork"

    const-string/jumbo v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string/jumbo v0, "1"

    goto :goto_19

    :cond_31
    const-string/jumbo v0, "0"

    goto :goto_19
.end method

.method public isDataRoaming()Z
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v1, "gsm.sim.state"

    iget v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1

    :cond_27
    return v4
.end method

.method public isDataRoamingSecondary()Z
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v1, "gsm.sim.state"

    iget v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    const-string/jumbo v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1

    :cond_27
    return v4
.end method

.method public isSlot1CdmaActive()Z
    .registers 7

    const-string/jumbo v3, "gsm.sim.currentcardstatus"

    iget v4, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v5, "9"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_54

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cdmaActive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isSlotSwitched : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cdmaCardStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_56

    xor-int/lit8 v3, v2, 0x1

    :goto_53
    return v3

    :cond_54
    const/4 v0, 0x0

    goto :goto_14

    :cond_56
    const/4 v3, 0x0

    goto :goto_53
.end method

.method public isSlot1GsmActive()Z
    .registers 7

    const/16 v1, 0x9

    const-string/jumbo v3, "gsm.sim.currentcardstatus"

    iget v4, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v5, "9"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_54

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsmActive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isSlotSwitched : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gsmCardStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_56

    :goto_53
    return v2

    :cond_54
    const/4 v0, 0x0

    goto :goto_16

    :cond_56
    const/4 v2, 0x0

    goto :goto_53
.end method

.method public isSlot2GsmActive()Z
    .registers 7

    const-string/jumbo v3, "gsm.sim.currentcardstatus"

    iget v4, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    const-string/jumbo v5, "9"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_54

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsmActive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isSlotSwitched : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gsmCardStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_56

    xor-int/lit8 v3, v2, 0x1

    :goto_53
    return v3

    :cond_54
    const/4 v0, 0x0

    goto :goto_14

    :cond_56
    const/4 v3, 0x0

    goto :goto_53
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isAvailableNewTimeZone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_48

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0d01a9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0593

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_49

    const v4, 0x7f12128e

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_33
    const v4, 0x7f0a0592

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/samsung/android/settings/DateTimeSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/DateTimeSettings$5;-><init>(Lcom/samsung/android/settings/DateTimeSettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/DateTimeSettings;->setFooterView(Landroid/view/View;Z)V

    :cond_48
    return-void

    :cond_49
    const v4, 0x7f12128d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_33
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->initUI()V

    new-instance v0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/DateTimeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 21

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    packed-switch p1, :pswitch_data_d2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :pswitch_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v13, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    const/16 v4, 0x7f4

    const/16 v5, 0xb

    const/16 v6, 0x1f

    invoke-virtual {v13, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    const-string/jumbo v4, "America/Sao_Paulo"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    const-string/jumbo v4, "America/Santiago"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual {v12, v9}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    :cond_4f
    const-wide/32 v4, 0x36ee80

    sub-long v16, v16, v4

    :cond_54
    new-instance v2, Lcom/samsung/android/app/SemDatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v4, 0x5

    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/SemDatePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v2}, Lcom/samsung/android/app/SemDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    const/16 v4, 0x7d7

    const/16 v5, 0xa

    const/4 v6, 0x5

    invoke-virtual {v11, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v2}, Lcom/samsung/android/app/SemDatePickerDialog;->getDatePicker()Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v4

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->setMinDate(J)V

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    const/16 v4, 0x7f4

    const/16 v5, 0xb

    const/16 v6, 0x1f

    invoke-virtual {v11, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v2}, Lcom/samsung/android/app/SemDatePickerDialog;->getDatePicker()Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v4

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->setMaxDate(J)V

    return-object v2

    :pswitch_a9
    new-instance v3, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v10, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v5, 0xc

    invoke-virtual {v10, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v3}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v3

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a9
    .end packed-switch
.end method

.method public onDateSet(Lcom/samsung/android/widget/SemDatePicker;III)V
    .registers 7

    const-string/jumbo v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0, p2, p3, p4}, Lcom/samsung/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_16
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DateAndTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 12

    const/16 v6, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "DateTimeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "auto_time"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "auto_time"

    if-eqz v0, :cond_b9

    move v3, v4

    :goto_4a
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_64

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "auto_time_zone"

    if-eqz v0, :cond_bb

    move v3, v4

    :goto_61
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_64
    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreference;->setVisible(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_98

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setVisible(Z)V

    :cond_98
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b017f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eqz v0, :cond_b1

    move v5, v6

    :cond_b1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v7, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_b8
    :goto_b8
    return v4

    :cond_b9
    move v3, v5

    goto :goto_4a

    :cond_bb
    move v3, v5

    goto :goto_61

    :cond_bd
    const-string/jumbo v3, "auto_zone"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "auto_time_zone"

    if-eqz v1, :cond_da

    move v5, v4

    :cond_da
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto :goto_b8

    :cond_e8
    const-string/jumbo v3, "24 hour"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DateTimeSettings;->set24Hour(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DateTimeSettings;->timeUpdated(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0184

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eqz v2, :cond_121

    :goto_119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v7, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_b8

    :cond_121
    move v6, v5

    goto :goto_119
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v2, :cond_23

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DateTimeSettings;->removeDialog(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/DateTimeSettings;->showDialog(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0181

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_23
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    if-ne p1, v2, :cond_40

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DateTimeSettings;->removeDialog(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/DateTimeSettings;->showDialog(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0182

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_1e

    :cond_40
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz v1, :cond_1e

    :try_start_4f
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.app.irsettings"

    const-string/jumbo v4, "com.sec.android.app.irsettings.TimeZoneRecommend"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DateTimeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_60
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4f .. :try_end_60} :catch_61

    goto :goto_1e

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1e

    :cond_66
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->showTimeDisplaySchemeDialog()V

    goto :goto_1e
.end method

.method public onResume()V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->setStorageDeviceProtected()V

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    const-string/jumbo v2, "auto_time"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setChecked(Z)V

    :cond_4b
    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->refresRoaming()V

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "DateAndTime"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .registers 6

    const-string/jumbo v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0, p2, p3}, Lcom/samsung/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_16
    return-void
.end method

.method public refresRoaming()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->timeZoneRcmndBlocked()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_22

    iput-boolean v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden1:Z

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/DateTimeSettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :cond_22
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isDataRoaming()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_58

    iput-boolean v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden2:Z

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/DateTimeSettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    const-string/jumbo v0, "DateTimeSettings"

    const-string/jumbo v1, "remove TimeDisplayScheme menu not in roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    iget-boolean v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden1:Z

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden2:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_57
    :goto_57
    return-void

    :cond_58
    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->timeZoneDisplaySchemeBlocked()Z

    move-result v0

    if-eqz v0, :cond_42

    iput-boolean v3, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTzHidden2:Z

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/DateTimeSettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    const-string/jumbo v0, "DateTimeSettings"

    const-string/jumbo v1, "remove TimeDisplayScheme menu in GMT +8:00"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_71
    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_57
.end method

.method showTimeDisplaySchemeDialog()V
    .registers 4

    const v1, 0x7f121be9

    invoke-static {v1}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->newInstance(I)Lcom/samsung/android/settings/TimeDisplaySchemeSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public timeZoneDisplaySchemeBlocked()Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x3c

    div-int/lit16 v0, v3, 0x3e8

    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeZoneDisplaySchemeBlocked time zone offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_30

    const/4 v1, 0x1

    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method public timeZoneRcmndAvail()Z
    .registers 15

    const/4 v1, 0x0

    const-string/jumbo v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/samsung/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v13, ""

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/samsung/android/settings/DateTimeSettings;->mSecondId:I

    const-string/jumbo v13, ""

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot1GsmActive()Z

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string/jumbo v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    if-eqz v7, :cond_40

    :try_start_35
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_40

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3f} :catch_d9

    move-result v8

    :cond_40
    :goto_40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_51

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_51
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_62

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_62
    const/16 v11, 0x1cc

    if-eq v4, v11, :cond_6a

    const/16 v11, 0x1c7

    if-ne v4, v11, :cond_df

    :cond_6a
    :goto_6a
    const/4 v1, 0x1

    :cond_6b
    const-string/jumbo v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "timeZoneRcmndAvail chinaArea: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " cdma SS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " cdmaActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " slot1GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " slot2GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "timeZoneRcmndAvail UserHandle.myUserId(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_e8

    const/4 v11, 0x1

    return v11

    :catch_d9
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_40

    :cond_df
    const/16 v11, 0x1cc

    if-eq v6, v11, :cond_6a

    const/16 v11, 0x1c7

    if-ne v6, v11, :cond_6b

    goto :goto_6a

    :cond_e8
    if-nez v0, :cond_f6

    if-nez v9, :cond_f4

    if-eqz v10, :cond_f6

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v11

    if-eqz v11, :cond_f6

    :cond_f4
    const/4 v11, 0x1

    return v11

    :cond_f6
    const/4 v11, 0x0

    return v11
.end method

.method public timeZoneRcmndBlocked()Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v1

    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeZoneRcmndBlocked cdmaActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gsm2Active : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeZoneRcmndBlocked UserHandle.myUserId(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_52

    xor-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_5a

    :cond_52
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_5b

    :cond_5a
    const/4 v2, 0x1

    :cond_5b
    return v2
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/SecPreference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/samsung/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    return-void
.end method
