.class Lcom/samsung/android/settings/PrivacySettings$2;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    instance-of v3, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    return v3

    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    if-ne p1, v3, :cond_35

    :try_start_15
    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/PrivacySettings;->-get3(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_36

    const/4 v2, 0x1

    :goto_1f
    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_35
    return v2

    :catch_36
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_1f
.end method
