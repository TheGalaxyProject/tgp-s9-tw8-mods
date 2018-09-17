.class public abstract Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "DefaultAppPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    }
.end annotation


# instance fields
.field protected mPm:Lcom/android/settings/applications/PackageManagerWrapper;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    instance-of v0, p3, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f121b9e

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    move-object v0, p3

    check-cast v0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    iget-object v0, v0, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->summary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    check-cast p3, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    iget-object v0, p3, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method protected getConfirmationMessage(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/CharSequence;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->newInstance(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getCandidate(Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getConfirmationMessage(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->sendSALogging()V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    if-eqz v0, :cond_1c

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "DefaultAppConfirm"

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method protected onSelectionPerformed(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_d
    return-void
.end method

.method public sendSALogging()V
    .registers 1

    return-void
.end method

.method protected setDescriptionText()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected setLayoutResource()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected showNonePrefIcon()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public updateCandidates()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->setDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    new-instance v0, Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/UnclickablePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/UnclickablePreference;->setOrder(I)V

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_24
    return-void
.end method
