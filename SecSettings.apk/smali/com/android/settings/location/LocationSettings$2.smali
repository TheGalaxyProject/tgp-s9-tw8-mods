.class Lcom/android/settings/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 7

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get8(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;

    move-result-object v1

    const-string/jumbo v2, "no_share_location"

    xor-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v4}, Lcom/android/settings/location/LocationSettings;->-get5(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings$2;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/LocationSettings;->-get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object v2

    if-eqz v0, :cond_2e

    const v1, 0x7f121b7e

    :goto_29
    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    const/4 v1, 0x1

    return v1

    :cond_2e
    const v1, 0x7f121b7d

    goto :goto_29
.end method
