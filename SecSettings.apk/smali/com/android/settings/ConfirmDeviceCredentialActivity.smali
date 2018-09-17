.class public Lcom/android/settings/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-class v2, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object v0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    const-string/jumbo v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_16
    return-object v2

    :cond_17
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private isInternalActivity()Z
    .registers 2

    instance-of v0, p0, Lcom/android/settings/ConfirmDeviceCredentialActivity$InternalActivity;

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 16

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v8

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_27

    :try_start_1f
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_26} :catch_6c

    move-result v8

    :cond_27
    :goto_27
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v10

    if-nez v3, :cond_76

    if-eqz v10, :cond_76

    invoke-direct {p0, v8}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v3

    :cond_37
    :goto_37
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v12, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_80

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {v12, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_80

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z

    move-result v11

    :goto_5a
    if-nez v11, :cond_68

    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No pattern, password or PIN set."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->setResult(I)V

    :cond_68
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->finish()V

    return-void

    :catch_6c
    move-exception v13

    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid intent extra"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    :cond_76
    if-nez v3, :cond_37

    const v1, 0x7f121093

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_80
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z

    move-result v11

    goto :goto_5a
.end method
