.class public Lcom/samsung/android/settings/display/DisplayCustomPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "DisplayCustomPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mSeekBarId:I

.field private mTrackingTouch:Z

.field seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x11100e9

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V
    .registers 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setMax(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput p6, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mSeekBarId:I

    invoke-virtual {p0, p5}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setLayoutResource(I)V

    return-void
.end method

.method private setProgress(IZ)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    if-le p1, v0, :cond_6

    iget p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    :cond_6
    if-gez p1, :cond_9

    const/4 p1, 0x0

    :cond_9
    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq p1, v0, :cond_17

    iput p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->persistInt(I)Z

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->notifyChanged()V

    :cond_17
    return-void
.end method


# virtual methods
.method public getProgress()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mSeekBarId:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_29
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    packed-switch p2, :pswitch_data_18

    :cond_a
    const/4 v0, 0x0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x15
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    if-eqz p3, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_b
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_10
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/SecPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->progress:I

    iput v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    iget v1, v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->max:I

    iput v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    new-instance v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    iput v2, v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->progress:I

    iget v2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    iput v2, v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->max:I

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->getPersistedInt(I)I

    move-result v0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    return-void

    :cond_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq v0, v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_e
    return-void
.end method

.method public setMax(I)V
    .registers 3

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(IZ)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq v0, v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(IZ)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_16
.end method
