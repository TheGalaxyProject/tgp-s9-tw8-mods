.class Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;
.super Ljava/lang/Object;
.source "NotificationsSubSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get7(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get2(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-wrap2(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get4(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_23
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get6(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get2(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-wrap2(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get4(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_47
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get5(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get2(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-wrap2(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get4(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_68
    return-void
.end method
