.class Lcom/samsung/android/settings/notification/BlockNotificationList$6;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap3(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_27
    const-string/jumbo v1, "AppNotificationsListOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string/jumbo v1, "AppNotificationsListOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string/jumbo v1, "AppNotificationsListApplicationNameOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string/jumbo v1, "AppNotificationsListApplicationNameOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    :cond_4b
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_70

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get6(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get11(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_70
    :goto_70
    return-void

    :cond_71
    const-string/jumbo v1, "AdvancedNoficiations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    const-string/jumbo v1, "AdvancedNotifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    :cond_83
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-wrap4(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Advancednotifications"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_70
.end method
