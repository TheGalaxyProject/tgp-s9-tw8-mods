.class Lcom/android/settings/datausage/DataUsageSummary$2;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->-get8(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->-get8(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$2;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->-get8(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1e
.end method
