.class Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference$1;
.super Ljava/lang/Object;
.source "ApplicationsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference$1;->this$1:Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 6

    invoke-static {}, Lcom/samsung/android/settings/ApplicationsSettings;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference$1;->this$1:Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/ApplicationsSettings$AppSettingsPreference;->this$0:Lcom/samsung/android/settings/ApplicationsSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "gene"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/4 v1, 0x0

    return v1
.end method
