.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CalendarManager.java"


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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get5(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get7(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->controlCalendarDataServiceConnection(I)V

    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap3(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    :cond_c
    return-void
.end method
