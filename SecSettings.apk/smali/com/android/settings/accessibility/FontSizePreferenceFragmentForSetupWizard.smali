.class public Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;
.source "FontSizePreferenceFragmentForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x171

    return v0
.end method

.method public onStop()V
    .registers 5

    iget v0, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mCurrentIndex:I

    iget v1, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mInitialIndex:I

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mCurrentIndex:I

    const/16 v3, 0x171

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_13
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->onStop()V

    return-void
.end method
