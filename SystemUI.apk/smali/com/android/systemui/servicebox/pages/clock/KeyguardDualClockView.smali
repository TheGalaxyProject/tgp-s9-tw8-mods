.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardDualClockView.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mHomecityAmpmView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

.field private mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

.field private mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

.field private mHomecityTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

.field private mRoamingAmpmView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

.field private mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

.field private mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

.field private mRoamingTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public changeHourFormat()V
    .registers 8

    const v4, 0x7f070194

    const v5, 0x7f070192

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    if-eqz v0, :cond_44

    move v1, v2

    :goto_16
    invoke-virtual {v6, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    if-eqz v0, :cond_46

    :goto_1d
    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v1, :cond_43

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v0, :cond_48

    move v1, v4

    :goto_2d
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_4a

    :goto_3c
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTextSize(IF)V

    :cond_43
    return-void

    :cond_44
    move v1, v3

    goto :goto_16

    :cond_46
    move v2, v3

    goto :goto_1d

    :cond_48
    move v1, v5

    goto :goto_2d

    :cond_4a
    move v4, v5

    goto :goto_3c
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f0a0289

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x7f0a0290

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const v1, 0x7f0a0286

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingAmpmView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const v1, 0x7f0a0288

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    const v1, 0x7f0a0267

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x7f0a026e

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const v1, 0x7f0a0264

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const v1, 0x7f0a0266

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    const-string/jumbo v2, "sec-roboto-condensed"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    const-string/jumbo v2, "sec-roboto-condensed"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/KeyguardTextClock;->setAllCaps(Z)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/KeyguardTextClock;->setAllCaps(Z)V

    :cond_8d
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityAmpmView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    :cond_aa
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_HIDE_TEXT_OF_ROAMING_CLOCK:Z

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b6
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_USE_SKT_TEXT_FOR_HOMECITY_CLOCK:Z

    if-eqz v1, :cond_fb

    const-string/jumbo v1, "Asia/Seoul"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    const v3, 0x7f120460

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d1
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v1, :cond_d8

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->changeHourFormat()V

    :cond_d8
    return-void

    :cond_d9
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_USE_SKT_TEXT_FOR_ROAMING_CLOCK:Z

    if-eqz v1, :cond_ec

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    const v3, 0x7f120462

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b6

    :cond_ec
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    const v3, 0x7f120461

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b6

    :cond_fb
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mContext:Landroid/content/Context;

    const v3, 0x7f12045f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d1
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setClockVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityTimeView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    return-void
.end method

.method public setCoverState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/systemui/widget/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/systemui/widget/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method
