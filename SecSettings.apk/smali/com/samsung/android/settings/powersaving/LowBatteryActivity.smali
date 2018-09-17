.class public Lcom/samsung/android/settings/powersaving/LowBatteryActivity;
.super Landroid/app/Activity;
.source "LowBatteryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;,
        Lcom/samsung/android/settings/powersaving/LowBatteryActivity$BatteryPhase;,
        Lcom/samsung/android/settings/powersaving/LowBatteryActivity$BatteryPluggedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableTime:I

.field private mBatteryLevel:I

.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPercentInCircleTv:Landroid/widget/TextView;

.field private mBatteryPercentSymbolInCircleTv:Landroid/widget/TextView;

.field private mBatteryPluggedState:I

.field private mButtonBackground:Landroid/widget/LinearLayout;

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mExtendedBatteryTime:I

.field private mIsBatteryStatusCharging:Z

.field private mIsBatteryStatusUnknown:Z

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mMaxButton:Landroid/widget/LinearLayout;

.field private mMaxTextCust:Landroid/widget/TextView;

.field private mMaxTextMain:Landroid/widget/TextView;

.field private mMaxTextSub:Landroid/widget/TextView;

.field private mMidButton:Landroid/widget/LinearLayout;

.field private mMidTextCust:Landroid/widget/TextView;

.field private mMidTextMain:Landroid/widget/TextView;

.field private mMidTextSub:Landroid/widget/TextView;

.field private mOffButton:Landroid/widget/LinearLayout;

.field private mOffTextMain:Landroid/widget/TextView;

.field private mOffTextSub:Landroid/widget/TextView;

.field private mRemainTimeInCircleTv:Landroid/widget/TextView;

.field private mWarningDesc:Landroid/widget/TextView;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPluggedState:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mIsBatteryStatusCharging:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mIsBatteryStatusUnknown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)I
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updateBatteryStatus()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    new-instance v0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;-><init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getCurrentPowerMode()I
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_22

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_24

    const/4 v2, 0x1

    :goto_1e
    if-eqz v2, :cond_26

    const/4 v1, 0x2

    :cond_21
    :goto_21
    return v1

    :cond_22
    const/4 v0, 0x0

    goto :goto_10

    :cond_24
    const/4 v2, 0x0

    goto :goto_1e

    :cond_26
    if-nez v2, :cond_21

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    goto :goto_21
.end method

.method private registerBatteryStatusReceiver()V
    .registers 3

    new-instance v1, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$2;-><init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerContentObserver()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setBatteryStatus()V
    .registers 8

    const v4, 0x7f0700b6

    const v3, 0x7f0700b5

    const v6, 0x7f0700b3

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    if-gtz v0, :cond_45

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v2, 0x7f120332

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_42
    iput v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mAvailableTime:I

    return-void

    :cond_45
    iget v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_57

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v2, 0x7f0601e5

    invoke-static {p0, v0, v3, v4, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    :cond_57
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v2, 0x7f0601e7

    invoke-static {p0, v0, v3, v4, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42
.end method

.method private setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v5, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_da

    :goto_7
    if-eqz v2, :cond_19

    iget v3, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    if-gt v3, v5, :cond_9d

    const v3, 0x7f06015e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_19
    :goto_19
    if-eqz v1, :cond_2b

    if-eqz p3, :cond_cb

    if-eqz p2, :cond_ab

    const v3, 0x7f0601b5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2b
    :goto_2b
    return-object v0

    :pswitch_2c
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08058f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a0491

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0a0492

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_7

    :pswitch_48
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08058e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a015c

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0a015d

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_7

    :pswitch_64
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080590

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a0706

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0a0707

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_7

    :pswitch_80
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08058d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a0117

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0a0118

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_7

    :cond_9d
    const v3, 0x7f060162

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_19

    :cond_ab
    iget v3, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    if-gt v3, v5, :cond_bd

    const v3, 0x7f06015b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2b

    :cond_bd
    const v3, 0x7f06015f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2b

    :cond_cb
    const v3, 0x7f0601ae

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2b

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_48
        :pswitch_64
        :pswitch_80
    .end packed-switch
.end method

.method private unregisterContentObserver()V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterReceivers()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_9
    return-void
.end method

.method private updateBatteryStatus()V
    .registers 8

    const/4 v6, 0x0

    const v5, 0x7f0601e7

    const v4, 0x7f0601e5

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBatteryStatus()V

    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_5e

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v6}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    const v2, 0x7f1210e8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentSymbolInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_56
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    return-void

    :cond_5e
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v6}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    const v2, 0x7f1210e6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentSymbolInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_56
.end method

