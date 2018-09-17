.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;
    }
.end annotation


# instance fields
.field private mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field mBixbyCurrentStateId:Ljava/lang/String;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFontSize:Landroid/support/v7/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings/accessibility/LocalePreference;

.field mNLGRequestParam:Ljava/lang/CharSequence;

.field private mPreset:Lcom/android/settings/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mTypeface:Landroid/support/v7/preference/SecListPreference;

.field private mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/accessibility/LocalePreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/ToggleSwitch;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emBackgroundColor()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emTextOpacity()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emTextSize()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emBackgroundOpacity()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emCaptionStyle()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emCaptionWindowOpacity()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emCaptionWindow()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emEdgeColor(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emEdgeType(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emFontFamily(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->emTextColor()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v0, "GoogleSubtitles"

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    return-void
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .registers 12

    const v7, 0x7f120571

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-static {v0, v3, v7}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_2f
.end method

.method private emBackgroundColor()V
    .registers 13

    const/4 v9, -0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "BackgroundColorSet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eqz v8, :cond_65

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v8, :cond_26

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v8

    if-eq v8, v9, :cond_26

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_26
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v8

    if-eqz v8, :cond_43

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_66

    :cond_43
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "BackgroundColor"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f030045

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    array-length v8, v4

    add-int/lit8 v8, v8, 0x1

    new-array v0, v8, [I

    array-length v8, v4

    const/4 v9, 0x1

    invoke-static {v4, v10, v0, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    aput v10, v0, v10

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "(?i)^0x"

    const-string/jumbo v9, "#"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_93
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_96} :catch_e5

    move-result v3

    if-eq v1, v3, :cond_130

    const/4 v6, 0x0

    :goto_9a
    array-length v8, v0

    if-ge v6, v8, :cond_10c

    aget v8, v0, v6

    if-ne v8, v3, :cond_109

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    aget v9, v0, v6

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_dd

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "BackgroundColor"

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitlesBackground Color"

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v10, v6}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_dd
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_e5
    move-exception v5

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "BackgroundColor"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    return-void

    :cond_109
    add-int/lit8 v6, v6, 0x1

    goto :goto_9a

    :cond_10c
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "BackgroundColor"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    goto/16 :goto_65

    :cond_130
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "BackgroundColor"

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "Yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitlesBackground Color"

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v10}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65
.end method

.method private emBackgroundOpacity()V
    .registers 11

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "BackgroundOpacitySet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v6

    if-eq v6, v8, :cond_26

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {p0, v6, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_26
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_43

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_66

    :cond_43
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "BackgroundOpacityLevel"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    :try_start_77
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getOpacityValue([II)I
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_81} :catch_d8

    move-result v3

    if-eq v2, v3, :cond_123

    const/4 v1, 0x0

    :goto_85
    array-length v6, v4

    if-ge v1, v6, :cond_ff

    aget v6, v4, v1

    if-ne v6, v3, :cond_fc

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_fc

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    aget v7, v4, v1

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_d0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "BackgroundOpacityLevel"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesBackgroundOpacityLevel"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v1}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d0
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_d8
    move-exception v0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "BackgroundOpacityLevel"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    return-void

    :cond_fc
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    :cond_ff
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "BackgroundOpacityLevel"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    goto/16 :goto_65

    :cond_123
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "BackgroundOpacityLevel"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesBackgroundOpacityLevel"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65
.end method

.method private emCaptionStyle()V
    .registers 11

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "CaptionStyleSet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v6, :cond_53

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/PresetPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_31

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_54

    :cond_31
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "CaptionStyle"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/PresetPreference;->performClick()V

    :cond_53
    :goto_53
    return-void

    :cond_54
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    :try_start_65
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_6b} :catch_bd

    move-result v3

    if-eq v3, v2, :cond_108

    const/4 v1, 0x0

    :goto_6f
    array-length v6, v4

    if-ge v1, v6, :cond_e4

    aget v6, v4, v1

    if-ne v6, v3, :cond_e1

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    aget v7, v4, v1

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_b5

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "CaptionStyle"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6, v1}, Lcom/android/settings/accessibility/PresetPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    if-eqz v6, :cond_ad

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesCaption style"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b5
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_bd
    move-exception v0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "CaptionStyle"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/PresetPreference;->performClick()V

    return-void

    :cond_e1
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :cond_e4
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "CaptionStyle"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/PresetPreference;->performClick()V

    goto/16 :goto_53

    :cond_108
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "CaptionStyle"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/PresetPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    if-eqz v6, :cond_130

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesCaption style"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_130
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_53
.end method

.method private emCaptionWindow()V
    .registers 13

    const/4 v9, -0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "CaptionWindowColorSet"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eqz v8, :cond_65

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v8, :cond_26

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v8

    if-eq v8, v9, :cond_26

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_26
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v8

    if-eqz v8, :cond_43

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_66

    :cond_43
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "WindowColor"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f030045

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    array-length v8, v1

    add-int/lit8 v8, v8, 0x1

    new-array v7, v8, [I

    array-length v8, v1

    const/4 v9, 0x1

    invoke-static {v1, v10, v7, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    aput v10, v7, v10

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "(?i)^0x"

    const-string/jumbo v9, "#"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_93
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_96} :catch_e5

    move-result v6

    if-eq v5, v6, :cond_130

    const/4 v3, 0x0

    :goto_9a
    array-length v8, v7

    if-ge v3, v8, :cond_10c

    aget v8, v7, v3

    if-ne v8, v6, :cond_109

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    aget v9, v7, v3

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_dd

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "WindowColor"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "Yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitlesCaptionWindowColorColor"

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v10, v3}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_dd
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_e5
    move-exception v2

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "WindowColor"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    return-void

    :cond_109
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    :cond_10c
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "CaptionWindowColor"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    goto/16 :goto_65

    :cond_130
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "WindowColor"

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "Yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitlesCaptionWindowColorColor"

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v10}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65
.end method

