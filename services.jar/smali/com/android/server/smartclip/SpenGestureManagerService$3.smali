.class Lcom/android/server/smartclip/SpenGestureManagerService$3;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get5()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_quick_note"

    const/4 v8, -0x2

    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_18

    move v3, v4

    :cond_18
    invoke-static {v5, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set5(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get9(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4d

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Double tap is disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v5}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get9(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4d
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap2(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v3

    if-eqz v3, :cond_5e

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Double tap is disabled : Screen pinning mode enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5e
    :try_start_5e
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Double tapped!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap1(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v3

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.PEN_GESTURE_PENMEMO_ACTION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/android/server/smartclip/SpenGestureManagerService;->-set7(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/content/Intent;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get5()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v5}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get11(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get14(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get15(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get15(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    :cond_a5
    if-eq v0, v4, :cond_a9

    if-ne v0, v9, :cond_b9

    :cond_a9
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get5()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.intent.spengesture.DOUBLE_TAB"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_b8
    return-void

    :cond_b9
    if-eq v1, v4, :cond_a9

    if-eq v1, v9, :cond_a9

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$3;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap7(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_c2} :catch_c3

    goto :goto_b8

    :catch_c3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b8
.end method
