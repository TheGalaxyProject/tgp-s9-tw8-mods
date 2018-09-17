.class Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService$1;
.super Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService$Stub;
.source "CalendarDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v8

    :cond_a
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_16

    return-object v8

    :cond_16
    :try_start_16
    new-instance v7, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    invoke-direct {v7, p1, v6}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;-><init>(ILandroid/database/Cursor;)V

    invoke-virtual {v7}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->toBundleList()Ljava/util/List;
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_23

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_23
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method