.method private emCaptionWindowOpacity()V
    .registers 11

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "CaptionWindowOpacitySet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v6

    if-eq v6, v8, :cond_26

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {p0, v6, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_26
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_43

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_66

    :cond_43
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "WindowOpacity"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    :try_start_77
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getOpacityValue([II)I
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_81} :catch_d8

    move-result v0

    if-eq v3, v0, :cond_123

    const/4 v2, 0x0

    :goto_85
    array-length v6, v4

    if-ge v2, v6, :cond_ff

    aget v6, v4, v2

    if-ne v6, v0, :cond_fc

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_fc

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6, v0}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    aget v7, v4, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_d0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "WindowOpacity"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesCaptionWindowOpacityOpacity"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v2}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d0
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_d8
    move-exception v1

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "WindowOpacity"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    return-void

    :cond_fc
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_ff
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "WindowOpacity"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    goto/16 :goto_65

    :cond_123
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "WindowOpacity"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesCaptionWindowOpacityOpacity"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65
.end method

.method private emEdgeColor(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 13

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "EdgeColorSet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eqz v7, :cond_65

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v7, :cond_26

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v7

    if-eq v7, v8, :cond_26

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_26
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v7

    if-eqz v7, :cond_43

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_66

    :cond_43
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "EdgeColor"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GoogleSubtitles"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget v5, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "(?i)^0x"

    const-string/jumbo v8, "#"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_83
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_86} :catch_d5

    move-result v1

    if-eq v5, v1, :cond_120

    const/4 v4, 0x0

    :goto_8a
    array-length v7, v2

    if-ge v4, v7, :cond_fc

    aget v7, v2, v4

    if-ne v7, v1, :cond_f9

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v7, v1}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    aget v8, v2, v4

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_cd

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "EdgeColor"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GoogleSubtitlesEdge Color"

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GoogleSubtitles"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_cd
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_d5
    move-exception v3

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "EdgeColor"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GoogleSubtitles"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    return-void

    :cond_f9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    :cond_fc
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "EdgeColor"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "No"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GoogleSubtitles"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    goto/16 :goto_65

    :cond_120
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "EdgeColor"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "Yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GoogleSubtitlesEdge Color"

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "GoogleSubtitles"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65
.end method

