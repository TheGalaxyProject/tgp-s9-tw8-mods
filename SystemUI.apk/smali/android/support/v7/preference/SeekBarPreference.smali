.class public Landroid/support/v7/preference/SeekBarPreference;
.super Landroid/support/v7/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SeekBarPreference$1;,
        Landroid/support/v7/preference/SeekBarPreference$2;,
        Landroid/support/v7/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAdjustable:Z

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field private mTrackingTouch:Z


# direct methods
.method static synthetic -get0(Landroid/support/v7/preference/SeekBarPreference;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method static synthetic -get1(Landroid/support/v7/preference/SeekBarPreference;)I
    .registers 2

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    return v0
.end method

.method static synthetic -get2(Landroid/support/v7/preference/SeekBarPreference;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v7/preference/SeekBarPreference;)I
    .registers 2

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method static synthetic -get4(Landroid/support/v7/preference/SeekBarPreference;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return v0
.end method

.method static synthetic -set0(Landroid/support/v7/preference/SeekBarPreference;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v7/preference/SeekBarPreference;Landroid/widget/SeekBar;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroid/support/v7/preference/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$1;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/SeekBarPreference$1;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$2;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/SeekBarPreference$2;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    sget-object v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_min:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setMax(I)V

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_adjustable:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setValueInternal(IZ)V
    .registers 5

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_6

    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    :cond_6
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_c

    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    :cond_c
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_29

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_29

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_29
    return-void
.end method

.method private syncValueInternal(Landroid/widget/SeekBar;)V
    .registers 5

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int v0, v1, v2

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1a
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v0, Landroid/support/v7/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    sget v0, Landroid/support/v7/preference/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_29
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_41

    const-string/jumbo v0, "SeekBarPreference"

    const-string/jumbo v1, "SeekBar view is null in onBindViewHolder."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    goto :goto_29

    :cond_41
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eqz v0, :cond_80

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    :goto_5d
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_76

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_76
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void

    :cond_80
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    goto :goto_5d
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

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_10
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    iput v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v1, v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    iput v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    iget v1, v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iput v2, v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    iput v2, v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_c

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_8
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SeekBarPreference;->setValue(I)V

    return-void

    :cond_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8
.end method

.method public final setMax(I)V
    .registers 3

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_6

    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    :cond_6
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_f

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_f
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .registers 4

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_16

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_16
    return-void
.end method

.method public setValue(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    return-void
.end method
