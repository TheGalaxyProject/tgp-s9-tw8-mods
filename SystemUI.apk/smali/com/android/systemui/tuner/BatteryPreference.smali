.class public Lcom/android/systemui/tuner/BatteryPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "BatteryPreference.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mBattery:Ljava/lang/String;

.field private mBatteryEnabled:Z

.field private mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPercentage:Z

.field private mHasSetValue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x10409d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "percent"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "default"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "disabled"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/BatteryPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v7/preference/DropDownPreference;->onAttached()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/BatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "status_bar_show_battery_percent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasPercentage:Z

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "icon_blacklist"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void

    :cond_2c
    move v0, v2

    goto :goto_17
.end method

.method public onDetached()V
    .registers 2

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    invoke-super {p0}, Landroid/support/v7/preference/DropDownPreference;->onDetached()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBatteryEnabled:Z

    :cond_1b
    iget-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasSetValue:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasSetValue:Z

    iget-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBatteryEnabled:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasPercentage:Z

    if-eqz v0, :cond_31

    const-string/jumbo v0, "percent"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/BatteryPreference;->setValue(Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    iget-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBatteryEnabled:Z

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/BatteryPreference;->setValue(Ljava/lang/String;)V

    goto :goto_30

    :cond_3c
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/BatteryPreference;->setValue(Ljava/lang/String;)V

    goto :goto_30
.end method

.method protected persistString(Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x1

    const-string/jumbo v1, "percent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/BatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0xed

    invoke-static {v1, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/BatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "status_bar_show_battery_percent"

    if-eqz v0, :cond_4a

    move v1, v2

    :goto_1f
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "disabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_32
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "icon_blacklist"

    const-string/jumbo v4, ","

    iget-object v5, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4a
    const/4 v1, 0x0

    goto :goto_1f

    :cond_4c
    iget-object v1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_32
.end method