.class public Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;,
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;,
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;,
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;,
        Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;
    }
.end annotation


# instance fields
.field mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHorizontalFocusLock:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mIcObserver:Landroid/database/ContentObserver;

.field private mMagnifierSettings:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

.field private mMagnifierWindowDialog:Landroid/app/AlertDialog;

.field mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v14/preference/SecSwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHorizontalFocusLock:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v7/preference/SecDropDownPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/ToggleSwitch;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->showFingerMagnifierDisablePopup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedSwitchBarState()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_c
    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private showFingerMagnifierDisablePopup(Ljava/lang/String;)V
    .registers 13

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f120068

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    const v8, 0x1030132

    invoke-direct {v1, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v1, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v7, 0x7f0d001e

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v7, 0x7f0a0256

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x7f0a0257

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v10

    const v9, 0x7f121c4d

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f121c4e

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f121c4f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$6;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$7;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$7;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updatedSwitchBarState()V
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "access_control_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_84

    const/4 v3, 0x1

    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v4

    if-eqz v4, :cond_86

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    :goto_1b
    if-nez v3, :cond_88

    xor-int/lit8 v2, v1, 0x1

    :goto_1f
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "finger_magnifier"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8a

    const/4 v0, 0x1

    :goto_2d
    const-string/jumbo v4, "ToggleMagnifierPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatedSwitchBarState(): isEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", isChecked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_60

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :cond_60
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    if-eqz v4, :cond_6c

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    if-eqz v2, :cond_8c

    move v4, v0

    :goto_69
    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabled(Z)V

    :cond_6c
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v4, :cond_78

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v2, :cond_8e

    move v4, v0

    :goto_75
    invoke-virtual {v6, v4}, Landroid/support/v7/preference/SecDropDownPreference;->setEnabled(Z)V

    :cond_78
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHorizontalFocusLock:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_83

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHorizontalFocusLock:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_90

    :goto_80
    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_83
    return-void

    :cond_84
    const/4 v3, 0x0

    goto :goto_f

    :cond_86
    const/4 v1, 0x0

    goto :goto_1b

    :cond_88
    const/4 v2, 0x0

    goto :goto_1f

    :cond_8a
    const/4 v0, 0x0

    goto :goto_2d

    :cond_8c
    move v4, v5

    goto :goto_69

    :cond_8e
    move v4, v5

    goto :goto_75

    :cond_90
    move v0, v5

    goto :goto_80
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x131

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f1500b7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v2, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setOrder(I)V

    const-string/jumbo v2, "magnifier_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSettings:Landroid/support/v7/preference/SecPreferenceCategory;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->setOrder(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSettings:Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v2, "magnifier_size"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecDropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v2, :cond_7e

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hover_zoom_magnifier_size"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hover_zoom_magnifier_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6e
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SecDropDownPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7e
    const-string/jumbo v2, "horizontal_focus_lock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHorizontalFocusLock:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHorizontalFocusLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierWindowDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_23
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MagnifierWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "magnifier_size"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v3, :cond_53

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v3, p2}, Landroid/support/v7/preference/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    packed-switch v1, :pswitch_data_92

    const-string/jumbo v0, "small"

    :goto_3d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "MGWS"

    invoke-static {v3, v5, v6, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1370

    invoke-static {v3, v6, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_53
    :goto_53
    return v4

    :pswitch_54
    const-string/jumbo v0, "small"

    goto :goto_3d

    :pswitch_58
    const-string/jumbo v0, "middle"

    goto :goto_3d

    :pswitch_5c
    const-string/jumbo v0, "large"

    goto :goto_3d

    :cond_60
    const-string/jumbo v3, "horizontal_focus_lock"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "magnifier_window_horizontal_focus_lock"

    if-eqz v2, :cond_90

    move v3, v4

    :goto_7d
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_86

    const/16 v5, 0x3e8

    :cond_86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x17b5

    invoke-static {v3, v6, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_53

    :cond_90
    move v3, v5

    goto :goto_7d

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_54
        :pswitch_58
        :pswitch_5c
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 4

    const-string/jumbo v0, "magnifier_size"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x1370

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "MagnifierWindow"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedSwitchBarState()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->updateState()V

    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_42
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHorizontalFocusLock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "magnifier_window_horizontal_focus_lock"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_96

    move v1, v2

    :goto_52
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "hover_zoom_magnifier_size"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "hover_zoom_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "magnifier_window_horizontal_focus_lock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_96
    move v1, v3

    goto :goto_52
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
