.class public Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;
.super Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;
.source "FailedPasswordWipeManagedProfilePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method protected getMaximumFailedPasswordsBeforeWipe()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getMaximumFailedPasswordsBeforeWipeInManagedProfile()I

    move-result v0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "failed_password_wipe_managed_profile"

    return-object v0
.end method
