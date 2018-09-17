.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$2;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$6;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$9;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;
    }
.end annotation


# static fields
.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static sInstance:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBootUpDataReloadTryCnt:I

.field private mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mCalendarDataConnection:Landroid/content/ServiceConnection;

.field protected mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

.field private mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurDayOfMonth:I

.field private mCurrentUserId:I

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field

.field private mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mEventChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIs24HourMode:Z

.field private mIsCalendarDataServiceBound:Z

.field private mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLoadTodayEventsCompletedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

.field private final mLoadTodayEventsRunnable:Ljava/lang/Runnable;

.field private mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mTimeTickReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateCalendarRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mBootUpDataReloadTryCnt:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mUpdateCalendarRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mBootUpDataReloadTryCnt:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getEventsFromCalendar(JJJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getTasksFromCalendar(JJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getNextEndEvent(Ljava/util/ArrayList;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->handleCalendarUpdated()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->registerAlarm(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->removeEndedEvents(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sendDataToExternal()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->unregisterAlarm()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    iput v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    iput v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurrentUserId:I

    iput-boolean v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    iput v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mBootUpDataReloadTryCnt:I

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$2;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mUpdateCalendarRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$6;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$9;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.keyguard.servicebox.pages.calendar.NEXT_EVENT_ENDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurDayOfMonth:I

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->registerReceivers()V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->controlCalendarDataServiceConnection(I)V

    return-void
.end method

.method private getEventsFromCalendar(JJJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .registers 24

    const-string/jumbo v8, "(allDay= ?) AND (deleted= 0) AND (visible= 1)"

    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide/16 v4, 0x1

    sub-long v4, p3, v4

    invoke-static {v14, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const-string/jumbo v4, "0"

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v13

    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    const-wide/16 v4, 0x1

    add-long v4, v4, p5

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide/32 v4, 0x5265c00

    add-long v4, v4, p5

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getHideContactsEvents()Z

    move-result v4

    if-eqz v4, :cond_5e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND (contact_id is null)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_5e
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const-string/jumbo v4, "1"

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v11

    if-nez v13, :cond_7b

    if-nez v11, :cond_7b

    const/4 v4, 0x0

    return-object v4

    :cond_7b
    new-instance v15, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    invoke-direct {v15}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;-><init>()V

    invoke-virtual {v15, v13}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->addAll(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;)V

    invoke-virtual {v15, v11}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->addAll(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;)V

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->resetTimeForDay(JJ)V

    invoke-virtual {v15}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->sort()V

    return-object v15
.end method

.method private getHideContactsEvents()Z
    .registers 10

    const/4 v2, 0x0

    const/4 v8, 0x0

    const-string/jumbo v7, "content://com.sec.android.calendar.preference/PreferenceBoolean"

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "preferences_hide_contacts_events"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1b

    return v8

    :cond_1b
    :try_start_1b
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_3b

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    :cond_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v8

    :cond_2d
    const/4 v0, 0x0

    :try_start_2e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3b

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    :goto_35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_39
    move v0, v8

    goto :goto_35

    :catchall_3b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
    .registers 3

    const-class v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    :cond_e
    sget-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextEndEvent(Ljava/util/ArrayList;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    return-object v8

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v6, 0x0

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->isValidEndTime(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-wide v8, v2, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    cmp-long v7, v8, v4

    if-gez v7, :cond_1c

    iget-wide v8, v2, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    cmp-long v7, v8, v0

    if-lez v7, :cond_1c

    move-object v6, v2

    iget-wide v4, v2, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    goto :goto_1c

    :cond_3e
    const-string/jumbo v8, "CalendarManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Next end = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v6, :cond_5f

    invoke-virtual {v6}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_53
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_5f
    const-string/jumbo v7, "null"

    goto :goto_53
.end method

.method private getTasksFromCalendar(JJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .registers 12

    const/4 v1, 0x2

    const-string/jumbo v4, "((utc_due_date IS NOT NULL) AND (utc_due_date>= ?) AND (utc_due_date< ?) AND (deleted= 0) AND (complete= 0) AND (selected= 1) AND (groupSelected= 1) )"

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v5, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v5, v3

    const-string/jumbo v6, "importance DESC, subject ASC"

    const-string/jumbo v0, "content://com.android.calendar/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;->TABLE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v0

    return-object v0
.end method

.method private handleCalendarUpdated()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isValidEndTime(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)Z
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return v4

    :cond_4
    iget-boolean v0, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-nez v0, :cond_22

    iget-wide v0, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    iget-wide v0, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    iget-wide v0, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    iget-wide v2, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    return v4
.end method

.method private query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .registers 18

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

    if-nez v1, :cond_30

    const-string/jumbo v1, "CalendarManager"

    const-string/jumbo v2, "No service bound. Query to current context."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_22

    const/4 v1, 0x0

    return-object v1

    :cond_22
    :try_start_22
    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    invoke-direct {v1, p1, v9}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;-><init>(ILandroid/database/Cursor;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_2b
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_30
    :try_start_30
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;->getCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_42

    const/4 v1, 0x0

    return-object v1

    :cond_42
    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    invoke-direct {v1, v8}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;-><init>(Ljava/util/List;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_47} :catch_48

    return-object v1

    :catch_48
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private registerAlarm(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->unregisterAlarm()V

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-wide v0, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private registerReceivers()V
    .registers 7

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "content"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v0, "com.android.calendar"

    invoke-virtual {v3, v0, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.android.calendar.ACTION_UPDATE_WIDGET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.android.keyguard.servicebox.pages.calendar.NEXT_EVENT_ENDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.sec.android.intent.CHANGE_SHARE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method private removeEndedEvents(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_11
    if-ltz v4, :cond_35

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    iget-wide v2, v5, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    iget-boolean v5, v5, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-nez v5, :cond_32

    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-eqz v5, :cond_32

    cmp-long v5, v2, v0

    if-gez v5, :cond_32

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_32
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    :cond_35
    return-void
.end method

.method private roundDownMillis(J)J
    .registers 6

    const-wide/16 v0, 0x3e8

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private sendDataToExternal()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterAlarm()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public addEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_16

    return-void

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    if-nez v1, :cond_32

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    :goto_31
    return-void

    :cond_32
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    goto :goto_31
.end method

.method public bindCalendarDataService()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    if-nez v1, :cond_44

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.servicebox.pages.calendar.CalendarDataService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataConnection:Landroid/content/ServiceConnection;

    iget v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurrentUserId:I

    if-nez v1, :cond_30

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    :goto_1e
    invoke-virtual {v2, v0, v3, v6, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_38

    iput-boolean v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    const-string/jumbo v1, "CalendarManager"

    const-string/jumbo v2, "Cannot bind to com.android.systemui.servicebox.pages.calendar.CalendarDataService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void

    :cond_30
    new-instance v1, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurrentUserId:I

    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_1e

    :cond_38
    iput-boolean v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    const-string/jumbo v1, "CalendarManager"

    const-string/jumbo v2, "Calendar data service is started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_44
    const-string/jumbo v1, "CalendarManager"

    const-string/jumbo v2, "Calendar data service is already started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public controlCalendarDataServiceConnection(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurrentUserId:I

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->unbindCalendarDataService()V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->bindCalendarDataService()V

    goto :goto_7
.end method

.method public getCachedEvents()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEventCnt()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public loadTodayEvents(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .registers 20

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v6

    const-wide/32 v4, 0x5265c00

    add-long v8, v6, v4

    invoke-virtual {v14}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v4, v6

    invoke-virtual {v14}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v10

    new-instance v4, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;

    move-object/from16 v5, p0

    move-object/from16 v12, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJJLcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v13

    return-void
.end method

.method public notifyEventChanged()V
    .registers 4

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sendDataToExternal()V

    return-void
.end method

.method public removeEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized unbindCalendarDataService()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

    const-string/jumbo v0, "CalendarManager"

    const-string/jumbo v1, "Calendar data service is unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_27

    :goto_1b
    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    const-string/jumbo v0, "CalendarManager"

    const-string/jumbo v1, "Calendar data service is already unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    goto :goto_1b

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method
