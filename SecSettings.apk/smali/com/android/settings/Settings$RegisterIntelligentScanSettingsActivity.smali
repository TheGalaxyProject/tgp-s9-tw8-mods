.class public Lcom/android/settings/Settings$RegisterIntelligentScanSettingsActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterIntelligentScanSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/Settings$RegisterIntelligentScanSettingsActivity;->finish()V

    return-void

    :cond_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/Settings$RegisterIntelligentScanSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/smartscan/SmartScanEntry;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    const-string/jumbo v3, "intelligentscan_register_external"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2d
    invoke-virtual {p0, v1}, Lcom/android/settings/Settings$RegisterIntelligentScanSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_30} :catch_34
    .catchall {:try_start_2d .. :try_end_30} :catchall_42

    invoke-virtual {p0}, Lcom/android/settings/Settings$RegisterIntelligentScanSettingsActivity;->finish()V

    :goto_33
    return-void

    :catch_34
    move-exception v0

    :try_start_35
    const-string/jumbo v2, "SsstSettings_internal"

    const-string/jumbo v3, "runRegister : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_42

    invoke-virtual {p0}, Lcom/android/settings/Settings$RegisterIntelligentScanSettingsActivity;->finish()V

    goto :goto_33

    :catchall_42
    move-exception v2

    invoke-virtual {p0}, Lcom/android/settings/Settings$RegisterIntelligentScanSettingsActivity;->finish()V

    throw v2
.end method
