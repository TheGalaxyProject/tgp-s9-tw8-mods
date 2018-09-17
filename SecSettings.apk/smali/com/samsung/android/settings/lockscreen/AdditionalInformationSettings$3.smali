.class Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;
.super Ljava/lang/Object;
.source "AdditionalInformationSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MusicControllerOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    const-string/jumbo v3, "servicebox_music"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getPositionByKey(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getChecked(I)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MusicController"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->notifyDataSetChanged()V

    return-void

    :cond_61
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->setChecked(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MusicController"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_94
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_57

    :cond_a0
    const-string/jumbo v2, "MusicControllerOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    const-string/jumbo v3, "servicebox_music"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getPositionByKey(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getChecked(I)Z

    move-result v2

    if-nez v2, :cond_ed

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MusicController"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_ed
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->setChecked(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_120

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MusicController"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_120
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_12d
    const-string/jumbo v2, "TodaysScheduleOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    const-string/jumbo v3, "servicebox_calendar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getPositionByKey(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getChecked(I)Z

    move-result v2

    if-eqz v2, :cond_17a

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "TodaysSchedule"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_17a
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->setChecked(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1ad

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "TodaysSchedule"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1ad
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_1ba
    const-string/jumbo v2, "TodaysScheduleOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_247

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    const-string/jumbo v3, "servicebox_calendar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getPositionByKey(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getChecked(I)Z

    move-result v2

    if-nez v2, :cond_207

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "TodaysSchedule"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_207
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->setChecked(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_23a

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "TodaysSchedule"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23a
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_247
    const-string/jumbo v2, "NextAlarmOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d4

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    const-string/jumbo v3, "servicebox_alarm"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getPositionByKey(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getChecked(I)Z

    move-result v2

    if-eqz v2, :cond_294

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NextAlarm"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_294
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->setChecked(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2c7

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NextAlarm"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2c7
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_2d4
    const-string/jumbo v2, "NextAlarmOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_361

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    const-string/jumbo v3, "servicebox_alarm"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getPositionByKey(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getChecked(I)Z

    move-result v2

    if-nez v2, :cond_321

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NextAlarm"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_321
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->setChecked(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_354

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NextAlarm"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_354
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_361
    const-string/jumbo v2, "FaceWidgetsReorder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get2(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Z

    move-result v2

    if-nez v2, :cond_3ae

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3a1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgetsReorder"

    const-string/jumbo v4, "exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3a1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_57

    :cond_3ae
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
