.class final Lcom/android/server/display/AutomaticBrightnessController$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutdownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShutdownReceiver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Lcom/android/server/display/AutomaticBrightnessController$ShutdownReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$ShutdownReceiver;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShutdownReceiver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-get15(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_14
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$ShutdownReceiver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-get18(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1f

    monitor-exit v2

    :cond_1e
    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method
