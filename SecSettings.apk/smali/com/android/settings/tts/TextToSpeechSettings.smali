.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TextToSpeechSettings$1;,
        Lcom/android/settings/tts/TextToSpeechSettings$2;,
        Lcom/android/settings/tts/TextToSpeechSettings$3;,
        Lcom/android/settings/tts/TextToSpeechSettings$4;
    }
.end annotation


# instance fields
.field private mActionButtons:Lcom/android/settings/applications/LayoutPreference;

.field private mAvailableStrLocals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDefaultLocale:Ljava/util/Locale;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultPitch:I

.field private mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

.field private mDefaultRate:I

.field private mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnginePreference:Landroid/support/v7/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

.field private mPitchObserver:Landroid/database/ContentObserver;

.field private mPlayButton:Landroid/widget/Button;

.field private mResetButton:Landroid/widget/Button;

.field private mSampleText:Ljava/lang/String;

.field private mSelectedLocaleIndex:I

.field private mSpeechRateObserver:Landroid/database/ContentObserver;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static synthetic -get0(Lcom/android/settings/tts/TextToSpeechSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/tts/TextToSpeechSettings;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/SecListDialogPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mResetButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/tts/TextToSpeechSettings;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/tts/TextToSpeechSettings;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->setBixbyTTSProgress(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/tts/TextToSpeechSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/tts/TextToSpeechSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings$2;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSpeechRateObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPitchObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$4;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private checkDefaultLocale()V
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_2a

    const-string/jumbo v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get default language from engine "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return-void

    :cond_2a
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    iput-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    :cond_42
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-nez v3, :cond_55

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    :cond_55
    return-void
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .registers 7

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x7b9

    :try_start_d
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string/jumbo v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private displayNetworkAlert()V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f121c1d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private evaluateDefaultLocale()Z
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v6, :cond_b

    :cond_a
    return v8

    :cond_b
    const/4 v5, 0x1

    :try_start_c
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3c
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_66

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_66
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_7b
    .catch Ljava/util/MissingResourceException; {:try_start_c .. :try_end_7b} :catch_91

    move-result v6

    if-eqz v6, :cond_6c

    const/4 v5, 0x0

    :cond_7f
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    const/4 v6, -0x2

    if-eq v0, v6, :cond_8d

    const/4 v6, -0x1

    if-ne v0, v6, :cond_96

    :cond_8d
    invoke-direct {p0, v8}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return v8

    :catch_91
    move-exception v2

    invoke-direct {p0, v8}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return v8

    :cond_96
    if-nez v5, :cond_8d

    invoke-direct {p0, v9}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return v9
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .registers 8

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_47

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_47

    :try_start_c
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030118

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030117

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :goto_35
    array-length v5, v4

    if-ge v2, v5, :cond_47

    aget-object v5, v3, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    aget-object v5, v4, v2
    :try_end_42
    .catch Ljava/util/MissingResourceException; {:try_start_c .. :try_end_42} :catch_46

    return-object v5

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :catch_46
    move-exception v1

    :cond_47
    const v5, 0x7f121c1c

    invoke-virtual {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getSampleText()V
    .registers 7

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    :cond_12
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "language"

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "country"

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "variant"

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x7bf

    :try_start_43
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_46
    .catch Landroid/content/ActivityNotFoundException; {:try_start_43 .. :try_end_46} :catch_47

    :goto_46
    return-void

    :catch_47
    move-exception v1

    const-string/jumbo v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get sample text, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method private getSeekBarProgressFromValue(Ljava/lang/String;I)I
    .registers 4

    const-string/jumbo v0, "tts_default_rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, -0xa

    return v0

    :cond_c
    const-string/jumbo v0, "tts_default_pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    add-int/lit8 v0, p2, -0x19

    return v0

    :cond_18
    return p2
.end method

.method private getValueFromSeekBarProgress(Ljava/lang/String;I)I
    .registers 4

    const-string/jumbo v0, "tts_default_rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, 0xa

    return v0

    :cond_c
    const-string/jumbo v0, "tts_default_pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    add-int/lit8 v0, p2, 0x19

    return v0

    :cond_18
    return p2
.end method

.method private initSettings()V
    .registers 9

    const/high16 v7, 0x42c80000    # 100.0f

    const/16 v5, 0x64

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_8
    const-string/jumbo v4, "tts_default_rate"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_11} :catch_bf

    :goto_11
    const-string/jumbo v4, "tts_default_rate"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    const-string/jumbo v4, "tts_default_pitch"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    const-string/jumbo v5, "tts_default_rate"

    iget v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-direct {p0, v5, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    const-string/jumbo v5, "tts_default_rate"

    const/16 v6, 0x258

    invoke-direct {p0, v5, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    const-string/jumbo v5, "tts_default_pitch"

    iget v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-direct {p0, v5, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    const-string/jumbo v5, "tts_default_pitch"

    const/16 v6, 0x190

    invoke-direct {p0, v5, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_83

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :cond_83
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/SettingsActivity;

    if-eqz v4, :cond_c4

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    if-eqz v4, :cond_b9

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v2

    const-string/jumbo v4, "tts_engine_preference"

    invoke-virtual {p0, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreference:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreference:Landroid/support/v7/preference/Preference;

    if-eqz v4, :cond_b9

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreference:Landroid/support/v7/preference/Preference;

    check-cast v4, Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/SecGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;)V

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreference:Landroid/support/v7/preference/Preference;

    iget-object v5, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b9
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    return-void

    :catch_bf
    move-exception v1

    iput v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    goto/16 :goto_11

    :cond_c4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "TextToSpeechSettings used outside a Settings"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private isNetworkRequiredForSynthesis()Z
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const-string/jumbo v2, "networkTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string/jumbo v1, "embeddedTts"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_1e
    return v1
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_18

    if-eqz p2, :cond_18

    const-string/jumbo v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    :goto_22
    return-void

    :cond_23
    const-string/jumbo v1, "TextToSpeechSettings"

    const-string/jumbo v2, "Did not have a sample string for the requested language. Using default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v1, "TextToSpeechSettings"

    const-string/jumbo v2, "Voice data check complete, but no engine bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    if-nez p1, :cond_35

    const-string/jumbo v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tts_default_synth"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "availableVoices"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v1, :cond_5c

    const-string/jumbo v1, "TextToSpeechSettings"

    const-string/jumbo v2, "Voice data check complete, but no available voices found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    :cond_5c
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    :cond_65
    return-void
.end method

.method private setBixbyTTSProgress(Ljava/lang/String;II)I
    .registers 16

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string/jumbo v8, "tts_default_rate"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d7

    const/16 v1, 0x24e

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v8}, Lcom/android/settings/SeekBarPreference;->getProgress()I

    move-result v2

    :goto_17
    if-eq p2, v11, :cond_1c

    const/4 v8, 0x2

    if-ne p2, v8, :cond_e7

    :cond_1c
    mul-int/lit8 v3, v2, 0x64

    const-string/jumbo v8, "EmSettingsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "currentProgress : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, p3, v1

    const-string/jumbo v8, "EmSettingsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "changeProgress : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v11, :cond_e1

    add-int v7, v3, v0

    mul-int/lit8 v8, v1, 0x64

    if-le v7, v8, :cond_70

    mul-int/lit8 v7, v1, 0x64

    :cond_70
    :goto_70
    const-string/jumbo v8, "EmSettingsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resultProgressCalc : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v5, v7, 0x64

    div-int v6, v7, v1

    rem-int v4, v7, v1

    div-int/lit8 v8, v1, 0x2

    if-le v4, v8, :cond_96

    add-int/lit8 v6, v6, 0x1

    :cond_96
    const-string/jumbo v8, "EmSettingsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resultProgress : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "percent)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "tts_default_rate"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ea

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v8, v5}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    :goto_d3
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    return v6

    :cond_d7
    const/16 v1, 0x177

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v8}, Lcom/android/settings/SeekBarPreference;->getProgress()I

    move-result v2

    goto/16 :goto_17

    :cond_e1
    sub-int v7, v3, v0

    if-gez v7, :cond_70

    const/4 v7, 0x0

    goto :goto_70

    :cond_e7
    mul-int v7, p3, v1

    goto :goto_70

    :cond_ea
    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v8, v5}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    goto :goto_d3
.end method

.method private setLocalePreference(I)V
    .registers 4

    if-gez p1, :cond_13

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    const v1, 0x7f121c2c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(I)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SecListDialogPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListDialogPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_12
.end method

.method private setTtsUtteranceProgressListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TextToSpeechSettings$5;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method private speakSampleText()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    if-ltz v2, :cond_29

    :cond_13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "utteranceId"

    const-string/jumbo v3, "Sample"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :goto_28
    return-void

    :cond_29
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v3, "Network required for sample synthesis for requested language"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->displayNetworkAlert()V

    goto :goto_28
.end method

.method private updateDefaultLocalePref(Landroid/content/Intent;)V
    .registers 16

    const/4 v13, 0x0

    const-string/jumbo v11, "availableVoices"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v11, "unavailableVoices"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1d

    :cond_17
    iget-object v11, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    return-void

    :cond_1d
    const/4 v1, 0x0

    iget-object v11, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v12, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v12}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/speech/tts/TtsEngines;->isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_38

    iget-object v11, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v12, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v12}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    :cond_38
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_65

    iget-object v12, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    if-eqz v9, :cond_62

    new-instance v11, Landroid/util/Pair;

    invoke-virtual {v9}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_65
    new-instance v11, Lcom/android/settings/tts/TextToSpeechSettings$7;

    invoke-direct {v11, p0}, Lcom/android/settings/tts/TextToSpeechSettings$7;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-static {v5, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v13, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v2, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v6, v11, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f121c2d

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v13

    const-string/jumbo v11, ""

    aput-object v11, v6, v13

    const/4 v7, 0x1

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_96
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/Locale;

    invoke-virtual {v11, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ae

    iput v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    :cond_ae
    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    aput-object v11, v2, v7

    add-int/lit8 v8, v7, 0x1

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    move v7, v8

    goto :goto_96

    :cond_c2
    iget-object v11, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v11, v2}, Landroid/support/v7/preference/SecListDialogPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v11, v6}, Landroid/support/v7/preference/SecListDialogPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget v11, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    invoke-direct {p0, v11}, Lcom/android/settings/tts/TextToSpeechSettings;->setLocalePreference(I)V

    return-void