.method private emEdgeType(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 12

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "EdgeTypeSet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v6

    if-eq v6, v8, :cond_26

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {p0, v6, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_26
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/EdgeTypePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_43

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_66

    :cond_43
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "EdgeType"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/EdgeTypePreference;->performClick()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget v4, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    :try_start_73
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_79} :catch_d8

    move-result v1

    if-eq v4, v1, :cond_124

    const/4 v3, 0x0

    :goto_7d
    array-length v6, v2

    if-ge v3, v6, :cond_100

    aget v6, v2, v3

    if-ne v6, v1, :cond_fc

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/EdgeTypePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_fc

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v6, v1}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValue(I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    aget v7, v2, v3

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_d0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "EdgeType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v6, v3}, Lcom/android/settings/accessibility/EdgeTypePreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    if-eqz v6, :cond_c8

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesEdge type"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c8
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d0
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_d8
    move-exception v0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "EdgeType"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/EdgeTypePreference;->performClick()V

    return-void

    :cond_fc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7d

    :cond_100
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "EdgeType"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/EdgeTypePreference;->performClick()V

    goto/16 :goto_65

    :cond_124
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "EdgeType"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/EdgeTypePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    if-eqz v6, :cond_14c

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesEdge type"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14c
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65
.end method

.method private emFontFamily(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 12

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "FontFamilySet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    if-eqz v5, :cond_65

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v5

    if-eq v5, v7, :cond_26

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {p0, v5, v7}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_26
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-eqz v5, :cond_43

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_66

    :cond_43
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "FontFamily"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->performClick()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget-object v5, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    if-nez v5, :cond_a7

    const-string/jumbo v1, ""

    :goto_6d
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    :try_start_78
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_7e} :catch_aa

    move-result v3

    if-ltz v3, :cond_84

    array-length v5, v4

    if-lt v3, v5, :cond_ce

    :cond_84
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "FontFamily"

    const-string/jumbo v7, "Valid"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->performClick()V

    return-void

    :cond_a7
    iget-object v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    goto :goto_6d

    :catch_aa
    move-exception v0

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "FontFamily"

    const-string/jumbo v7, "Valid"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->performClick()V

    return-void

    :cond_ce
    aget-object v5, v4, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_120

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    aget-object v6, v4, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_117

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "FontFamily"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitlesFont Family"

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v7}, Landroid/support/v7/preference/SecListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    aget-object v9, v4, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_117
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65

    :cond_120
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "FontFamily"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitlesFont Family"

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v7}, Landroid/support/v7/preference/SecListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/SecListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65
.end method

.method private emTextColor()V
    .registers 13

    const/4 v9, -0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "TextColorSet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eqz v8, :cond_65

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v8, :cond_26

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v8

    if-eq v8, v9, :cond_26

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_26
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v8

    if-eqz v8, :cond_43

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_66

    :cond_43
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "TextColor"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f030045

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "(?i)^0x"

    const-string/jumbo v9, "#"

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_88
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_8b} :catch_da

    move-result v2

    if-eq v0, v2, :cond_125

    const/4 v5, 0x0

    :goto_8f
    array-length v8, v3

    if-ge v5, v8, :cond_101

    aget v8, v3, v5

    if-ne v8, v2, :cond_fe

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v2}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    aget v9, v3, v5

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_d2

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "TextColor"

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitlesText color"

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v10, v5}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d2
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_da
    move-exception v4

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "TextColor"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    return-void

    :cond_fe
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    :cond_101
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "TextColor"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    goto/16 :goto_65

    :cond_125
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "TextColor"

    const-string/jumbo v10, "AlreadySet"

    const-string/jumbo v11, "Yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v0}, Lcom/android/settings/accessibility/ColorPreference;->getIndexForValue(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitlesText color"

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v10}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v9, "GoogleSubtitles"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65
.end method

