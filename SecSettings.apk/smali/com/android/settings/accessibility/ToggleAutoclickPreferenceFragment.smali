.class public Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;
    }
.end annotation


# static fields
.field private static final mAutoclickPreferenceSummaries:[I

.field private static option_flag:I


# instance fields
.field private mAutoClickDialog:Landroid/app/AlertDialog;

.field private mDelay:Lcom/android/settings/SeekBarPreference;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private onhandoperation:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/SeekBarPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2()I
    .registers 1

    sget v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->option_flag:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->seekBarProgressToDelay(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->turnOffExlusiveOptions(Landroid/content/Context;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/high16 v0, 0x7f100000

    const v1, 0x7f100004

    const v2, 0x7f100002

    const v3, 0x7f100001

    const v4, 0x7f100003

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->option_flag:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoClickDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onhandoperation:Z

    new-instance v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private cancelReduceSizeBroadcast()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "any_screen_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "is_enabled"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static convertToArabic(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x660

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/lit16 v3, v3, 0x660

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_27
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private delayToSeekBarProgress(I)I
    .registers 3

    add-int/lit16 v0, p1, -0xc8

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .registers 10

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummaryIndex(I)I

    move-result v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v5, :cond_3d

    const/4 v0, 0x1

    :goto_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    aget v4, v4, v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3c

    const-string/jumbo v4, "ar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->convertToArabic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3c
    return-object v2

    :cond_3d
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static getAutoclickPreferenceSummaryIndex(I)I
    .registers 4

    const/16 v1, 0xc8

    if-gt p0, v1, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_10

    sget-object v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_10
    sget-object v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x320

    div-int v0, v2, v1

    add-int/lit16 v1, p0, -0xc8

    div-int/2addr v1, v0

    return v1
.end method

.method private isExclusivePopupNeededForAutoClick(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_31

    :goto_10
    iput-boolean v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onhandoperation:Z

    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onhandoperation:Z

    const-string/jumbo v1, "ToggleAutoClickPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\nOne-handed operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onhandoperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_31
    move v1, v2

    goto :goto_10
.end method

.method private seekBarProgressToDelay(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x64

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method

.method private showAutoClickExclusivePopup()V
    .registers 14

    const v12, 0x7f12004a

    const/4 v11, 0x0

    sput v11, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->option_flag:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    const-string/jumbo v4, ""

    iget-boolean v8, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onhandoperation:Z

    if-eqz v8, :cond_50

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1213f6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v8, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->option_flag:I

    add-int/lit8 v8, v8, 0x8

    sput v8, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->option_flag:I

    :cond_50
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v8, 0x7f0d001e

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v8, 0x7f0a0256

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0a0257

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const v9, 0x7f121c4d

    invoke-virtual {p0, v9, v8}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f120608

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;

    invoke-direct {v10, p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$3;

    invoke-direct {v9, p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$3;-><init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)V

    const v10, 0x7f12055d

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$4;

    invoke-direct {v9, p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$4;-><init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoClickDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private turnOffExlusiveOptions(Landroid/content/Context;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    and-int/lit8 v1, p2, 0x8

    if-lez v1, :cond_14

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->cancelReduceSizeBroadcast()V

    const-string/jumbo v1, "ToggleAutoClickPreference"

    const-string/jumbo v2, "turnOffExlusiveOptions - One-handed Operation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x14f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150002

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_autoclick_delay"

    const/16 v3, 0x258

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "autoclick_delay"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SeekBarPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/SeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/SeekBarPreference;

    const/16 v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/SeekBarPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "accessibility_autoclick_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-ne v0, v2, :cond_25

    move v1, v2

    :goto_15
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/SeekBarPreference;

    if-ne v0, v2, :cond_27

    :goto_21
    invoke-virtual {v1, v2}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    return-void

    :cond_25
    move v1, v3

    goto :goto_15

    :cond_27
    move v2, v3

    goto :goto_21
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AutoClickAfterPointerStops"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/SeekBarPreference;

    if-ne p1, v0, :cond_33

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_autoclick_delay"

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->seekBarProgressToDelay(I)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3f

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->isExclusivePopupNeededForAutoClick(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->showAutoClickExclusivePopup()V

    :goto_11
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p2, :cond_26

    const/16 v1, 0x3e8

    :cond_26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_3d

    :goto_34
    invoke-static {v2, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    goto :goto_11

    :cond_3d
    move v0, v1

    goto :goto_34

    :cond_3f
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_4e

    :goto_45
    invoke-static {v2, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    goto :goto_11

    :cond_4e
    move v0, v1

    goto :goto_45
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AutoClickAfterPointerStops"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 4

    const-string/jumbo v0, "accessibility_autoclick_enabled"

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f12004a

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method
