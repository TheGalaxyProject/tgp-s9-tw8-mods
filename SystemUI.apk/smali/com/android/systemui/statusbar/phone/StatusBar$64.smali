.class Lcom/android/systemui/statusbar/phone/StatusBar$64;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->onWorkChallengeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get39(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_d
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v5, :cond_19

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_d

    :cond_19
    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v5, :cond_32

    move-object v3, v4

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->makeActionsVisibile()V

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$64$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$64$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$64;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void
.end method
