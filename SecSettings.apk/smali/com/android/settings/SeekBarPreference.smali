.class public Lcom/android/settings/SeekBarPreference;
.super Landroid/support/v7/preference/SecRestrictedPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mContinuousUpdates:Z

.field private mDefaultProgress:I

.field private mMax:I

.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const v0, 0x7f040174

    const v1, 0x11100e9

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SecRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/SeekBarPreference;->mDefaultProgress:I

    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x10900cf

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/android/settings/SeekBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method private setProgress(IZ)V
    .registers 4

    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_6

    iget p1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    :cond_6
    if-gez p1, :cond_9

    const/4 p1, 0x0

    :cond_9
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_17

    iput p1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    :cond_17
    return-void
.end method


# virtual methods
.method public getProgress()I
    .registers 2

    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecRestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x102045f

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    instance-of v0, v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    check-cast v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mDefaultProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    :cond_3e
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
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    const v1, 0x102045f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-nez v0, :cond_14

    return v2

    :cond_14
    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    if-eqz p3, :cond_f

    iget-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mContinuousUpdates:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mTrackingTouch:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_f
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecRestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_10
    move-object v0, p1

    check-cast v0, Lcom/android/settings/SeekBarPreference$SavedState;

    invoke-virtual {v0}, Lcom/android/settings/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/SecRestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/settings/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    iget v1, v0, Lcom/android/settings/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/support/v7/preference/SecRestrictedPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    new-instance v0, Lcom/android/settings/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/android/settings/SeekBarPreference$SavedState;->progress:I

    iget v2, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    iput v2, v0, Lcom/android/settings/SeekBarPreference$SavedState;->max:I

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

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

    iput-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_e
    return-void
.end method

.method public setContinuousUpdates(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/SeekBarPreference;->mContinuousUpdates:Z

    return-void
.end method

.method public setMax(I)V
    .registers 3

    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(IZ)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_16
.end method
