.class public Lcom/android/server/pm/KnoxKeyguardScrimView$BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KnoxKeyguardScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BootReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$BootReceiver;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "ACTION_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$BootReceiver;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-wrap2(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    :cond_1b
    return-void
.end method
