.class public Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "DisplayTemperatureSeekBarPreferenceRed.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static sColorBalanceRed:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFocusable:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v5, 0x7f0d0225

    const v6, 0x7f0a0782

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v3, 0x0

    const v5, 0x7f0d0225

    const v6, 0x7f0a0782

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 8

    const v5, 0x7f0600eb

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v3, 0x7f0a0782

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v1, v3, :cond_14

    return-void

    :cond_14
    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v3, -0x10000

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_red"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, 0xb

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    if-nez p2, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1e
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_18
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0432

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->sColorBalanceRed:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->sColorBalanceRed:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_c
    return-void
.end method

.method public updateSeekbar()V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->notifyChanged()V

    return-void
.end method