.class Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

.field final synthetic val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setPulsing(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPulsing(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_23

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPulsing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    if-eqz p1, :cond_25

    :goto_1f
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPulsing(Z)V

    return-void

    :cond_23
    move v0, v2

    goto :goto_14

    :cond_25
    move v1, v2

    goto :goto_1f
.end method


# virtual methods
.method public onPulseFinished()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->setPulsing(Ljava/util/Collection;)V

    return-void
.end method

.method public onPulseStarted()V
    .registers 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getAllEntries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;->setPulsing(Ljava/util/Collection;)V

    :cond_18
    return-void
.end method
