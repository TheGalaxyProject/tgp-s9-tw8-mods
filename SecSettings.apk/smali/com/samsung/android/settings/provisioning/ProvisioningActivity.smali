.class public Lcom/samsung/android/settings/provisioning/ProvisioningActivity;
.super Landroid/app/Activity;
.source "ProvisioningActivity.java"


# instance fields
.field private mProvisionApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->finish()V

    :goto_1d
    return-void

    :cond_1e
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->mProvisionApp:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->mProvisionApp:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "TETHER_TYPE"

    invoke-virtual {p0}, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "TETHER_TYPE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/settings/provisioning/ProvisioningActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1d
.end method
