.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;
.super Ljava/lang/Object;
.source "BixbyUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBixbyMode(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "setupwizard_bixby_mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "BixbyUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bixby mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isBixbyMode(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "setupwizard_bixby_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v2, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mLaunchModeEmail:Z

    if-nez v2, :cond_14

    if-ne v0, v1, :cond_14

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 10

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    if-nez p0, :cond_6

    return v6

    :cond_6
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_12

    return v6

    :cond_12
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_19

    return v6

    :cond_19
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v8, :cond_23

    const/16 v5, 0x9

    if-ne v3, v5, :cond_28

    :cond_23
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    return v5

    :cond_28
    const-string/jumbo v5, "ril.app.pco"

    invoke-static {v5, v7}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "ril.cold_sim"

    invoke-static {v5, v7}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3c

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3d

    :cond_3c
    return v6

    :cond_3d
    const/4 v5, 0x5

    if-eq v4, v5, :cond_3c

    if-eq v0, v8, :cond_3c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    return v5
.end method

.method public static final setBixbyMode(Landroid/content/Context;I)V
    .registers 5

    const-string/jumbo v0, "BixbyUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting bixby mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setupwizard_bixby_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2c

    const/4 v0, 0x0

    :goto_28
    invoke-static {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->setBixbyModeAgree(Landroid/content/Context;Z)V

    return-void

    :cond_2c
    const/4 v0, 0x1

    goto :goto_28
.end method

.method private static final setBixbyModeAgree(Landroid/content/Context;Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "samsung_suw_bixby_mode_agree"

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method
