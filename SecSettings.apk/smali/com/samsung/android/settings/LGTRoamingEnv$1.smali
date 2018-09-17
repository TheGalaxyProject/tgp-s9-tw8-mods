.class Lcom/samsung/android/settings/LGTRoamingEnv$1;
.super Landroid/content/BroadcastReceiver;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const v7, 0x7f1208f1

    const/16 v6, 0x64

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "LGTRoamingEnv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReceiver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "kr.co.uplus.UPDATE_COUNTRY_INFO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTRoamingEnv$1;->getResultCode()I

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get4(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get8(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_53

    :try_start_44
    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get8(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set3(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return-void

    :catch_54
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_53

    :cond_59
    const-string/jumbo v2, "LGTRoamingEnv"

    const-string/jumbo v3, "remove ADD_NATION_POPUP_TIME_EXPIRED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get4(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v2, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get4(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    const/16 v3, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_82
    const-string/jumbo v2, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get3()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_96
    :goto_96
    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get8(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_cd

    const-string/jumbo v2, "LGTRoamingEnv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "after update simver = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v4}, Lcom/samsung/android/settings/LGTRoamingEnv;->-wrap1(Lcom/samsung/android/settings/LGTRoamingEnv;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_be
    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get8(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$1;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set3(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_cd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_cd} :catch_fb

    :cond_cd
    :goto_cd
    return-void

    :cond_ce
    const-string/jumbo v2, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get3()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1208ea

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_96

    :cond_e6
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get3()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_96

    :catch_fb
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_cd
.end method