.method private emTextOpacity()V
    .registers 11

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TextOpacitySet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-eqz v6, :cond_65

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v6

    if-eq v6, v8, :cond_26

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {p0, v6, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    :cond_26
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_43

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_66

    :cond_43
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "TextOpactity"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    :cond_65
    :goto_65
    return-void

    :cond_66
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    :try_start_77
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getOpacityValue([II)I
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_81} :catch_da

    move-result v0

    if-eq v3, v0, :cond_125

    const/4 v2, 0x0

    :goto_85
    array-length v6, v4

    if-ge v2, v6, :cond_101

    aget v6, v4, v2

    if-ne v6, v0, :cond_fe

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_fe

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    aget v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    aget v7, v4, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_d2

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "TextOpactity"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesText Opacity"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v2}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d2
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_da
    move-exception v1

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "TextOpactity"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    return-void

    :cond_fe
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_101
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "TextOpactity"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/ColorPreference;->performClick()V

    goto/16 :goto_65

    :cond_125
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "TextOpactity"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitlesText Opacity"

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/ColorPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "GoogleSubtitles"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_65
.end method

.method private emTextSize()V
    .registers 10

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v5}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v5

    if-nez v5, :cond_27

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitlesState"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "Off"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_27
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "TextSizeMaxSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e2

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_be

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_bf

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSizeState"

    const-string/jumbo v7, "AlreadyMaximum"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8f
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v2, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_b7

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSizeState"

    const-string/jumbo v7, "AlreadyMaximum"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b7
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_be
    :goto_be
    return-void

    :cond_bf
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSize"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->performClick()V

    goto :goto_be

    :cond_e2
    const-string/jumbo v5, "TextSizeMinSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17e

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_be

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_15a

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12c

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSizeState"

    const-string/jumbo v7, "AlreadyMinimum"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_12c
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v2, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_151

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSizeState"

    const-string/jumbo v7, "AlreadyMinimum"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_151
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_be

    :cond_15a
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSize"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->performClick()V

    goto/16 :goto_be

    :cond_17e
    const-string/jumbo v5, "TextSizeIncreaseSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_237

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_be

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_195
    array-length v5, v2

    if-ge v3, v5, :cond_213

    aget-object v5, v2, v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_210

    array-length v5, v2

    add-int/lit8 v6, v3, 0x1

    if-gt v5, v6, :cond_1c3

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSizeState"

    const-string/jumbo v7, "AlreadyMaximum"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1c3
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    add-int/lit8 v6, v3, 0x1

    aget-object v6, v2, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_208

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSizeState"

    const-string/jumbo v7, "AlreadyMaximum"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    if-eqz v5, :cond_200

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitlesTextSize"

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_200
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_208
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_210
    add-int/lit8 v3, v3, 0x1

    goto :goto_195

    :cond_213
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSize"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->performClick()V

    goto/16 :goto_be

    :cond_237
    const-string/jumbo v5, "TextSizeDecreaseSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ef

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_be

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_24e
    array-length v5, v2

    if-ge v3, v5, :cond_2cb

    aget-object v5, v2, v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c8

    add-int/lit8 v5, v3, -0x1

    if-gez v5, :cond_27b

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSizeState"

    const-string/jumbo v7, "AlreadyMinimum"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_27b
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v2, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_2c0

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSizeState"

    const-string/jumbo v7, "AlreadyMinimum"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2b8

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitlesTextSize"

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b8
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2c0
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2c8
    add-int/lit8 v3, v3, 0x1

    goto :goto_24e

    :cond_2cb
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSize"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->performClick()V

    goto/16 :goto_be

    :cond_2ef
    const-string/jumbo v5, "TextSizeSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_be

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-eqz v5, :cond_319

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33d

    :cond_319
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSize"

    const-string/jumbo v7, "Exist"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->performClick()V

    goto/16 :goto_be

    :cond_33d
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c5

    const/4 v3, 0x0

    :goto_34a
    array-length v5, v2

    if-ge v3, v5, :cond_3a1

    aget-object v5, v2, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39e

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v2, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v3

    iput-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_396

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSize"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    if-eqz v5, :cond_38e

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitlesTextSize"

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38e
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_396
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_39e
    add-int/lit8 v3, v3, 0x1

    goto :goto_34a

    :cond_3a1
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSize"

    const-string/jumbo v7, "Valid"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->performClick()V

    goto/16 :goto_be

    :cond_3c5
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "TextSize"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3ed

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitlesTextSize"

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mNLGRequestParam:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3ed
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "GoogleSubtitles"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_be
.end method