.method private updatePowerSavingButton(I)V
    .registers 14

    const v11, 0x7f0601b4

    const/16 v7, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    const/4 v8, 0x3

    invoke-direct {p0, v8, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-ne p1, v10, :cond_1ae

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_185

    invoke-direct {p0, v6, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2b
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_18b

    move v5, v6

    :goto_52
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_18e

    invoke-direct {p0, v10, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_5d
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v8, 0x7f0601b6

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v8, 0x7f0601b6

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_194

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f06015d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f06015c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_9e
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a3
    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    invoke-static {p0, v6, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v3

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    invoke-static {p0, v9, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v2

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    iget v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mExtendedBatteryTime:I

    invoke-static {p0, v10, v5, v8}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;III)I

    move-result v1

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v5, 0x7f120542

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v3, :cond_30a

    if-eqz p1, :cond_30a

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_df
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v5, 0x7f120540

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v2, :cond_311

    if-eq p1, v9, :cond_311

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_103
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v5, 0x7f120547

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_318

    if-eq p1, v10, :cond_318

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_127
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_31f

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_16b
    sget-object v5, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePowerSavingButton, mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_185
    invoke-direct {p0, v10, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_2b

    :cond_18b
    move v5, v7

    goto/16 :goto_52

    :cond_18e
    invoke-direct {p0, v6, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_5d

    :cond_194
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f060161

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f060160

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_9e

    :cond_1ae
    if-ne p1, v9, :cond_257

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_232

    move v5, v6

    :goto_1dd
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_234

    invoke-direct {p0, v10, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1e8
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v8, 0x7f0601b6

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v8, 0x7f0601b6

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_239

    invoke-direct {p0, v6, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_20b
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_23e

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f06015d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f06015c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_22b
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a3

    :cond_232
    move v5, v7

    goto :goto_1dd

    :cond_234
    invoke-direct {p0, v6, v9, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1e8

    :cond_239
    invoke-direct {p0, v10, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_20b

    :cond_23e
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f060161

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f060160

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_22b

    :cond_257
    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2ce

    invoke-direct {p0, v10, v9, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_25f
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-direct {p0, v9, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_2d3

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f06015d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f06015c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_29a
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2ec

    invoke-direct {p0, v6, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_2a7
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryLevel:I

    const/4 v8, 0x5

    if-gt v5, v8, :cond_2f1

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f06015d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f06015c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2c7
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a3

    :cond_2ce
    invoke-direct {p0, v6, v9, v9}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_25f

    :cond_2d3
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v8, 0x7f060161

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v8, 0x7f060160

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_29a

    :cond_2ec
    invoke-direct {p0, v10, v6, v6}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2a7

    :cond_2f1
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v8, 0x7f060161

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v8, 0x7f060160

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2c7

    :cond_30a
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_df

    :cond_311
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_103

    :cond_318
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_127

    :cond_31f
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_16b
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    :cond_8
    :goto_8
    return-void

    :sswitch_9
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "LowBattery"

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_8

    :sswitch_16
    const-string/jumbo v1, "LowBattery"

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_8

    :sswitch_1e
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMDialogActivity(Landroid/content/Context;I)V

    goto :goto_8

    nop

    :sswitch_data_24
    .sparse-switch
        0x7f0a069f -> :sswitch_1e
        0x7f0a06a3 -> :sswitch_16
        0x7f0a06a7 -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d0188

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setContentView(I)V

    const v1, 0x7f0a017b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const v1, 0x7f0a00d9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    const v1, 0x7f0a00da

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mBatteryPercentSymbolInCircleTv:Landroid/widget/TextView;

    const v1, 0x7f0a06df

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v1, 0x7f0a095a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mWarningDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v1

    if-eqz v1, :cond_51

    const v1, 0x7f0a0183

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_51
    const v1, 0x7f0a06af

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mButtonBackground:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v3, v3}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->setBtnBgColorFilter(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a06a7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0a06a3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0a069f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxButton:Landroid/widget/LinearLayout;

    const v1, 0x7f0a06a8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    const v1, 0x7f0a06a9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextSub:Landroid/widget/TextView;

    const v1, 0x7f0a06a5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    const v1, 0x7f0a06a6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextSub:Landroid/widget/TextView;

    const v1, 0x7f0a06a4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextCust:Landroid/widget/TextView;

    const v1, 0x7f0a06a1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextMain:Landroid/widget/TextView;

    const v1, 0x7f0a06a2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextSub:Landroid/widget/TextView;

    const v1, 0x7f0a06a0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMaxTextCust:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120542

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120540

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidTextMain:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120547

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mOffButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mMidButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070553

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07054e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterContentObserver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->unregisterReceivers()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerContentObserver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->registerBatteryStatusReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getCurrentPowerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updatePowerSavingButton(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->updateBatteryStatus()V

    return-void
.end method
