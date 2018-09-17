.class public Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectAccessFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;,
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;
    }
.end annotation


# instance fields
.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

.field private mDirectAccessGuide:Lcom/samsung/android/settings/UnclickablePreference;

.field private mDirectAccessObserver:Landroid/database/ContentObserver;

.field private mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mPageReaderObserver:Landroid/database/ContentObserver;

.field private mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessDB(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private checkNoneItemIsSelected()Z
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_ab

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_accessibility"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_talkback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_negative"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_samsung_screen_reader"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a1

    const/4 v0, 0x1

    :goto_3e
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.app.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    if-eqz v0, :cond_a5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_s_talkback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a5

    const/4 v0, 0x1

    :cond_5f
    :goto_5f
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v3

    if-eqz v3, :cond_75

    if-eqz v0, :cond_a7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_universal_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a7

    const/4 v0, 0x1

    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isSupportedColorAdjustment(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8f

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_color_adjustment"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a9

    const/4 v0, 0x1

    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_access"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_186

    const/4 v1, 0x1

    :goto_9e
    if-eqz v0, :cond_189

    :goto_a0
    return v1

    :cond_a1
    const/4 v0, 0x0

    goto :goto_3e

    :cond_a3
    const/4 v0, 0x0

    goto :goto_3e

    :cond_a5
    const/4 v0, 0x0

    goto :goto_5f

    :cond_a7
    const/4 v0, 0x0

    goto :goto_75

    :cond_a9
    const/4 v0, 0x0

    goto :goto_8f

    :cond_ab
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_accessibility"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_17a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_talkback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_17a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_negative"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_17a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_access_control"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_ec

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "access_control_use"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_17a

    :cond_ec
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_samsung_screen_reader"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_178

    const/4 v0, 0x1

    :goto_fa
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.app.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11b

    if-eqz v0, :cond_17d

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_s_talkback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_17d

    const/4 v0, 0x1

    :cond_11b
    :goto_11b
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isSupportedColorAdjustment(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_135

    if-eqz v0, :cond_17f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_color_adjustment"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_17f

    const/4 v0, 0x1

    :cond_135
    :goto_135
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v3

    if-eqz v3, :cond_14b

    if-eqz v0, :cond_181

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_universal_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_181

    const/4 v0, 0x1

    :cond_14b
    :goto_14b
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_8f

    if-eqz v0, :cond_183

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "direct_access_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_183

    const/4 v0, 0x1

    goto/16 :goto_8f

    :cond_178
    const/4 v0, 0x0

    goto :goto_fa

    :cond_17a
    const/4 v0, 0x0

    goto/16 :goto_fa

    :cond_17d
    const/4 v0, 0x0

    goto :goto_11b

    :cond_17f
    const/4 v0, 0x0

    goto :goto_135

    :cond_181
    const/4 v0, 0x0

    goto :goto_14b

    :cond_183
    const/4 v0, 0x0

    goto/16 :goto_8f

    :cond_186
    const/4 v1, 0x0

    goto/16 :goto_9e

    :cond_189
    move v1, v2

    goto/16 :goto_a0
.end method

.method private installSwitchBarToggleSwitch()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private updateDirectAccessDB(Ljava/lang/String;Z)V
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "Accessibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v0, "direct_accessibility"

    :cond_d
    :goto_d
    if-nez v0, :cond_78

    return-void

    :cond_10
    const-string/jumbo v1, "Talkback"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string/jumbo v0, "direct_talkback"

    goto :goto_d

    :cond_1d
    const-string/jumbo v1, "Voice Assistant"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string/jumbo v0, "direct_s_talkback"

    goto :goto_d

    :cond_2a
    const-string/jumbo v1, "Universal switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string/jumbo v0, "direct_universal_switch"

    goto :goto_d

    :cond_37
    const-string/jumbo v1, "Magnifier window"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string/jumbo v0, "direct_access_magnifier"

    goto :goto_d

    :cond_44
    const-string/jumbo v1, "Negative colors"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    const-string/jumbo v0, "direct_negative"

    goto :goto_d

    :cond_51
    const-string/jumbo v1, "Color adjustment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string/jumbo v0, "direct_color_adjustment"

    goto :goto_d

    :cond_5e
    const-string/jumbo v1, "Interaction control"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string/jumbo v0, "direct_access_control"

    goto :goto_d

    :cond_6b
    const-string/jumbo v1, "Page Reader"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v0, "direct_samsung_screen_reader"

    goto :goto_d

    :cond_78
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_83

    const/4 v1, 0x1

    :goto_7f
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_83
    const/4 v1, 0x0

    goto :goto_7f
.end method

.method private updateItemsStatus()V
    .registers 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.color"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.universalswitch"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.screenreader"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.accesscontrol"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_7a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_color_adjustment"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7a
    if-nez v5, :cond_86

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_talkback"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_86
    if-nez v4, :cond_92

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_s_talkback"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_92
    if-nez v6, :cond_9e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_universal_switch"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9e
    if-nez v3, :cond_aa

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_samsung_screen_reader"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_aa
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_b6

    xor-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_c7

    :cond_b6
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_access_control"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c7
    if-eqz v2, :cond_cf

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-eqz v7, :cond_d9

    :cond_cf
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_access_magnifier"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d9
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x132

    return v0
.end method

.method public init()V
    .registers 2

    const-string/jumbo v0, "direct_access_guide"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessGuide:Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v0, "direct_access_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v0, "direct_accessibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_talkback"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_s_talkback"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_universal_switch"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_negative"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_color_adjustment"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_accesscontrol"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_page_reader"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "direct_magnifier"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_65

    const/4 v1, 0x1

    :goto_13
    if-eqz v1, :cond_e2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_accessibility"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_talkback"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_67

    :cond_2f
    const/4 v1, 0x1

    :goto_30
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access"

    if-eqz v1, :cond_4f

    move v2, v3

    :cond_4f
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->installSwitchBarToggleSwitch()V

    return-void

    :cond_65
    const/4 v1, 0x0

    goto :goto_13

    :cond_67
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_s_talkback"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_samsung_screen_reader"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_universal_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_negative"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_color_adjustment"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access_control"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_cf

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "access_control_use"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2f

    :cond_cf
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "direct_access_magnifier"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_df

    const/4 v1, 0x1

    goto/16 :goto_30

    :cond_df
    const/4 v1, 0x0

    goto/16 :goto_30

    :cond_e2
    const/4 v1, 0x0

    goto/16 :goto_30
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150004

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120839

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->init()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateItemsStatus()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->checkNoneItemIsSelected()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_30
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_60

    const/4 v3, 0x0

    return-object v3

    :pswitch_7
    const v3, 0x7f120839

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f1213f6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v2, v4, v7

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const v5, 0x7f120836

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    const v5, 0x7f120940

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$7;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$8;-><init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DirectAccess"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->checkNoneItemIsSelected()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120833

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->pause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const v7, 0x7f0b019c

    const/16 v4, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_accessibility"

    if-eqz v0, :cond_3c

    move v1, v2

    :goto_1f
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0193

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_34

    move v3, v4

    :cond_34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_3c
    move v1, v3

    goto :goto_1f

    :cond_3e
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_talkback"

    if-eqz v0, :cond_6c

    move v1, v2

    :goto_50
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b019a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_6e

    :goto_64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_6c
    move v1, v3

    goto :goto_50

    :cond_6e
    move v4, v3

    goto :goto_64

    :cond_70
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_negative"

    if-eqz v0, :cond_9e

    move v1, v2

    :goto_82
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0199

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_a0

    :goto_96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_9e
    move v1, v3

    goto :goto_82

    :cond_a0
    move v4, v3

    goto :goto_96

    :cond_a2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_color_adjustment"

    if-eqz v0, :cond_d0

    move v1, v2

    :goto_b4
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0194

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_d2

    :goto_c8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_d0
    move v1, v3

    goto :goto_b4

    :cond_d2
    move v4, v3

    goto :goto_c8

    :cond_d4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_access_control"

    if-eqz v0, :cond_102

    move v1, v2

    :goto_e6
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0197

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_104

    :goto_fa
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_102
    move v1, v3

    goto :goto_e6

    :cond_104
    move v4, v3

    goto :goto_fa

    :cond_106
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_s_talkback"

    if-eqz v0, :cond_131

    move v1, v2

    :goto_118
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_133

    :goto_129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_131
    move v1, v3

    goto :goto_118

    :cond_133
    move v4, v3

    goto :goto_129

    :cond_135
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v1

    if-eqz v1, :cond_16d

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_universal_switch"

    if-eqz v0, :cond_169

    move v1, v2

    :goto_14d
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b019b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_16b

    :goto_161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_169
    move v1, v3

    goto :goto_14d

    :cond_16b
    move v4, v3

    goto :goto_161

    :cond_16d
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19c

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_samsung_screen_reader"

    if-eqz v0, :cond_198

    move v1, v2

    :goto_17f
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_19a

    :goto_190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_198
    move v1, v3

    goto :goto_17f

    :cond_19a
    move v4, v3

    goto :goto_190

    :cond_19c
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v5, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_1e9

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e9

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_access_magnifier"

    if-eqz v0, :cond_1e5

    move v1, v2

    :goto_1c9
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0198

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_1e7

    :goto_1dd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_1e5
    move v1, v3

    goto :goto_1c9

    :cond_1e7
    move v4, v3

    goto :goto_1dd

    :cond_1e9
    return v3
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessEnabler:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->resume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_accessibility"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_167

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_43
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_talkback"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_16e

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_55
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.app.talkback"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17c

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_s_talkback"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_175

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_78
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_185

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f12082f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_96
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_samsung_screen_reader"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_18c

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_a8
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_universal_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_193

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_c0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_negative"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1a3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_d2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_color_adjustment"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1aa

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_e4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1b1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_f6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1b8

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_108
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_access"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_talkback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "direct_s_talkback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_samsung_screen_reader"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DirectAccess"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_167
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_43

    :cond_16e
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_55

    :cond_175
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_78

    :cond_17c
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_78

    :cond_185
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_96

    :cond_18c
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_a8

    :cond_193
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_c0

    :cond_19a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_c0

    :cond_1a3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_d2

    :cond_1aa
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_e4

    :cond_1b1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_f6

    :cond_1b8
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_108
.end method

.method public showExclusivePopup()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->showDialog(I)V

    return-void
.end method

.method public updateDirectAccessMenu()V
    .registers 14

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->isAdded()Z

    move-result v10

    if-nez v10, :cond_7

    return-void

    :cond_7
    const-string/jumbo v10, "DirectAccessFragment"

    const-string/jumbo v11, "updateDirectAccessMenu"

    invoke-static {v10, v11}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "direct_access"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "powersaving_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "blackgrey_powersaving_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_177

    const/4 v8, 0x1

    :goto_3c
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.color"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.google.android.marvin.talkback"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.talkback"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.universalswitch"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.screenreader"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.accesscontrol"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string/jumbo v11, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isNavigationBar()Z

    move-result v10

    if-eqz v10, :cond_b7

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessGuide:Lcom/samsung/android/settings/UnclickablePreference;

    const v11, 0x7f120838

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    :cond_b7
    if-nez v9, :cond_187

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v10

    if-eqz v10, :cond_d7

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_d7
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_use"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_17d

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v11, 0x7f120826

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_ff
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v11, 0x7f12082f

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_117
    :goto_117
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    const/16 v11, 0x64

    if-ge v10, v11, :cond_123

    xor-int/lit8 v10, v0, 0x1

    if-eqz v10, :cond_12a

    :cond_123
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_12a
    if-nez v7, :cond_13a

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_13a
    if-nez v1, :cond_143

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_143
    if-nez v5, :cond_14c

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_14c
    if-nez v4, :cond_155

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_155
    if-nez v6, :cond_15e

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_15e
    if-nez v3, :cond_167

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_167
    if-eqz v2, :cond_16f

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_176

    :cond_16f
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mDirectAccessCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_176
    return-void

    :cond_177
    const/4 v8, 0x0

    goto/16 :goto_3c

    :cond_17a
    const/4 v8, 0x0

    goto/16 :goto_3c

    :cond_17d
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_ff

    :cond_187
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "enabled_accessibility_samsung_screen_reader"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_238

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v11, 0x7f12082f

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1bb
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v10

    if-eqz v10, :cond_1c7

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mUniversalInputSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1c7
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessibilitySwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v8, :cond_240

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1db
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "access_control_use"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_24d

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v11, 0x7f120826

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_1f7
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mMagnifierSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "direct_talkback"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_25c

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_211
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.talkback"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_117

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "direct_s_talkback"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_263

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_117

    :cond_238
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mPageReaderSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1bb

    :cond_240
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mNegativeColorSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mColorAdjustmentSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1db

    :cond_24d
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mAccessControlSwitch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1f7

    :cond_25c
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_211

    :cond_263
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSTalkbackSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_117
.end method
