.class Lcom/android/server/pm/KnoxKeyguardScrimView$5;
.super Landroid/content/BroadcastReceiver;
.source "KnoxKeyguardScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$5;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KnoxKeyguardScrimView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scrim receiver onReceive. action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string/jumbo v1, "KnoxKeyguardScrimView"

    const-string/jumbo v2, "ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$5;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-wrap2(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_48
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$5;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    iget-object v1, v1, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHandler:Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->sendEmptyMessage(I)Z

    goto :goto_35
.end method
