.class public Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$4;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$5;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$6;,
        Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;
    }
.end annotation


# static fields
.field private static isAlreadyShownBrightMaxDialog:Z


# instance fields
.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutomaticMode:Z

.field private mBrightnessIconView:Lcom/samsung/android/settings/widget/BrightnessIconView;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mChangeType:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurBrightness:I

.field private mDialogForMaxBrightness:Landroid/app/AlertDialog;

.field private mHBMText:Landroid/widget/TextView;

.field private mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

.field private mInitFinish:Z

.field private mIsFocusable:Z

.field private mIsHBMOnOff:Z

.field mIsLessThanMaxValue:Z

.field private mIsTalkBackEnabled:Z

.field private mMaxBrightness:I

.field private mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOverheatTextview:Landroid/widget/TextView;

.field private mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

.field private mPmsBrightness:I

.field private mPower:Landroid/os/IPowerManager;

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field mSupportAutoBrightnessDetail:Z

.field private mTracking:Z


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mTracking:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    return p0
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessLimit()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12

    const/4 v8, -0x1

    const/4 v3, 0x0

    const v5, 0x7f0d0224

    const v6, 0x7f0a0113

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsTalkBackEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$3;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$4;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$5;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$6;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$7;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v7}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    const-string/jumbo v0, "BrightnessSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "min Brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isSupportAutoBrightnessDetail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_brightness_mode_pms_enter"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c9

    const/4 v3, 0x1

    :cond_c9
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_d6

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    :cond_d6
    return-void
.end method

.method private getBrightness()I
    .registers 7

    const/4 v5, 0x0

    const/16 v4, 0x64

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    if-gez v2, :cond_5d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_3b

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "brightness_pms_marker_screen"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    :goto_22
    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v0

    float-to-int v1, v2

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-ge v1, v2, :cond_3a

    iput-boolean v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    :cond_3a
    return v1

    :cond_3b
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    goto :goto_22

    :cond_4c
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    goto :goto_22

    :cond_5d
    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_22
.end method

.method private getBrightnessMode(I)I
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private isFolderClose()Z
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method private isSupportAutoBrightnessDetail()Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :cond_f
    return v0
.end method

.method private setBrightness(I)V
    .registers 8

    const v5, 0x461c4000    # 10000.0f

    :try_start_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    mul-int v3, p1, v1

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v3, v4

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryMarkerScreenBrightnessSettingOverride(I)V

    :goto_24
    return-void

    :cond_25
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    goto :goto_24

    :catch_2b
    move-exception v0

    goto :goto_24

    :cond_2d
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_5a

    int-to-float v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v3, v4

    const-string/jumbo v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "valf : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, v2}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    goto :goto_24

    :cond_5a
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    mul-int v3, p1, v1

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int p1, v3, v4

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_71} :catch_2b

    goto :goto_24
.end method

.method private setBrightnessByValue(I)V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int/2addr p1, v3

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryMarkerScreenBrightnessSettingOverride(I)V

    :goto_12
    return-void

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    goto :goto_12

    :catch_19
    move-exception v0

    goto :goto_12

    :cond_1b
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_4f

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v3, v4

    const-string/jumbo v3, "BrightnessSeekBarPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "valf : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, v2}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    goto :goto_12

    :cond_4f
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int/2addr p1, v3

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v3, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_57} :catch_19

    goto :goto_12
.end method

.method private setBrightnessLimit()V
    .registers 4

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    return-void
.end method

