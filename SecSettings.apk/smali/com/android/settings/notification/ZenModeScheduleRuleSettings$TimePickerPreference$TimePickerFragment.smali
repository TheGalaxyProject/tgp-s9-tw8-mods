.class public Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field public pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x22c

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->-get0(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_3c

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->-get1(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_3c

    const/4 v7, 0x1

    :goto_15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    if-eqz v7, :cond_3e

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->-get0(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v3

    :goto_21
    if-eqz v7, :cond_45

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->-get1(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v4

    :goto_29
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    :cond_3c
    const/4 v7, 0x0

    goto :goto_15

    :cond_3e
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_21

    :cond_45
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    goto :goto_29
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    :cond_9
    return-void
.end method
