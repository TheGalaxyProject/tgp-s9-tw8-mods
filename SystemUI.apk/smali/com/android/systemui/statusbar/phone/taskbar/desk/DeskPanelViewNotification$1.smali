.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;
.super Ljava/lang/Object;
.source "DeskPanelViewNotification.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->initViewHierarchyChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 9

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChangingPosition()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChangingPosition(Z)V

    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DeskPanelViewNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DPVNAA.onChildViewAdded-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/DebugLogUtils;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextNoneState()Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-wrap1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextHeadsUpState()Z

    move-result v3

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextPreviewState()Z

    move-result v3

    if-eqz v3, :cond_74

    :cond_4e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get8(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/view/View;)Z

    goto :goto_3d

    :cond_74
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextAllState()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->expand(Z)V

    goto :goto_3d
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 8

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChangingPosition()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get5(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_25
    return-void

    :cond_26
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DeskPanelViewNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DPVNAA.onChildViewRemoved-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/DebugLogUtils;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextNoneState()Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextAllState()Z

    move-result v2

    if-eqz v2, :cond_62

    :cond_58
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAllArea;->addView(Landroid/view/View;)V

    :cond_61
    :goto_61
    return-void

    :cond_62
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextHeadsUpState()Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->addView(Landroid/view/View;)V

    goto :goto_61

    :cond_80
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextPreviewState()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->addView(Landroid/view/View;)V

    goto :goto_61
.end method
