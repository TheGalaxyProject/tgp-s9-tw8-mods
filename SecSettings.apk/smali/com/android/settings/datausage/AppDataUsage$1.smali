.class Lcom/android/settings/datausage/AppDataUsage$1;
.super Landroid/database/ContentObserver;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "AppDataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPcoSettingObserver onChange(selfChange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v2}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_3b

    :cond_31
    const-string/jumbo v2, "AppDataUsage"

    const-string/jumbo v3, "Invalid context or content-resolver"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "background_data_by_pco"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v6, :cond_9e

    const/4 v1, 0x1

    :goto_49
    const-string/jumbo v2, "AppDataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPcoSettingObserver restrictBackgroundByPco: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_a0

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->-get9(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v2}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get9(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7c
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->-get13(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v2}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get13(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_93
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2, v5}, Lcom/android/settings/datausage/AppDataUsage;->-set3(Lcom/android/settings/datausage/AppDataUsage;Landroid/support/v14/preference/SecSwitchPreference;)Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2, v5}, Lcom/android/settings/datausage/AppDataUsage;->-set5(Lcom/android/settings/datausage/AppDataUsage;Landroid/support/v14/preference/SecSwitchPreference;)Landroid/support/v14/preference/SecSwitchPreference;

    :goto_9d
    return-void

    :cond_9e
    const/4 v1, 0x0

    goto :goto_49

    :cond_a0
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->-get1(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object v2

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    if-lez v2, :cond_ba

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->-get1(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object v2

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_dd

    :cond_ba
    const-string/jumbo v2, "AppDataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Returning due to invalid app item key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v4}, Lcom/android/settings/datausage/AppDataUsage;->-get1(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object v4

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_dd
    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-get0()Z

    move-result v2

    if-nez v2, :cond_108

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get10(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/datausage/AppDataUsage;->-set3(Lcom/android/settings/datausage/AppDataUsage;Landroid/support/v14/preference/SecSwitchPreference;)Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->-get9(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v2}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get9(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_108
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get14(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/datausage/AppDataUsage;->-set5(Lcom/android/settings/datausage/AppDataUsage;Landroid/support/v14/preference/SecSwitchPreference;)Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->-get13(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v2}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v3}, Lcom/android/settings/datausage/AppDataUsage;->-get13(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v2}, Lcom/android/settings/datausage/AppDataUsage;->-wrap4(Lcom/android/settings/datausage/AppDataUsage;)V

    goto/16 :goto_9d
.end method
