.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardDualImageClockView.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private DIGITS:[I

.field private mCacheKey:Ljava/lang/String;

.field private mHomecityAmpmView:Lcom/android/systemui/widget/KeyguardTextClock;

.field private mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

.field private mHomecityHour10th:Landroid/widget/ImageView;

.field private mHomecityHour1th:Landroid/widget/ImageView;

.field private mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

.field private mHomecityMin10th:Landroid/widget/ImageView;

.field private mHomecityMin1th:Landroid/widget/ImageView;

.field private mHomecityTimeImageSet:Landroid/widget/LinearLayout;

.field private mRoamingAmpmView:Lcom/android/systemui/widget/KeyguardTextClock;

.field private mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

.field private mRoamingHour10th:Landroid/widget/ImageView;

.field private mRoamingHour1th:Landroid/widget/ImageView;

.field private mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

.field private mRoamingMin10th:Landroid/widget/ImageView;

.field private mRoamingMin1th:Landroid/widget/ImageView;

.field private mRoamingTimeImageSet:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->DIGITS:[I

    return-void

    nop

    :array_e
    .array-data 4
        0x7f080132
        0x7f080133
        0x7f080134
        0x7f080135
        0x7f080136
        0x7f080137
        0x7f080138
        0x7f080139
        0x7f08013a
        0x7f08013b
    .end array-data
.end method

.method private setDIGITSArrayImage(Landroid/widget/ImageView;I)V
    .registers 8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->DIGITS:[I

    array-length v1, v2

    if-ltz p2, :cond_37

    if-ge p2, v1, :cond_37

    :try_start_8
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->DIGITS:[I

    aget v2, v2, p2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v2, "KeyguardDualImageClockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_37
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->DIGITS:[I

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f
.end method

.method private setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V
    .registers 8

    const/4 v2, 0x0

    if-nez p4, :cond_a

    invoke-direct {p0, p2, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    :goto_9
    return-void

    :cond_a
    rem-int/lit8 v1, p4, 0xa

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    div-int/lit8 v0, p4, 0xa

    if-nez p3, :cond_15

    if-eqz v0, :cond_1c

    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_1c
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9
.end method


# virtual methods
.method public changeHourFormat()V
    .registers 6

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingAmpmView:Lcom/android/systemui/widget/KeyguardTextClock;

    if-eqz v0, :cond_1b

    move v1, v2

    :goto_10
    invoke-virtual {v4, v1}, Lcom/android/systemui/widget/KeyguardTextClock;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityAmpmView:Lcom/android/systemui/widget/KeyguardTextClock;

    if-eqz v0, :cond_1d

    :goto_17
    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/KeyguardTextClock;->setVisibility(I)V

    return-void

    :cond_1b
    move v1, v3

    goto :goto_10

    :cond_1d
    move v2, v3

    goto :goto_17
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f0a0289

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x7f0a028a

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingTimeImageSet:Landroid/widget/LinearLayout;

    const v1, 0x7f0a028b

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour10th:Landroid/widget/ImageView;

    const v1, 0x7f0a028c

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour1th:Landroid/widget/ImageView;

    const v1, 0x7f0a028d

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingMin10th:Landroid/widget/ImageView;

    const v1, 0x7f0a028e

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingMin1th:Landroid/widget/ImageView;

    const v1, 0x7f0a0286

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingAmpmView:Lcom/android/systemui/widget/KeyguardTextClock;

    const v1, 0x7f0a0288

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    const v1, 0x7f0a0267

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x7f0a0268

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityTimeImageSet:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0269

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour10th:Landroid/widget/ImageView;

    const v1, 0x7f0a026a

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour1th:Landroid/widget/ImageView;

    const v1, 0x7f0a026b

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityMin10th:Landroid/widget/ImageView;

    const v1, 0x7f0a026c

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityMin1th:Landroid/widget/ImageView;

    const v1, 0x7f0a0264

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityAmpmView:Lcom/android/systemui/widget/KeyguardTextClock;

    const v1, 0x7f0a0266

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cb

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityAmpmView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    :cond_cb
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_HIDE_TEXT_OF_ROAMING_CLOCK:Z

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d7
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_USE_SKT_TEXT_FOR_HOMECITY_CLOCK:Z

    if-eqz v1, :cond_115

    const-string/jumbo v1, "Asia/Seoul"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    const v3, 0x7f120460

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f2
    return-void

    :cond_f3
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_USE_SKT_TEXT_FOR_ROAMING_CLOCK:Z

    if-eqz v1, :cond_106

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    const v3, 0x7f120462

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d7

    :cond_106
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    const v3, 0x7f120461

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d7

    :cond_115
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    const v3, 0x7f12045f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f2
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v12, 0xa

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v12, 0xb

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const-string/jumbo v12, "KeyguardDualImageClockView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "refreshTime() Roaming >> min:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", hour:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", hour_day:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_fa

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_83
    const/16 v12, 0xc

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v12, 0xb

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string/jumbo v12, "KeyguardDualImageClockView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "refreshTime() Homecity >> min:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", hour:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", hour_day:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_103

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour10th:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour1th:Landroid/widget/ImageView;

    invoke-direct {p0, v12, v13, v7, v10}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour10th:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour1th:Landroid/widget/ImageView;

    invoke-direct {p0, v12, v13, v7, v5}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    :goto_dd
    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingMin1th:Landroid/widget/ImageView;

    rem-int/lit8 v13, v11, 0xa

    invoke-direct {p0, v12, v13}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingMin10th:Landroid/widget/ImageView;

    div-int/lit8 v13, v11, 0xa

    invoke-direct {p0, v12, v13}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityMin1th:Landroid/widget/ImageView;

    rem-int/lit8 v13, v6, 0xa

    invoke-direct {p0, v12, v13}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityMin10th:Landroid/widget/ImageView;

    div-int/lit8 v13, v6, 0xa

    invoke-direct {p0, v12, v13}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    return-void

    :cond_fa
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    goto :goto_83

    :cond_103
    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour10th:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour1th:Landroid/widget/ImageView;

    if-nez v9, :cond_10b

    const/16 v9, 0xc

    :cond_10b
    invoke-direct {p0, v12, v13, v7, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    iget-object v12, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour10th:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour1th:Landroid/widget/ImageView;

    if-nez v4, :cond_116

    const/16 v4, 0xc

    :cond_116
    invoke-direct {p0, v12, v13, v7, v4}, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    goto :goto_dd
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setClockVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingTimeImageSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityTimeImageSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setCoverState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingAmpmView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/systemui/widget/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/systemui/widget/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityAmpmView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/systemui/widget/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/systemui/widget/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method
