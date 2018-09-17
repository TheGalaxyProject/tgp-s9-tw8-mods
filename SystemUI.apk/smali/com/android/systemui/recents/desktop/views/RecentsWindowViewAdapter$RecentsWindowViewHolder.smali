.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecentsWindowViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowViewAdapter$PluginRecentsWindowViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentsWindowViewHolder"
.end annotation


# instance fields
.field contentView:Landroid/view/View;

.field dismissView:Landroid/widget/ImageView;

.field focusView:Landroid/view/View;

.field iconView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field lockView:Landroid/widget/ImageView;

.field task:Lcom/android/systemui/recents/model/Task;

.field taskView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

.field thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getDismissView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLockView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTaskView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    if-ne v1, v3, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->toggleLockState()V

    return-void

    :cond_18
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_5c

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "overview_task_dismissed_source"

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ne v0, v1, :cond_4a

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_3a
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_4a
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-static {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->-get0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_3a

    :cond_5c
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_6f

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_6f
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_77

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->toggleLockState()V

    :goto_76
    return-void

    :cond_77
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-static {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->-get0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->startTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_76
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    :goto_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mHoveredForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :pswitch_13
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :pswitch_data_1a
    .packed-switch 0x9
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTaskDataUnloaded()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTaskStackIdChanged()V
    .registers 1

    return-void
.end method

.method public setFocus(Z)V
    .registers 4

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    const v1, 0x7f080585

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    goto :goto_1c
.end method

.method toggleLockState()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->-wrap0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;-><init>(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_2b
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->updateViewLockState()V

    return-void

    :cond_2f
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/ui/RecentsAppLockEvent;-><init>(Lcom/android/systemui/recents/model/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2b
.end method

.method updateViewLockState()V
    .registers 9

    const/high16 v7, 0x800000

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_90

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_72

    move v1, v2

    :goto_1b
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->unlockDescription:Ljava/lang/String;

    :goto_2a
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f12095b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_46
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_49
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_85

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_71
    :goto_71
    return-void

    :cond_72
    move v1, v3

    goto :goto_1b

    :cond_74
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->lockDescription:Ljava/lang/String;

    goto :goto_2a

    :cond_79
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f12095f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_85
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_71

    :cond_90
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v1, :cond_e1

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->unlockDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120961

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_71

    :cond_e1
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_71
.end method