.method private getOpacityValue([II)I
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x19

    if-ne p2, v1, :cond_9

    const/4 v1, 0x0

    aget v0, p1, v1

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/16 v1, 0x32

    if-ne p2, v1, :cond_11

    const/4 v1, 0x1

    aget v0, p1, v1

    goto :goto_8

    :cond_11
    const/16 v1, 0x4b

    if-ne p2, v1, :cond_19

    const/4 v1, 0x2

    aget v0, p1, v1

    goto :goto_8

    :cond_19
    const/16 v1, 0x64

    if-ne p2, v1, :cond_8

    const/4 v1, 0x3

    aget v0, p1, v1

    goto :goto_8
.end method

.method private initializeAllPreferences()V
    .registers 14

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string/jumbo v9, "captioning_locale"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    const-string/jumbo v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f03004d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    const v9, 0x7f03004c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "captioning_preset"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/android/settings/accessibility/PresetPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v11}, Lcom/android/settings/accessibility/PresetPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v9, "custom"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    iput-boolean v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    const v9, 0x7f030045

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const v9, 0x7f030044

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v11}, Lcom/android/settings/accessibility/ColorPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const v9, 0x7f03004b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const v9, 0x7f03004a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v10, "captioning_foreground_opacity"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v11}, Lcom/android/settings/accessibility/ColorPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v11}, Lcom/android/settings/accessibility/ColorPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    array-length v9, v3

    invoke-static {v3, v12, v1, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v9, v2

    invoke-static {v2, v12, v0, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v12, v1, v12

    const v9, 0x7f1205ee

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v12

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v11}, Lcom/android/settings/accessibility/ColorPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v11}, Lcom/android/settings/accessibility/ColorPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v10, "captioning_window_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v11}, Lcom/android/settings/accessibility/ColorPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v10, "captioning_window_opacity"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v11}, Lcom/android/settings/accessibility/ColorPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v9, v11}, Lcom/android/settings/accessibility/EdgeTypePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/SecListPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/SecListPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private installUpdateListeners()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I
    .registers 8

    invoke-virtual {p1}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const v4, 0xffff00

    or-int v2, v4, v3

    :goto_17
    return v2

    :cond_18
    if-nez v0, :cond_1f

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    goto :goto_17

    :cond_1f
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, -0x1000000

    and-int/2addr v4, v1

    or-int v2, v3, v4

    goto :goto_17
.end method

.method private parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V
    .registers 8

    const/high16 v3, -0x1000000

    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    if-nez v2, :cond_1a

    const v0, 0xffffff

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    :goto_f
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    return-void

    :cond_1a
    ushr-int/lit8 v2, p3, 0x18

    if-nez v2, :cond_24

    const/4 v0, 0x0

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    goto :goto_f

    :cond_24
    or-int v0, p3, v3

    and-int v1, p3, v3

    goto :goto_f
