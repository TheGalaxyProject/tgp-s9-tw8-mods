.class Lcom/android/systemui/recents/RecentsImpl$5;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;I)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;

.field triggered:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$5;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl$5;->triggered:Z

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl$5;->triggered:Z

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl$5;->triggered:Z

    :cond_13
    return-void
.end method