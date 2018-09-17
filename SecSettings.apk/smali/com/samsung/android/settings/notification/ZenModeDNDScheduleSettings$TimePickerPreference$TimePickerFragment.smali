.class public Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;
.super Landroid/app/DialogFragment;
.source "ZenModeDNDScheduleSettings.java"

# interfaces
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field public pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_3c

    const/4 v7, 0x1

    :goto_15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    if-eqz v7, :cond_3e

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)I

    move-result v3

    :goto_21
    if-eqz v7, :cond_45

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)I

    move-result v4

    :goto_29
    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

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

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setTime(II)V

    :cond_9
    return-void
.end method
