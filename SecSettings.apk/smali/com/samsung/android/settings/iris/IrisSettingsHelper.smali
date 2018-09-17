.class public Lcom/samsung/android/settings/iris/IrisSettingsHelper;
.super Ljava/lang/Object;
.source "IrisSettingsHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFaceLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z
    .registers 5

    const/4 v1, 0x1

    const/16 v0, 0x100

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z
    .registers 5

    const/4 v1, 0x1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static getIrisLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z
    .registers 5

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static removeBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 5

    if-nez p1, :cond_c

    const-string/jumbo v0, "IrisSettingsHelper"

    const-string/jumbo v1, "lpu is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x1000

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    const/16 v0, 0x100

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_22
    const/16 v0, 0x10

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method public static setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 5

    const-string/jumbo v0, "IrisSettingsHelper"

    const-string/jumbo v1, "setBiometricIrisLock"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_15

    const-string/jumbo v0, "IrisSettingsHelper"

    const-string/jumbo v1, "lpu is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x1000

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_20
    const/16 v0, 0x100

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    const/16 v0, 0x10

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method