.end method

.method private updateLanguageTo(Ljava/util/Locale;)V
    .registers 7

    const/4 v2, -0x1

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecListDialogPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_24

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecListDialogPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    move v2, v0

    :cond_24
    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    const-string/jumbo v3, "TextToSpeechSettings"

    const-string/jumbo v4, "updateLanguageTo called with unknown locale argument"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    const-string/jumbo v1, ""

    goto :goto_7

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_38
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecListDialogPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_5a

    :goto_56
    invoke-virtual {v3, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    return-void

    :cond_5a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_56
.end method

.method private updateSpeechPitchValue(I)V
    .registers 6

    const-string/jumbo v1, "tts_default_pitch"

    invoke-direct {p0, v1, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->getValueFromSeekBarProgress(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    :try_start_9
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tts_default_pitch"

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :cond_24
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_3c} :catch_3d

    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    const-string/jumbo v1, "TextToSpeechSettings"

    const-string/jumbo v2, "could not persist default TTS pitch setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method private updateSpeechRate(I)V
    .registers 6

    const-string/jumbo v1, "tts_default_rate"

    invoke-direct {p0, v1, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->getValueFromSeekBarProgress(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    :try_start_9
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tts_default_rate"

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    :cond_24
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_3c} :catch_3d

    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    const-string/jumbo v1, "TextToSpeechSettings"

    const-string/jumbo v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method private updateWidgetState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x5e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_8

    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_7

    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    if-eqz p2, :cond_7

    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->updateDefaultLocalePref(Landroid/content/Intent;)V

    goto :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const/16 v5, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_64

    :goto_9
    return-void

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    goto :goto_9

    :pswitch_20
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const-string/jumbo v2, "tts_default_rate"

    invoke-direct {p0, v2, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    const-string/jumbo v2, "tts_default_pitch"

    invoke-direct {p0, v2, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    goto :goto_9

    nop

    :pswitch_data_64
    .packed-switch 0x7f0a08ea
        :pswitch_a
        :pswitch_20
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f150120

    invoke-virtual {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setVolumeControlStream(I)V

    new-instance v3, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    const-string/jumbo v3, "tts_default_lang"

    invoke-virtual {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecListDialogPreference;

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SecListDialogPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    const v6, 0x7f12055d

    invoke-virtual {p0, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecListDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "tts_default_pitch"

    invoke-virtual {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SeekBarPreference;

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    const-string/jumbo v3, "tts_default_rate"

    invoke-virtual {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SeekBarPreference;

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    const-string/jumbo v3, "action_buttons"

    invoke-virtual {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/LayoutPreference;

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    const v6, 0x7f0a08ea

    invoke-virtual {v3, v6}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    const v6, 0x7f0a08eb

    invoke-virtual {v3, v6}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mResetButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_bc

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    new-array v4, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListDialogPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    new-array v4, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListDialogPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :goto_9d
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_bc
    const-string/jumbo v3, "locale_entries"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v3, "locale_entry_values"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v3, "locale_value"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SecListDialogPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    if-eqz v2, :cond_f0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_e3
    invoke-virtual {v6, v3}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    array-length v3, v0

    if-lez v3, :cond_f2

    const/4 v3, 0x1

    :goto_ec
    invoke-virtual {v4, v3}, Landroid/support/v7/preference/SecListDialogPreference;->setEnabled(Z)V

    goto :goto_9d

    :cond_f0
    move-object v3, v4

    goto :goto_e3

    :cond_f2
    move v3, v5

    goto :goto_ec
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_f
    return-void
.end method

.method public onGearClick(Lcom/samsung/android/settings/SecGearPreference;)V
    .registers 6

    const-string/jumbo v2, "tts_engine_preference"

    invoke-virtual {p1}, Lcom/samsung/android/settings/SecGearPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivity(Landroid/content/Intent;)V

    :cond_24
    return-void
.end method

.method public onInitEngine(I)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_13

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TextToSpeechSettings$6;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_12
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSpeechRateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "TextToSpeech"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v3, 0x1

    const-string/jumbo v1, "tts_default_rate"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    :cond_1a
    :goto_1a
    return v3

    :cond_1b
    const-string/jumbo v1, "tts_default_pitch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    goto :goto_1a

    :cond_35
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    if-ne p1, v1, :cond_1a

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    :goto_48
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateLanguageTo(Ljava/util/Locale;)V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    return v3

    :cond_4f
    const/4 v1, 0x0

    goto :goto_48
.end method

.method public onResume()V
    .registers 9

    const/16 v7, 0x64

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v3, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d6

    :try_start_21
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_b9

    :goto_29
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    :goto_3a
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_54

    invoke-direct {p0, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    :cond_54
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tts_default_rate"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tts_default_pitch"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/SeekBarPreference;

    const-string/jumbo v4, "tts_default_rate"

    iget v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/SeekBarPreference;

    const-string/jumbo v4, "tts_default_pitch"

    iget v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tts_default_rate"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSpeechRateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tts_default_pitch"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "TextToSpeech"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :catch_b9
    move-exception v0

    const-string/jumbo v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error shutting down TTS engine"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    :cond_d6
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    const-string/jumbo v4, "tts_default_pitch"

    invoke-static {v1, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    goto/16 :goto_3a
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "locale_entries"

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListDialogPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "locale_entry_values"

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListDialogPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "locale_value"

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListDialogPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
