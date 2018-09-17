.class public Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingValueFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$1;,
        Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;
    }
.end annotation


# instance fields
.field private delta:I

.field private mAD:Landroid/app/AlertDialog;

.field private mAODEventId:I

.field private mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

.field private mApplyEventId:I

.field private mAvailableTime:I

.field private mBatteryLevel:I

.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPercentInCircleTv:Landroid/widget/TextView;

.field private mBgDataEventId:I

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mBottomDescriptionTv:Landroid/widget/TextView;

.field private mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

.field private mBrightnessSeekbarEventId:I

.field private mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCancelEventId:I

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFromWhere:Ljava/lang/String;

.field private mPowerSavingMode:I

.field private mPreviousAodMode:I

.field private mPreviousBrightnessStatus:I

.field private mPreviousDataRestriction:I

.field private mPreviousNetworkRestriction:I

.field private mPreviousPerformance:I

.field private mPreviousPowerSavingMode:I

.field private mPreviousScreenStatus:I

.field private mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetButton:Landroid/widget/TextView;

.field private mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mResetEventId:I

.field private mResetTitle:Landroid/widget/TextView;

.field private mResolutionSeekbarEventId:I

.field private mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

.field private mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenId:I

.field private mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

.field private mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

.field private mSpeedLimiterEventId:I