.method private setMode(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private setValue(I)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessByValue(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    mul-int v2, v0, p1

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    div-int p1, v2, v3

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_59

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFocusChange() mCheckBox.isChecked()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_59

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    :cond_59
    return-void
.end method

.method private showBrightnessAlertDialog()V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120524

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$10;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$11;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateBrightness()V
    .registers 6

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v3, v4

    mul-int v3, v0, v1

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int v0, v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2d
    return-void
.end method

.method private updateDualColorRange(Landroid/widget/SeekBar;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v0, v3, v4

    mul-int/lit8 v3, v0, 0x5a

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v2

    div-int v1, v3, v0

    const-string/jumbo v3, "#f7c0bd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#f1462f"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    return-void
.end method


# virtual methods
.method public brightnessNotifyChange()V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->notifyHierarchyChanged()V

    return-void
.end method

.method public changeSeekbarColor(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    if-nez v0, :cond_45

    const-string/jumbo v0, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_45

    if-eqz p1, :cond_46

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0805ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_45
    :goto_45
    return-void

    :cond_46
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_45
.end method

.method public getInitFinish()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected getSeekBar()Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public hideHbmText()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public isMaxBrightnessDialogShowing()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 12

    const/16 v9, 0x8

    const/4 v8, -0x1

    const v7, 0x7f0a00b6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v4, :cond_24

    move v3, v4

    :goto_f
    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCurBrightness:I

    const v3, 0x7f0a0113

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v2, v3, :cond_26

    return-void

    :cond_24
    move v3, v5

    goto :goto_f

    :cond_26
    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v3, 0x7f0a0114

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    const v3, 0x7f0a03aa

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSoundEffectsEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_12a

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6a
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/BrightnessIconView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/samsung/android/settings/widget/BrightnessIconView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessIconView:Lcom/samsung/android/settings/widget/BrightnessIconView;

    const/16 v6, 0x2710

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/widget/BrightnessIconView;->setMax(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0x2710

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroid/widget/SeekBar;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.settings_preferences"

    const/4 v7, 0x4

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "pref_siop_brightness"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "pref_siop_brightness_change_type"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v6, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMaxBrightnessLimit(II)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d3

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    :cond_d3
    const-string/jumbo v3, "BrightnessSeekBarPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onbindview Utils.isSupportPersonalAutoBrightness() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mAutomaticMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mIsHBMOnOff : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "shown_max_brightness_dialog"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_172

    :goto_11f
    sput-boolean v4, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsTalkBackEnabled:Z

    return-void

    :cond_12a
    const v3, 0x7f0a00b9

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f120269

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v6, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$8;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6a

    :cond_172
    move v4, v5

    goto :goto_11f
.end method

.method public onBrightnessChanged()V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_27

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v0

    const-string/jumbo v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBrightnessChanged()  brightnessValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_27
    return-void
.end method

.method public onBrightnessModeChanged()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_36

    const/4 v0, 0x1

    :goto_9
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isFolderClose()Z

    move-result v3

    :goto_15
    if-nez v3, :cond_1c

    if-eqz v0, :cond_3a

    :goto_19
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateDualColorRange(Landroid/widget/SeekBar;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_35
    return-void

    :cond_36
    const/4 v0, 0x0

    goto :goto_9

    :cond_38
    move v3, v2

    goto :goto_15

    :cond_3a
    move v1, v2

    goto :goto_19
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 14

    const/16 v10, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz p2, :cond_21

    :cond_c
    :goto_c
    if-eqz p2, :cond_c3

    :goto_e
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->changeSeekbarColor(Z)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "brightness_user_touch"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v8

    if-eqz v8, :cond_a0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v8

    if-eqz v8, :cond_a0

    if-eq v1, v6, :cond_a0

    const/16 v5, 0x27

    iget-object v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->getSamsungNTTHomeDefaultBrightness(Landroid/content/Context;)[I

    move-result-object v4

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.nttdocomo.android.dhome"

    const-string/jumbo v9, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v4, :cond_68

    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_68

    aget v5, v4, v6

    :cond_68
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_brightness"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_c

    :cond_7d
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "brightness_pms_marker_screen"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_brightness"

    iget v10, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    :cond_a0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "brightness_pms_marker_screen"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_brightness"

    iget v10, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPmsBrightness:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    :cond_c3
    move v6, v7

    goto/16 :goto_e
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8

    iput-boolean p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    if-nez p2, :cond_66

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_4c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFocusChange() mAutomaticMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_4c

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    :cond_4c
    const-string/jumbo v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on stop tracking touch brightness DB input:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    packed-switch p2, :pswitch_data_4e

    :cond_a
    const/4 v1, 0x0

    return v1

    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string/jumbo v1, "BrightnessSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KEYCODE_DPAD_LEFT mAutomaticMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v1, :cond_43

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    :cond_43
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_data_4e
    .packed-switch 0x15
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 12

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    mul-int/lit8 v3, v1, 0x5a

    div-int/lit8 v0, v3, 0x64

    sget-boolean v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    xor-int/lit8 v6, v3, 0x1

    if-le p2, v0, :cond_1f

    move v3, v4

    :goto_15
    and-int/2addr v3, v6

    if-eqz v3, :cond_25

    if-eqz p3, :cond_25

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v3, :cond_21

    return-void

    :cond_1f
    move v3, v5

    goto :goto_15

    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->showBrightnessAlertDialog()V

    return-void

    :cond_25
    sget-boolean v3, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    if-nez v3, :cond_2d

    if-gt p2, v0, :cond_36

    if-eqz p3, :cond_36

    :cond_2d
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_36
    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-ge v3, p2, :cond_5d

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    if-nez v3, :cond_5d

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v3, :cond_5d

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    if-eq v3, v7, :cond_5d

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_51

    iput-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    :cond_51
    :goto_51
    const-string/jumbo v3, "BrightnessSeekBarPreference"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_71

    return-void

    :cond_5d
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    if-eqz v3, :cond_6e

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOverheatTextview:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6e
    iput-boolean v5, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_51

    :cond_71
    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eq p1, v3, :cond_7e

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_7e
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightness(I)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    if-eqz v3, :cond_89

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    :cond_88
    :goto_88
    return-void

    :cond_89
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsTalkBackEnabled:Z

    if-eqz v3, :cond_88

    if-eqz p3, :cond_88

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_88

    iget-boolean v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_88

    invoke-virtual {v2, v7}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    goto :goto_88
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsFocusable:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSupportAutoBrightnessDetail:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setMode(I)V

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_27
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 9

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mDialogForMaxBrightness:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessLimit()V

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4a

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "brightness_user_touch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4a
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateBrightness()V

    const-string/jumbo v2, "BrightnessSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onstoptracking isSupportPersonalAutoBrightness() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mAutomaticMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsHBMOnOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsHBMOnOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", brightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", brightness_user_touch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "brightness_user_touch"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_c6

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    if-eqz v2, :cond_c6

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setMarkerBrightness(I)V

    :cond_c6
    return-void
.end method

.method public registerBrightnessObserver()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string/jumbo v1, "brightness_pms_marker_screen"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "high_brightness_mode_pms_enter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_27
    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "shown_max_brightness_dialog"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public returnMaxBrightness(I)I
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    return p1

    :cond_4
    const/16 v0, 0xff

    return v0
.end method

.method protected setBixbyBrightness(I)V
    .registers 6

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    const/16 v2, 0x64

    if-le p1, v2, :cond_9

    const/16 p1, 0x64

    :cond_9
    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v2, v3

    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    add-int v0, v2, v3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setValue(I)V

    return-void
.end method

.method public setBrightnessIcon(Z)V
    .registers 3

    const v0, 0x7f08066c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setIcon(I)V

    return-void
.end method

.method public setFlipCloseStatus(I)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutomaticMode:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    packed-switch p1, :pswitch_data_3c

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_11

    :pswitch_26
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_11

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_26
    .end packed-switch
.end method

.method public setInitFinish(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    return-void
.end method

.method public setMaxBrightnessLimit(II)V
    .registers 8

    const v4, 0x461c4000    # 10000.0f

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->returnMaxBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    int-to-float v0, v1

    iput p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mChangeType:I

    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMaximum:I

    iget v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    mul-float v1, v0, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightness:I

    cmpg-float v1, v0, v4

    if-gez v1, :cond_28

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    :goto_27
    return-void

    :cond_28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsLessThanMaxValue:Z

    goto :goto_27
.end method

.method public showMaxBrightnessDialog()V
    .registers 2

    sget-boolean v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isAlreadyShownBrightMaxDialog:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->showBrightnessAlertDialog()V

    :cond_7
    return-void
.end method

.method public unRregisterBrightnessObserver()V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mPMSBrightnessMarkerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
