.class public Lcom/android/settings/development/OemUnlockUtils;
.super Ljava/lang/Object;
.source "OemUnlockUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isOemUnlockAllowed(Landroid/os/UserManager;)Z
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v1, "no_oem_unlock"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    :goto_18
    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_1b
    const/4 v1, 0x1

    goto :goto_18
.end method

.method static isOemUnlockEnabled(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method static setOemUnlockEnabled(Landroid/content/Context;Z)V
    .registers 7

    :try_start_0
    const-string/jumbo v2, "persistent_data_block"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v1, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "SDOU"

    if-eqz p1, :cond_1a

    const/16 v2, 0x3e8

    :goto_16
    invoke-static {p0, v3, v4, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_19} :catch_1c

    :goto_19
    return-void

    :cond_1a
    const/4 v2, 0x0

    goto :goto_16

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "OemUnlockUtils"

    const-string/jumbo v3, "Fail to set oem unlock."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method
