.class public Lcom/samsung/android/settings/dualclock/DualClockSetting;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DualClockSetting.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/dualclock/DualClockSetting$1;
    }
.end annotation


# static fields
.field private static DUAL_CLOCK:I

.field private static DUAL_CLOCK_SWITCH:I


# instance fields
.field isFromUnlock:Z

.field private isLockScreenDisabled:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHomeCityTimeZone:Landroid/support/v7/preference/SecPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWhereToShow:Lcom/android/settings/SecDropDownPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Landroid/support/v7/preference/SecPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/SecDropDownPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;-><init>(Lcom/samsung/android/settings/dualclock/DualClockSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
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

.method private getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x3

    const/4 v8, 0x2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :try_start_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f15011b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    if-eqz v5, :cond_57

    :cond_1c
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-ne v6, v8, :cond_1c

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    :goto_25
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_54

    :goto_2b
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v8, :cond_38

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_58

    :cond_38
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "timezone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p1

    :cond_54
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_57
    :goto_57
    return-object p1

    :cond_58
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_5b} :catch_5c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_5b} :catch_71

    goto :goto_2b

    :catch_5c
    move-exception v4

    const-string/jumbo v6, "DateTimeSettings"

    const-string/jumbo v7, "Ill-formatted timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_67
    :goto_67
    :try_start_67
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    if-eq v6, v9, :cond_7c

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67 .. :try_end_70} :catch_5c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_70} :catch_71

    goto :goto_67

    :catch_71
    move-exception v2

    const-string/jumbo v6, "DateTimeSettings"

    const-string/jumbo v7, "Unable to read timezones.xml file"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_7c
    :try_start_7c
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_7f} :catch_5c
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_71

    goto :goto_25
.end method

.method private getTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 12

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GMT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v2, :cond_43

    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1e
    const v5, 0x36ee80

    div-int v5, v3, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v5, 0xea60

    div-int v0, v3, v5

    rem-int/lit8 v0, v0, 0x3c

    const/16 v5, 0xa

    if-ge v0, v5, :cond_3b

    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_43
    const/16 v5, 0x2b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e
.end method

.method private getTimeZoneText(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "zzzz"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v0, ""

    if-nez v1, :cond_23

    return-object v0

    :cond_23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_2d
    if-ge v8, v10, :cond_37

    aget-object v6, v9, v8

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_37
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "GMT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_55
    :goto_55
    const-string/jumbo v8, "Asia/Shanghai"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_66
    return-object v0

    :cond_67
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Llibcore/icu/TimeZoneNames;->getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "GMT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_55
.end method

.method private initWhereToShowPreference()V
    .registers 8

    const/4 v6, 0x0

    const-string/jumbo v2, "where_to_show"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SecDropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "advanced_dual_clock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2d
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->isLockScreenDisabled:Z

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    if-eqz v2, :cond_92

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    const-string/jumbo v4, "0"

    aput-object v4, v3, v6

    const-string/jumbo v4, "1"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "2"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "roaming_clock_option"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    new-instance v3, Lcom/samsung/android/settings/dualclock/DualClockSetting$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/dualclock/DualClockSetting$2;-><init>(Lcom/samsung/android/settings/dualclock/DualClockSetting;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_92
    return-void
.end method

.method private updateCheckedUI()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dualclock_menu_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v0, 0x1

    :goto_f
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/support/v7/preference/SecPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    const-string/jumbo v1, "DualClockSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dual clock is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private updatepreference()V
    .registers 24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "homecity_timezone"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "homecity_timezone_city"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v19, :cond_e8

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v20, "gsm.sim.state"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v20, "gsm.sim.state_1"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v20, "DualClockSetting"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mSalesCode : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "simState1 : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "simState2 : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "READY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_87

    const-string/jumbo v20, "READY"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_e8

    :cond_87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v20

    if-eqz v20, :cond_9c

    const-string/jumbo v9, "Asia/Seoul"

    :cond_9c
    const-string/jumbo v20, "GMT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_dd

    const-string/jumbo v20, "DualClockSetting"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "hometz is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "homecity_timezone"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "homecity_from_user"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_dd
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "homecity_timezone"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :cond_e8
    const-string/jumbo v20, "DualClockSetting"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "updatepreference tzHomeId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v19, :cond_1e7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getTimeZoneText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v20, "("

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v20, ")"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e1

    const/4 v10, 0x1

    :goto_155
    const-string/jumbo v20, "DualClockSetting"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "RTL is ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " on timezone value="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1e4

    sget-object v20, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_182
    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    if-eqz v10, :cond_1a3

    const-string/jumbo v20, "ar"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1a3

    invoke-static {v5}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->convertToArabic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "homecity_timezone_city"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v20, "DualClockSetting"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, " tzHomeId is not null tzHomeCity : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e0
    return-void

    :cond_1e1
    const/4 v10, 0x0

    goto/16 :goto_155

    :cond_1e4
    sget-object v20, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_182

    :cond_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1e0
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1137

    sput v0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->DUAL_CLOCK:I

    sget v0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->DUAL_CLOCK:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    :cond_29
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-boolean v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->isFromUnlock:Z

    const-string/jumbo v1, "direct_lockscren"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->isFromUnlock:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->isFromUnlock:Z

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "intent.stop.app-in-app"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_37
    const v1, 0x7f150060

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->initWhereToShowPreference()V

    const-string/jumbo v1, "homecity_timezone"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v1, "DualClockSetting"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_11
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "DualClockSetting"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "RoamingClock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 10

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "DualClockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceTreeClick key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "homecity_timezone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "ishomecity"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->isFromUnlock:Z

    if-eqz v0, :cond_3d

    const-string/jumbo v0, "direct_lockscren"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3d
    const-string/jumbo v2, "com.android.settings.datetime.ZonePicker"

    const/4 v3, 0x0

    const v5, 0x7f1218b4

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return v7

    :cond_4a
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "DualClockSetting"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->updateCheckedUI()V

    invoke-direct {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->updatepreference()V

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "RoamingClock"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 7

    const/4 v1, 0x0

    const-string/jumbo v0, "DualClockSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckChanged desiredState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "dualclock_menu_settings"

    if-eqz p2, :cond_51

    const/4 v0, 0x1

    :goto_25
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mHomeCityTimeZone:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->mWhereToShow:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b01e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/dualclock/DualClockSetting;->DUAL_CLOCK_SWITCH:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/settings/dualclock/DualClockSetting;->DUAL_CLOCK_SWITCH:I

    if-eqz p2, :cond_49

    const/16 v1, 0x3e8

    :cond_49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_51
    move v0, v1

    goto :goto_25
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .registers 14

    invoke-virtual {p0}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move-object v6, p1

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0
.end method
