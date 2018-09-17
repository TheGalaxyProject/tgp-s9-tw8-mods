.class public Lcom/samsung/android/settings/qstile/PowerSavingTile;
.super Landroid/service/quicksettings/TileService;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/qstile/PowerSavingTile$1;,
        Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryExtendedTime:J

.field private mContext:Landroid/content/Context;

.field private mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

.field private mPsmObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/qstile/PowerSavingTile;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/qstile/PowerSavingTile;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/qstile/PowerSavingTile;J)J
    .registers 4

    iput-wide p1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/qstile/PowerSavingTile;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->setPowerSavingMode(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/qstile/PowerSavingTile;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    new-instance v0, Lcom/samsung/android/settings/qstile/PowerSavingTile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile$1;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getRemoteViews()Landroid/widget/RemoteViews;
    .registers 7

    const v5, 0x7f0a0643

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0251

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f1214db

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f120542

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a064e

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f120540

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0649

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f120547

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0646

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/high16 v4, -0x1000000

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateRemainingTime(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->setupPendingIntent(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateButtonStatus(Landroid/widget/RemoteViews;I)V

    return-object v0
.end method

.method private isBlockedEdmSettingsChange()Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1c

    if-nez v0, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private setPowerSavingMode(I)V
    .registers 8

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateState()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "battery_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/qstile/PowerSavingTile$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile$4;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Landroid/content/Intent;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupPendingIntent(Landroid/widget/RemoteViews;)V
    .registers 7

    const/high16 v4, 0x8000000

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1e14

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0a064c

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1e15

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0a0647

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "mode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1e16

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0a0644

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private showItPolicyToast()V
    .registers 8

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const v5, 0x7f1214df

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f12151d

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_26
    return-void
.end method

.method private updateButtonDescription(I)V
    .registers 2

    return-void
.end method

.method private updateButtonStatus(Landroid/widget/RemoteViews;I)V
    .registers 11

    const v7, 0x7f0601b0

    const v6, 0x7f0a0646

    const v5, 0x7f0a0645

    const v4, 0x7f0a0644

    const v3, 0x7f0601b4

    packed-switch p2, :pswitch_data_1f4

    :goto_12
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isPowerSavingModeAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_61

    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM disabled : isPowerSavingModeAllowed returns FALSE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "setEnabled"

    const v1, 0x7f0a0647

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const v0, 0x7f0601b3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0649

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0601b1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0648

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v0, "setEnabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v4, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const v0, 0x7f0601b3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0601b1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_61
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo v0, "setEnabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v4, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const v0, 0x7f0601b3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0601b1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_84
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateButtonDescription(I)V

    return-void

    :pswitch_88
    const-string/jumbo v1, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f7

    const v0, 0x7f08059e

    :goto_96
    const v2, 0x7f0a064c

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a064e

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a064d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x7f0a0647

    const v2, 0x7f08059b

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0601b2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0649

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0648

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v1, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_fb

    const v0, 0x7f0805a0

    :goto_e1
    invoke-virtual {p1, v4, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0601b2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_12

    :cond_f7
    const v0, 0x7f0805a1

    goto :goto_96

    :cond_fb
    const v0, 0x7f08059d

    goto :goto_e1

    :pswitch_ff
    const-string/jumbo v1, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_171

    const v0, 0x7f08059d

    :goto_10d
    const v2, 0x7f0a064c

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0601b6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a064e

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0601b6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a064d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x7f0a0647

    const v2, 0x7f08059c

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0649

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0648

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v1, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_175

    const v0, 0x7f0805a0

    :goto_15b
    invoke-virtual {p1, v4, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0601b2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_12

    :cond_171
    const v0, 0x7f0805a0

    goto :goto_10d

    :cond_175
    const v0, 0x7f08059d

    goto :goto_15b

    :pswitch_179
    const-string/jumbo v1, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1eb

    const v0, 0x7f08059d

    :goto_187
    const v2, 0x7f0a064c

    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0601b6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a064e

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v0, 0x7f0601b6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a064d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v0, "setBackgroundResource"

    const v1, 0x7f0a0647

    const v2, 0x7f08059b

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v0, 0x7f0601b2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0649

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    const v1, 0x7f0a0648

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v1, "setBackgroundResource"

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1ef

    const v0, 0x7f0805a2

    :goto_1d8
    invoke-virtual {p1, v4, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_12

    :cond_1eb
    const v0, 0x7f0805a0

    goto :goto_187

    :cond_1ef
    const v0, 0x7f08059f

    goto :goto_1d8

    nop

    :pswitch_data_1f4
    .packed-switch 0x0
        :pswitch_88
        :pswitch_ff
        :pswitch_179
    .end packed-switch
.end method

.method private updateRemainingTime(Landroid/widget/RemoteViews;)V
    .registers 20

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "CustomFrequencyManagerService"

    invoke-virtual {v7, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/CustomFrequencyManager;

    move-object v2, v0

    if-nez v2, :cond_19

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    return-void

    :cond_19
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v7

    int-to-long v12, v7

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v7

    int-to-long v10, v7

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_f9

    move-result v7

    int-to-long v8, v7

    sget-object v7, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateRemainingTime - Off : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " MID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " MAX : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " Extended : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-lez v7, :cond_118

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v14, v12

    long-to-int v14, v14

    invoke-static {v7, v14}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    const v14, 0x7f0a064d

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_89
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-lez v7, :cond_124

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v14, v10

    long-to-int v14, v14

    invoke-static {v7, v14}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    const v14, 0x7f0a0648

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_a5
    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-lez v7, :cond_130

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v14, v8

    long-to-int v14, v14

    invoke-static {v7, v14}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f0a0645

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_c1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_13b

    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-lez v7, :cond_13b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v14, v8

    long-to-int v14, v14

    invoke-static {v7, v14}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const v15, 0x7f1214db

    invoke-virtual {v7, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const v14, 0x7f0a0643

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_f8
    return-void

    :catch_f9
    move-exception v3

    sget-object v7, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_118
    const v7, 0x7f0a064d

    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_89

    :cond_124
    const v7, 0x7f0a0648

    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_a5

    :cond_130
    const v7, 0x7f0a0645

    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_c1

    :cond_13b
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-lez v7, :cond_169

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mBatteryExtendedTime:J

    add-long/2addr v14, v10

    long-to-int v14, v14

    invoke-static {v7, v14}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const v15, 0x7f1214db

    invoke-virtual {v7, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const v14, 0x7f0a0643

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_f8

    :cond_169
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    const v14, 0x7f1214dc

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v14, 0x7f0a0643

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_f8
.end method

.method private updateState()V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_2c

    const v1, 0x7f0805a5

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    const v1, 0x7f1215ad

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    :goto_23
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :goto_29
    return-void

    :cond_2a
    const/4 v1, 0x2

    goto :goto_23

    :cond_2c
    sget-object v1, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getQsTile() is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method


# virtual methods
.method public checkScreenState(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isPowerSavingModeAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM onClick : isPowerSavingModeAllowed returns FALSE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->showItPolicyToast()V

    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PSM onClick : isBlockedEdmSettingsChange returns TRUE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$3;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->unlockAndRun(Ljava/lang/Runnable;)V

    :goto_31
    return-void

    :cond_32
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->setPowerSavingMode(I)V

    goto :goto_31
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->registerObserver(Landroid/os/Handler;)V

    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick/currentMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    const/4 v0, 0x0

    :goto_23
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->checkScreenState(I)V

    return-void

    :cond_27
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMmode(Landroid/content/Context;)I

    move-result v0

    goto :goto_23
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onStartListening()V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->updateState()V

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.settings.ACTION_POWERMODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStopListening()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopListening"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPowerSavingBatteryTimeTask:Lcom/samsung/android/settings/qstile/PowerSavingTile$PowerSavingBatteryTimeTask;

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->unregisterObserver()V

    sget-object v0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Landroid/os/Handler;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1e

    new-instance v1, Lcom/samsung/android/settings/qstile/PowerSavingTile$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/qstile/PowerSavingTile$2;-><init>(Lcom/samsung/android/settings/qstile/PowerSavingTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    sget-object v1, Lcom/samsung/android/settings/qstile/PowerSavingTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .registers 2

    const v0, 0x7f1214df

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->showItPolicyToast()V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/PowerSavingTile;->semUpdateDetailView()V

    return-void
.end method

.method public unregisterObserver()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/qstile/PowerSavingTile;->mPsmObserver:Landroid/database/ContentObserver;

    :cond_12
    return-void
.end method
