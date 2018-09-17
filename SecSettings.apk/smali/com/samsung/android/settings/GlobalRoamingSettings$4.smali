.class Lcom/samsung/android/settings/GlobalRoamingSettings$4;
.super Landroid/database/ContentObserver;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalRoamingSettings;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    const v2, 0x7f120f8c

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    :goto_23
    return-void

    :cond_24
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v1

    const v2, 0x7f120f8b

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_23

    :catch_31
    move-exception v0

    goto :goto_23
.end method
