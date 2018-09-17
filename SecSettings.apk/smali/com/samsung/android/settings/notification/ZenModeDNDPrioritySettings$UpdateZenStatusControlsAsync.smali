.class Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;
.super Landroid/os/AsyncTask;
.source "ZenModeDNDPrioritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateZenStatusControlsAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_7

    :goto_5
    const/4 v1, 0x0

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get13(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/app/AutomaticZenRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    :cond_2b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Z)V

    :cond_33
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap9(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap8(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings$UpdateZenStatusControlsAsync;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;->-wrap5(Lcom/samsung/android/settings/notification/ZenModeDNDPrioritySettings;Z)V

    return-void
.end method
