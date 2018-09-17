.class Lcom/android/server/SdpLogService$SdpLogHandler;
.super Landroid/os/Handler;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpLogHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SdpLogService.Handler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpLogService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/SdpLogService$SdpLogHandler;->this$0:Lcom/android/server/SdpLogService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/server/SdpLogService$SdpLogHandler;->this$0:Lcom/android/server/SdpLogService;

    invoke-static {v1}, Lcom/android/server/SdpLogService;->-wrap1(Lcom/android/server/SdpLogService;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const-string/jumbo v1, "Save into File!"

    invoke-static {v1}, Lcom/android/server/SdpLogService;->-wrap0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SdpLogService$SdpLogHandler;->this$0:Lcom/android/server/SdpLogService;

    invoke-static {v1}, Lcom/android/server/SdpLogService;->-wrap2(Lcom/android/server/SdpLogService;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_9

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "SdpLogService.Handler"

    const-string/jumbo v2, "Exception occurred during message handling..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method