.field private mTopDescriptionTv:Landroid/widget/TextView;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAODEventId:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetEventId:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResolutionSeekbarEventId:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenId:I

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSpeedLimiterEventId:I

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mApplyEventId:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBgDataEventId:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessSeekbarEventId:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCancelEventId:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->cancelPsmEditValue()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->enableResetButton(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->resetEditValue()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateBatteryStatus()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mFromWhere:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private cancelPsmEditValue()V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    if-eq v0, v1, :cond_1c

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v1, v1, -0x50

    div-int/lit8 v1, v1, 0x5

    if-eq v0, v1, :cond_42

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v1, v1, -0x50

    div-int/lit8 v1, v1, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v4, v4, -0x50

    div-int/lit8 v4, v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    :cond_42
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_bd

    const/4 v0, 0x1

    :goto_4f
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    if-eq v0, v1, :cond_5d

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    if-ne v1, v2, :cond_bf

    move v1, v2

    :goto_5a
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_5d
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c1

    const/4 v0, 0x0

    :goto_6a
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    if-eq v0, v1, :cond_78

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    if-eq v1, v2, :cond_c3

    move v1, v2

    :goto_75
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_78
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c5

    const/4 v0, 0x1

    :goto_85
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    if-eq v0, v1, :cond_93

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    if-ne v1, v2, :cond_c7

    move v1, v2

    :goto_90
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_93
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c9

    const/4 v0, 0x0

    :goto_a8
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    if-eq v0, v1, :cond_b5

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    if-eq v4, v2, :cond_cb

    :goto_b2
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_b5
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->resetPSMValue(Landroid/content/Context;I)V

    return-void

    :cond_bd
    const/4 v0, 0x0

    goto :goto_4f

    :cond_bf
    move v1, v3

    goto :goto_5a

    :cond_c1
    const/4 v0, 0x1

    goto :goto_6a

    :cond_c3
    move v1, v3

    goto :goto_75

    :cond_c5
    const/4 v0, 0x0

    goto :goto_85

    :cond_c7
    move v1, v3

    goto :goto_90

    :cond_c9
    const/4 v0, 0x1

    goto :goto_a8

    :cond_cb
    move v2, v3

    goto :goto_b2
.end method

.method private combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .registers 8

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070604

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070602

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private enableResetButton(Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_e
.end method

.method private initHeaderView()V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->registerBatteryStatusReceiver()V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d01e7

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a017b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isUrduLanguage()Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_2a
    const v3, 0x7f0a0181

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_34
    const v3, 0x7f0a00d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    const v3, 0x7f0a0242

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    const v3, 0x7f0a0243

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setBatteryHeaderViewsVisibility()V

    const v3, 0x7f0a08bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v3, v8, :cond_fb

    const v3, 0x7f1214d2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_94
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetTitle:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    const v3, 0x7f0a06f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    const v4, 0x7f08074a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_c8
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$9;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isChangedValue(Landroid/content/Context;I)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->enableResetButton(Z)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$10;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Lcom/android/settings/applications/LayoutPreference;->setSelectable(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setHeaderView(Lcom/android/settings/applications/LayoutPreference;)V

    return-void

    :cond_fb
    const v3, 0x7f1214d3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_94
.end method

.method private initPreference()V
    .registers 10

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "PowerSavingValueFragment"

    const-string/jumbo v4, "PSM initPreference"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "restricted_device_performance"

    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v1, v4, v8, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    const-string/jumbo v1, "psm_restricted_device"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    new-array v5, v2, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v2, :cond_125

    const/16 v1, 0x46

    :goto_36
    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const v1, 0x7f121595

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPerformance:I

    if-ne v1, v2, :cond_129

    move v1, v2

    :goto_56
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$5;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "psm_restricted_bgdata"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_145

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$6;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v2, :cond_12c

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "low_power_back_data_off"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    :goto_93
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    if-nez v1, :cond_13d

    move v1, v2

    :goto_9a
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_140

    const v1, 0x7f121592

    :goto_aa
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_ad
    const-string/jumbo v1, "psm_restricted_network"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_152

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$7;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "psm_network_power_saving"

    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v1, v4, v8, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousNetworkRestriction:I

    if-ne v1, v2, :cond_150

    move v1, v2

    :goto_de
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_e1
    const-string/jumbo v1, "psm_aod_disable"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15e

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "psm_always_on_display_mode"

    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v1, v4, v8, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$8;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousAodMode:I

    if-ne v4, v2, :cond_15c

    :goto_111
    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v8, :cond_124

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f121582

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_124
    :goto_124
    return-void

    :cond_125
    const/16 v1, 0x3c

    goto/16 :goto_36

    :cond_129
    move v1, v3

    goto/16 :goto_56

    :cond_12c
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "ultra_power_mode_back_data_off"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousDataRestriction:I

    goto/16 :goto_93

    :cond_13d
    move v1, v3

    goto/16 :goto_9a

    :cond_140
    const v1, 0x7f121591

    goto/16 :goto_aa

    :cond_145
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_ad

    :cond_150
    move v1, v3

    goto :goto_de

    :cond_152
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_e1

    :cond_15c
    move v3, v2

    goto :goto_111

    :cond_15e
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_124
.end method

.method private onBrightnessSetText(I)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    mul-int/lit8 v4, p1, 0x5

    add-int/lit8 v4, v4, 0x50

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    add-int/lit8 v4, p1, 0x7

    invoke-static {v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v4

    sub-int v1, v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    packed-switch p1, :pswitch_data_80

    :pswitch_2a
    mul-int/lit8 v3, p1, 0x5

    add-int/lit8 v3, v3, 0x50

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v3

    if-eqz v3, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4f
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v0}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    :goto_5e
    return-void

    :pswitch_5f
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v6, v6}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    goto :goto_5e

    :pswitch_6d
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v6, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v3, v5, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto :goto_5e

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_2a
        :pswitch_6d
    .end packed-switch
.end method

.method private onScreenResolutionSetText(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    add-int/lit8 v3, p1, 0xc

    invoke-static {v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_2e

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v2, v4, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v2, v4, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    :goto_27
    return-void

    :pswitch_28
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto :goto_27

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_28
    .end packed-switch
.end method

.method private registerBatteryStatusReceiver()V
    .registers 4

    new-instance v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$13;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetEditValue()V
    .registers 8

    const/16 v6, 0x50

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v0, v3, :cond_8c

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_1f

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "limit_brightness_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_35

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_resolution_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_35
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "restricted_device_performance"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_48
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power_back_data_off"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5d
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_network_power_saving"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_70
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_always_on_display_mode"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_a2

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onBrightnessSetText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "limit_brightness_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_a2
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_b8

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->onScreenResolutionSetText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_resolution_state"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_b8
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPsmRestrictedDevice:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "restricted_device_performance"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_cb
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictBackData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_power_mode_back_data_off"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mRestrictNetworkUsage:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_network_power_saving"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_f3
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAlwaysOnDisplay:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psm_always_on_display_mode"

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-static {v0, v1, v5, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    goto/16 :goto_8b
.end method

.method private setBatteryHeaderViewsVisibility()V
    .registers 13

    const-wide/16 v10, 0x1f4

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    iget v5, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getColorStateByLevel(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v3, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v7, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setBatteryStatus()V
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mTopDescriptionTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f12031c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->updateEstimatedTimeonHeader()V

    return-void
.end method

.method private setEstimatedTimeTextSize(I)V
    .registers 8

    const v5, 0x7f0705f1

    new-instance v1, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;-><init>(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0705f2

    const/4 v4, -0x1

    invoke-static {v2, p1, v5, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->setMaxTextSize(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateBatteryStatus()V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setBatteryStatus()V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAvailableTime:I

    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryPercentInCircleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getColorStateByLevel(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x34

    return v0
.end method

.method public initSeekbar()V
    .registers 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPowerSavingMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    const-string/jumbo v25, "secbrightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isCMCCupsm(I)Z

    move-result v25

    if-nez v25, :cond_537

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const v26, 0x7f120791

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setMax(I)V

    const/16 v12, 0x5a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v25, v0

    const/16 v26, 0x50

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_87

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v25, v0

    const/16 v26, 0x5a

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_519

    :cond_87
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v25, v0

    const/16 v26, 0x5a

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_50a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    :goto_a2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    move/from16 v25, v0

    rsub-int/lit8 v25, v25, 0x50

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->delta:I

    move/from16 v25, v0

    rsub-int/lit8 v25, v25, 0x50

    div-int/lit8 v25, v25, 0x2

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f121cb3

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v25

    if-eqz v25, :cond_111

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\u200e"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\u200e"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\u200e"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x7

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v26

    sub-int v14, v25, v26

    if-lez v14, :cond_528

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v14, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    :goto_179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x50

    div-int/lit8 v26, v26, 0x5

    add-int/lit8 v26, v26, 0x7

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v26

    sub-int v13, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v13, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousBrightnessStatus:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x50

    div-int/lit8 v26, v26, 0x5

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    new-instance v26, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1e3
    :goto_1e3
    const-string/jumbo v25, "psm_screen_seekbar"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMultiResolution()Z

    move-result v25

    if-eqz v25, :cond_66c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_66c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "screen_resolution_state"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setMax(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move/from16 v25, v0

    if-eqz v25, :cond_54e

    const/16 v25, 0x1

    :goto_242
    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f121789

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f121787

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f12178d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getDisplayPxSize()Landroid/graphics/Point;

    move-result-object v16

    if-eqz v16, :cond_63a

    const-string/jumbo v25, "PowerSavingValueFragment"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Current display px size x:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", y:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v17, v25, v26

    const v25, 0x3fe38e39

    cmpl-float v25, v17, v25

    if-lez v25, :cond_308

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "+"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "+"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "+"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v9

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_552

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_552

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe8000000000000L    # 0.75

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe8000000000000L    # 0.75

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :goto_411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v26

    const/16 v27, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0xc

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v26

    sub-int v20, v25, v26

    if-lez v20, :cond_65d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    :goto_499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0xc

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v26

    sub-int v18, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const v26, 0x7f12159a

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousScreenStatus:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    new-instance v26, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_509
    :goto_509
    return-void

    :cond_50a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto/16 :goto_a2

    :cond_519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto/16 :goto_a2

    :cond_528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto/16 :goto_179

    :cond_537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1e3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1e3

    :cond_54e
    const/16 v25, 0x0

    goto/16 :goto_242

    :cond_552
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe8000000000000L    # 0.75

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe8000000000000L    # 0.75

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_411

    :cond_63a
    const v25, 0x7f12178a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v25, 0x7f121788

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v25, 0x7f12178e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_411

    :cond_65d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    goto/16 :goto_499

    :cond_66c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_509

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_509
.end method

.method initswitchBtn()V
    .registers 13

    const v11, 0x7f080747

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d00a7

    invoke-virtual {v6, v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d4

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const v6, 0x7f0a01e0

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v6, 0x7f080127

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_3b
    const v6, 0x7f0a0517

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    new-instance v7, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    const v6, 0x7f0a0518

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    const v7, 0x7f120600

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    iget v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d5

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d5

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_99
    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_bb

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_bb
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    invoke-virtual {v5, v10, v10}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_d4
    return-void

    :cond_d5
    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v7, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$12;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$12;-><init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_99
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    const v1, 0x7f080747

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    const v1, 0x7f08074a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setHasOptionsMenu(Z)V

    const v1, 0x7f1500b5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_61

    const-string/jumbo v1, "battery_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    const-string/jumbo v1, "fromWhere"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mFromWhere:Ljava/lang/String;

    const-string/jumbo v1, "PowerSavingValueFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPowerSavingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    if-ne v1, v4, :cond_e5

    const-string/jumbo v1, "PowerSavingModePopupCustomize"

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b040e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenId:I

    :cond_61
    :goto_61
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0409

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mApplyEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b040c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mCancelEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b040f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResetEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b040b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessSeekbarEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mResolutionSeekbarEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0411

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mSpeedLimiterEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b040a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBgDataEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0408

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mAODEventId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initHeaderView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initSeekbar()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initPreference()V

    new-instance v1, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPreviousPowerSavingMode:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_e5
    const-string/jumbo v1, "UltraPowerSavingModePopupCustomize"

    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b040d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenId:I

    goto/16 :goto_61
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->initswitchBtn()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v0, :cond_13

    const-string/jumbo v0, "PowerSavingValueFragment"

    const-string/jumbo v1, "PSM onPause - brightness rollback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    :cond_13
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBrightnessManager:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "limit_brightness_state"

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    const/4 v4, 0x2

    invoke-static {v1, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    const v2, 0x7f120cda

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12013e

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->cancelPsmEditValue()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->finish()V

    :goto_40
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void

    :cond_44
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mScreenId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    goto :goto_40
.end method

.method public onStart()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateEstimatedTimeonHeader()V
    .registers 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mPowerSavingMode:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBatteryLevel:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTIme(Landroid/content/Context;II)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    if-gtz v0, :cond_2c

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->mBottomDescriptionTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2b
    return-void

    :cond_2c
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->setEstimatedTimeTextSize(I)V

    goto :goto_2b
.end method
