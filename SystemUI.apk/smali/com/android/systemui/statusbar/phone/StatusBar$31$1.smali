.class Lcom/android/systemui/statusbar/phone/StatusBar$31$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$31;->onListenerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

.field final synthetic val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$notifications:[Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_1d

    aget-object v1, v3, v2

    :try_start_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v5, v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_11
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_8 .. :try_end_11} :catch_14

    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_14
    move-exception v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    goto :goto_11

    :cond_1d
    return-void
.end method
