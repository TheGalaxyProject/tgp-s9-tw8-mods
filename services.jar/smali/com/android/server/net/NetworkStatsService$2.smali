.class Lcom/android/server/net/NetworkStatsService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;I)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$2;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-wrap4(Lcom/android/server/net/NetworkStatsService;)V

    return-void
.end method