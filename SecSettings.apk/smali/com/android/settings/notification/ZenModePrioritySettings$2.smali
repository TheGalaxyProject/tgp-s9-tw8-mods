.class Lcom/android/settings/notification/ZenModePrioritySettings$2;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModePrioritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get0(Lcom/android/settings/notification/ZenModePrioritySettings;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v6

    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get1(Lcom/android/settings/notification/ZenModePrioritySettings;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v3, 0xa8

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    sget-boolean v1, Lcom/android/settings/notification/ZenModePrioritySettings;->DEBUG:Z

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrefChange allowEvents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/settings/notification/ZenModePrioritySettings;->-wrap0(Lcom/android/settings/notification/ZenModePrioritySettings;ZI)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v3}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get2(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v4}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get2(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v4, v4, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget-object v5, p0, Lcom/android/settings/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get2(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    iget v5, v5, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->-wrap1(Lcom/android/settings/notification/ZenModePrioritySettings;IIII)V

    return v6
.end method
