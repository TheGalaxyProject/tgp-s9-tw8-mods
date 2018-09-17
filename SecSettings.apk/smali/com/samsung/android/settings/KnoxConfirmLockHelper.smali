.class public Lcom/samsung/android/settings/KnoxConfirmLockHelper;
.super Ljava/lang/Object;
.source "KnoxConfirmLockHelper.java"


# static fields
.field private static maxAttempts:I

.field private static totalAttempts:I


# instance fields
.field private lockPolicy:I

.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private mSFMaxAttempts:Z

.field private mUserId:I

.field private maximumFailedPasswordsForDisable:I

.field private maximumFailedPasswordsForWipe:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sput v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mSFMaxAttempts:Z

    iput-object p1, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->getLockAttemptPolicy()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDialogTheme:I

    return-void
.end method

.method private ShowDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getLockAttemptPolicy()V
    .registers 10

    const/16 v8, 0x3e8

    const/16 v7, 0x3e9

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/enterprise/BasePasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v4

    if-eqz v4, :cond_5f

    const/16 v4, 0x14

    sput v4, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v7, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    :goto_56
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v4

    sput v4, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    return-void

    :cond_5f
    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v4, :cond_6e

    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gtz v4, :cond_6e

    sput v6, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    const/16 v4, 0x3ea

    iput v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_56

    :cond_6e
    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v4, :cond_79

    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v4, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v7, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_56

    :cond_79
    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gtz v4, :cond_84

    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v4, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v8, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_56

    :cond_84
    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gt v4, v5, :cond_91

    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v4, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v8, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_56

    :cond_91
    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v4, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v7, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_56
.end method

.method private sendAdminLockEvent(I)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "knox.container.proxy.POLICY_ADMIN_LOCK"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private setSFMaxAttempts(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mSFMaxAttempts:Z

    return-void
.end method


# virtual methods
.method public checkNumberOfAttempts()V
    .registers 14

    const/4 v12, 0x2

    const/16 v8, 0x3e8

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    xor-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_2d

    const/4 v4, 0x0

    :goto_18
    iget-object v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v4}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v7, 0x3ea

    if-ne v6, v7, :cond_30

    const-string/jumbo v6, "KnoxConfirmLockHelper"

    const-string/jumbo v7, "checkNumberOfAttempts(): LOCK_POLICY_NO_POLICY"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    iget v4, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    goto :goto_18

    :cond_30
    iget-object v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v4}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->setSFMaxAttempts(Z)V

    sget v6, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v7, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    if-lt v6, v7, :cond_108

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v6

    if-nez v6, :cond_4f

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->resetNumberOfAttempts()V

    iget-object v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/SemPersonaManager;->launchPersonaHome(I)Z

    :cond_4f
    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v6, v8, :cond_b1

    const-string/jumbo v6, "KnoxConfirmLockHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkNumberOfAttempts(): LOCK_POLICY_WIPE, remove container userId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6f
    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    invoke-static {v6}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->removeContainer(I)I

    move-result v1

    if-nez v1, :cond_78

    :cond_77
    :goto_77
    return-void

    :cond_78
    sparse-switch v1, :sswitch_data_1b2

    const-string/jumbo v6, "KnoxConfirmLockHelper"

    const-string/jumbo v7, "UNKNOWN ERROR"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/SecurityException; {:try_start_6f .. :try_end_84} :catch_85

    goto :goto_77

    :catch_85
    move-exception v0

    const-string/jumbo v6, "KnoxConfirmLockHelper"

    const-string/jumbo v7, "Exception when remove container"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_77

    :sswitch_93
    :try_start_93
    const-string/jumbo v6, "KnoxConfirmLockHelper"

    const-string/jumbo v7, "ERROR_INTERNAL_ERROR"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :sswitch_9d
    const-string/jumbo v6, "KnoxConfirmLockHelper"

    const-string/jumbo v7, "ERROR_DOES_NOT_EXIST"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :sswitch_a7
    const-string/jumbo v6, "KnoxConfirmLockHelper"

    const-string/jumbo v7, "ERROR_NOT_CONTAINER_OWNER"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/SecurityException; {:try_start_93 .. :try_end_b0} :catch_85

    goto :goto_77

    :cond_b1
    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_fd

    const-string/jumbo v6, "KnoxConfirmLockHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkNumberOfAttempts(): LOCK_POLICY_DISABLE, disable container userId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v6

    if-eqz v6, :cond_ed

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->setSFMaxAttempts(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "trust"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/trust/TrustManager;

    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v5, v6, v10}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    goto :goto_77

    :cond_ed
    const-string/jumbo v6, "KnoxConfirmLockHelper"

    const-string/jumbo v7, "Triggering lock !"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->sendAdminLockEvent(I)V

    goto/16 :goto_77

    :cond_fd
    const-string/jumbo v6, "KnoxConfirmLockHelper"

    const-string/jumbo v7, "checkNumberOfAttempts(): Something was wrong"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77

    :cond_108
    sget v6, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v7, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_152

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v6

    if-nez v6, :cond_77

    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v6, v8, :cond_136

    iget-object v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f120dda

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    sget v8, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v11, v6}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    :cond_136
    iget-object v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f120dd6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    sget v8, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v11, v6}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    :cond_152
    sget v6, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v7, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v6, v7

    const/4 v7, 0x5

    if-ge v6, v7, :cond_77

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v6

    if-nez v6, :cond_77

    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v6, v8, :cond_18b

    iget-object v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f120ddc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    sget v8, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    sget v8, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v9, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v11, v6}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    :cond_18b
    iget-object v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f120dd8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    sget v8, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    sget v8, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v9, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v11, v6}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    :sswitch_data_1b2
    .sparse-switch
        -0x4b3 -> :sswitch_a7
        -0x4b2 -> :sswitch_9d
        -0x3f6 -> :sswitch_93
    .end sparse-switch
.end method

.method public isSFAttemptDefaultFailed()Z
    .registers 3

    sget v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isSFMaxAttempts()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mSFMaxAttempts:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public resetNumberOfAttempts()V
    .registers 3

    const-string/jumbo v0, "KnoxConfirmLockHelper"

    const-string/jumbo v1, "resetting totalAttempts to 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    return-void
.end method

.method public setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_e

    const-string/jumbo v0, "KnoxConfirmLockHelper"

    const-string/jumbo v1, "textview is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_24

    const v0, 0x7f12109c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v0, "KnoxConfirmLockHelper"

    const-string/jumbo v1, "setRemainingNumberOfAttemptsText(): LOCK_POLICY_NO_POLICY"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    sget v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v1, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    if-ne v0, v1, :cond_3a

    iget v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    :cond_3a
    sget v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_44

    return-void

    :cond_44
    sget v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    if-ne v0, v2, :cond_64

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f120eb7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_63
    return-void

    :cond_64
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f120eb8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget v2, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v3, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_63
.end method