.end method

.method private refreshPreviewText()V
    .registers 11

    const v9, 0x7f120572

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v4, :cond_3d

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v7, v4, v8, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {v0, v2, v9}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    :goto_2a
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v7

    if-eqz v7, :cond_42

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_2a

    :cond_42
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3d
.end method

.method private refreshShowingCustom()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_1f

    iget-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_a

    :cond_1f
    if-eqz v0, :cond_1c

    iget-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1c
.end method

.method private removeSwitchBarToggleSwitch()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private updateAllPreferences()V
    .registers 12

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v5

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings/accessibility/PresetPreference;->setValue(I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValue(I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v9

    if-eqz v9, :cond_7e

    iget v4, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_38
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v4}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v9

    if-eqz v9, :cond_82

    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_47
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v9

    if-eqz v9, :cond_86

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :goto_56
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    iget-object v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    if-nez v7, :cond_66

    const-string/jumbo v7, ""

    :cond_66
    invoke-virtual {v9, v7}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-eqz v9, :cond_7d

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v6, :cond_7a

    const-string/jumbo v6, ""

    :cond_7a
    invoke-virtual {v9, v6}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    :cond_7d
    return-void

    :cond_7e
    const v4, 0xffffff

    goto :goto_38

    :cond_82
    const v1, 0xffffff

    goto :goto_47

    :cond_86
    const v8, 0xffffff

    goto :goto_56
.end method


# virtual methods
.method getLanguageItemFromList(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 15

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_10

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    if-nez p2, :cond_11

    :cond_10
    return-object v8

    :cond_11
    array-length v7, p2

    if-eqz v7, :cond_10

    const-string/jumbo v7, "-"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "GoogleSubTitle"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Target Language :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "GoogleSubTitle"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Language items:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_5f
    array-length v7, v1

    if-ge v2, v7, :cond_b7

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_66
    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_82
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v11, :cond_ab

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :cond_9f
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_ab
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v11, :cond_b7

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    :cond_b7
    return-object v5
.end method

.method public getMetricsCategory()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    :cond_d
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    const v0, 0x7f150036

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const/4 v4, -0x1

    const v2, 0x7f0d0064

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_16
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a068d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object v1
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "defalut"

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/SecListPreference;

    if-ne v3, p1, :cond_3f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "accessibility_captioning_typeface"

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string/jumbo p2, "defalut"

    :cond_28
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    const/4 v3, 0x1

    return v3

    :cond_3f
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-ne v3, p1, :cond_63

    const-string/jumbo v4, "accessibility_captioning_font_scale"

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_3a

    :cond_63
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v3, p1, :cond_3a

    const-string/jumbo v4, "accessibility_captioning_locale"

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7c

    const-string/jumbo p2, "defalut"

    :cond_7c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_3a
.end method

.method public onResume()V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_10

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_22

    :cond_10
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    const-string/jumbo v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1e
    :goto_1e
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void

    :cond_22
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_2a

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_39

    :cond_2a
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    const-string/jumbo v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1e

    :cond_39
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_41

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_50

    :cond_41
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    const-string/jumbo v2, "accessibility_captioning_window_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1e

    :cond_50
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_5b

    const-string/jumbo v2, "accessibility_captioning_edge_color"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1e

    :cond_5b
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v2, p1, :cond_69

    const-string/jumbo v2, "accessibility_captioning_preset"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_1e

    :cond_69
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v2, p1, :cond_1e

    const-string/jumbo v2, "accessibility_captioning_edge_type"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1e
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    const v1, 0x7f0a066d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v0, :cond_6d

    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    const v1, 0x7f0a066f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    const v1, 0x7f0a066e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance v2, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5c

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6f

    :cond_5c
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_6c
    return-void

    :cond_6d
    const/4 v1, 0x4

    goto :goto_19

    :cond_6f
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_6c
.end method
