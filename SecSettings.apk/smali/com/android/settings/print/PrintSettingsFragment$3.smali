.class Lcom/android/settings/print/PrintSettingsFragment$3;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintSettingsFragment;->newAddServicePreferenceOrNull()Lcom/android/settingslib/RestrictedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastClickTime:J

.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 9

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->mLastClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    return v6

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->mLastClickTime:J

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->-wrap1(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_22

    :try_start_1d
    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$3;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2, v0}, Lcom/android/settings/print/PrintSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return v6

    :catch_23
    move-exception v1

    const-string/jumbo v2, "PrintSettingsFragment"

    const-string/jumbo v3, "Unable to start activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method
