.class final synthetic Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;->-$f2:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->lambda$-com_android_systemui_recents_views_TaskViewHeader_86026(Landroid/animation/ObjectAnimator;Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/-$Lambda$hQaimOj_QWkmcZjwDHK9fdJfnPc$6;->$m$0()V

    return-void
.end method
