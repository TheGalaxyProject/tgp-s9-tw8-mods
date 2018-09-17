.class Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "SoftwareInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

.field final synthetic val$keyConfig:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;Landroid/support/v7/preference/Preference;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$3;->val$keyConfig:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "forced_config_udpate"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "request_status"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$3;->val$keyConfig:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v7/preference/SecPreferenceConfig;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$3;->val$keyConfig:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v7/preference/SecPreferenceConfig;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    goto :goto_2f
.end method
