.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-set2(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_44

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap5(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v2, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap2(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3d
    .catchall {:try_start_19 .. :try_end_3d} :catchall_4a

    :goto_3d
    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->notifyEventChanged()V

    return-void

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap7(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4a

    goto :goto_3d

    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
