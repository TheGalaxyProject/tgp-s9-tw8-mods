.class Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$3;
.super Ljava/lang/Object;
.source "ZenModeDNDAutomationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_29

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/notification/RadioPreference;

    if-eqz v3, :cond_26

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/RadioPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_29
    instance-of v3, p1, Lcom/samsung/android/settings/notification/RadioPreference;

    if-eqz v3, :cond_33

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :cond_33
    return v4
.end method
