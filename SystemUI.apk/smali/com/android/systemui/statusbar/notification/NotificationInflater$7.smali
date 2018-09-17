.class final Lcom/android/systemui/statusbar/notification/NotificationInflater$7;
.super Ljava/lang/Object;
.source "NotificationInflater.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

.field final synthetic val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field final synthetic val$existingView:Landroid/view/View;

.field final synthetic val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field final synthetic val$inflationId:I

.field final synthetic val$isNewView:Z

.field final synthetic val$newContentView:Landroid/widget/RemoteViews;

.field final synthetic val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field final synthetic val$reInflateFlags:I

.field final synthetic val$redactAmbient:Z

.field final synthetic val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$runningInflations:Ljava/util/HashMap;


# direct methods
.method constructor <init>(ZLcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationContentView;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;ZLandroid/view/View;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .registers 16

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$isNewView:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$runningInflations:Ljava/util/HashMap;

    iput p7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$inflationId:I

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iput p9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$reInflateFlags:I

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iput-boolean p11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$redactAmbient:Z

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingView:Landroid/view/View;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$newContentView:Landroid/widget/RemoteViews;

    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 8

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$isNewView:Z

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v1

    :goto_14
    sget-boolean v2, Lcom/android/systemui/Rune;->IS_ENG_BUILD:Z

    if-eqz v2, :cond_58

    const-string/jumbo v2, "Failed to inflate async"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string/jumbo v2, "NotificationInflater"

    const-string/jumbo v3, "[TEST] Async Inflation failed but normal inflation finished normally."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->onViewApplied(Landroid/view/View;)V

    :goto_31
    return-void

    :cond_32
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_14

    :catch_40
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$runningInflations:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$inflationId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$runningInflations:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    invoke-static {v2, p1, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->-wrap2(Ljava/util/HashMap;Ljava/lang/Exception;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    goto :goto_31

    :cond_58
    :try_start_58
    const-string/jumbo v2, "NotificationInflater"

    const-string/jumbo v3, "Async Inflation failed but normal inflation finished normally."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_40

    goto :goto_2e
.end method

.method public onViewApplied(Landroid/view/View;)V
    .registers 9

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$isNewView:Z

    if-eqz v0, :cond_28

    invoke-virtual {p1, v3}, Landroid/view/View;->setIsRootNamespace(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$reInflateFlags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$runningInflations:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$redactAmbient:Z

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->-wrap0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onReinflated()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->flattenTextColor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->needUpdateNotificationContentColor(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_5d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isActivated()Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldApplyInvertColor()Z

    move-result v6

    :goto_69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->updateContentColor(Z)V

    goto :goto_d

    :cond_6f
    const/4 v6, 0x0

    goto :goto_69
.end method
