.class public Lcom/android/settings/widget/SecIntervalSeekbarPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "SecIntervalSeekbarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;,
        Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;
    }
.end annotation


# instance fields
.field private fadeIn:Landroid/view/animation/AlphaAnimation;

.field private fadeOut:Landroid/view/animation/AlphaAnimation;

.field private mBottomCurrentText:Ljava/lang/String;

.field private mBottomMaxTextView:Landroid/widget/TextView;

.field private mBottomMediumTextView:Landroid/widget/TextView;

.field private mBottomMediumTextView1:Landroid/widget/TextView;

.field private mBottomMediumTextView2:Landroid/widget/TextView;

.field private mBottomMediumTextView3:Landroid/widget/TextView;

.field private mBottomMinText:Ljava/lang/String;

.field private mBottomMinTextView:Landroid/widget/TextView;

.field private mBottomSupportMediumText:Z

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mMax:I

.field private mProgress:I

.field private mSetProgressChange:Z

.field private mSupportMediumText:Z

.field private mTopMaxText:Landroid/text/SpannableString;

.field private mTopMaxTextView:Landroid/widget/TextView;

.field private mTopMediumText:Landroid/text/SpannableString;

.field private mTopMediumTextView:Landroid/widget/TextView;

.field private mTopMediumTextView1:Landroid/widget/TextView;

.field private mTopMediumTextView2:Landroid/widget/TextView;

.field private mTopMediumTextView3:Landroid/widget/TextView;

.field private mTopMinText:Landroid/text/SpannableString;

.field private mTopMinTextView:Landroid/widget/TextView;

.field private mTrackingTouch:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/view/animation/AlphaAnimation;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    new-instance v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$1;-><init>(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)V

    iput-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    const v0, 0x7f0d01e5

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .registers 4

    const/16 v2, 0x3e8

    const/16 v1, 0x3e9

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isBrightnessSeekBar()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_25

    :cond_34
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_25
.end method

.method public fadeInOutAnim()V
    .registers 9

    const-wide/16 v6, 0x14d

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->cancelAnim()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$2;-><init>(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isBrightnessSeekBar()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3f
    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$3;-><init>(Lcom/android/settings/widget/SecIntervalSeekbarPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public getProgress()I
    .registers 2

    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    return v0
.end method

.method public isBrightnessSeekBar()Z
    .registers 3

    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isFadeInOutRunning()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 10

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a0785

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v2, 0x7f0a0782

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    const v2, 0x7f0a052b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a052c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a050e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a050f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a0510

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a0512

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a0513

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a0514

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0a050a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_177

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eqz v2, :cond_177

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    :goto_ff
    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    if-eqz v2, :cond_1a4

    move v2, v3

    :goto_106
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    if-eqz v2, :cond_1a7

    move v2, v3

    :goto_117
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0509

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxText:Landroid/text/SpannableString;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_14d

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    :cond_14d
    iget-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    if-nez v2, :cond_1aa

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isFadeInOutRunning()Z

    move-result v2

    if-nez v2, :cond_16c

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isBrightnessSeekBar()Z

    move-result v2

    if-eqz v2, :cond_162

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_162
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_16c
    :goto_16c
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_177
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v5, v5, 0x2

    if-le v2, v5, :cond_18f

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-eq v2, v5, :cond_18f

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto/16 :goto_ff

    :cond_18f
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v5, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-ne v2, v5, :cond_19f

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    :goto_199
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    goto/16 :goto_ff

    :cond_19f
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto :goto_199

    :cond_1a4
    move v2, v4

    goto/16 :goto_106

    :cond_1a7
    move v2, v4

    goto/16 :goto_117

    :cond_1aa
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeInOutAnim()V

    iput-boolean v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    goto :goto_16c
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
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_68

    const/16 v1, 0x51

    if-eq p2, v1, :cond_14

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1e

    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    return v2

    :cond_1e
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    return v2

    :cond_2c
    const/16 v1, 0x15

    if-ne p2, v1, :cond_49

    if-nez v0, :cond_33

    return v2

    :cond_33
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    :cond_48
    return v2

    :cond_49
    const/16 v1, 0x16

    if-ne p2, v1, :cond_68

    iget v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-ne v0, v1, :cond_52

    return v2

    :cond_52
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    :cond_67
    return v2

    :cond_68
    return v3
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    const/4 v2, 0x4

    if-eqz p3, :cond_28

    iget-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTrackingTouch:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->cancelAnim()V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_18
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_28
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_10
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;

    invoke-virtual {v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/SecPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v1, v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->max:I

    iput v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    new-instance v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iput v2, v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->progress:I

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    iput v2, v0, Lcom/android/settings/widget/SecIntervalSeekbarPreference$SavedState;->max:I

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    return-void

    :cond_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->cancelAnim()V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eq v0, v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeInOutAnim()V

    iput-boolean v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    return-void
.end method

.method public setBottomText(ILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    packed-switch p1, :pswitch_data_7a

    :cond_e
    :goto_e
    return-void

    :pswitch_f
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMinText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :pswitch_1d
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_49

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-eq v2, v3, :cond_49

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView3:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    :goto_35
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    if-eqz v3, :cond_78

    :goto_3b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomCurrentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->fadeInOutAnim()V

    goto :goto_e

    :cond_49
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_5a

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView1:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto :goto_35

    :cond_5a
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_67

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView2:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto :goto_35

    :cond_67
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-ne v2, v3, :cond_72

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMaxTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    goto :goto_35

    :cond_72
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35

    :cond_78
    move v0, v1

    goto :goto_3b

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1d
    .end packed-switch
.end method

.method public setMax(I)V
    .registers 3

    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .registers 4

    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-le p1, v0, :cond_6

    iget p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    :cond_6
    if-gez p1, :cond_9

    const/4 p1, 0x0

    :cond_9
    iget v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eq p1, v0, :cond_17

    iput p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->persistInt(I)Z

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->notifyChanged()V

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSetProgressChange:Z

    return-void
.end method

.method public setTopText(ILandroid/text/SpannableString;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    packed-switch p1, :pswitch_data_7a

    :cond_e
    :goto_e
    return-void

    :pswitch_f
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinText:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMinText:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :pswitch_1d
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_46

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    if-eq v2, v3, :cond_46

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView3:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    :goto_35
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    if-eqz v3, :cond_6a

    :goto_3b
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumText:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_46
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_57

    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView1:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    goto :goto_35

    :cond_57
    iget v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    iget v3, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mMax:I

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_64

    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView2:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    goto :goto_35

    :cond_64
    iget-object v2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMediumTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35

    :cond_6a
    move v0, v1

    goto :goto_3b

    :pswitch_6c
    iput-object p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxText:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mTopMaxText:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1d
        :pswitch_6c
    .end packed-switch
.end method

.method public setTopText(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    return-void
.end method

.method public supportMediumText(ZZ)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mSupportMediumText:Z

    iput-boolean p2, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mBottomSupportMediumText:Z

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    if-eq v0, v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(IZ)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget v1, p0, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_16
.end method
