.class Lcom/android/server/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c4

    :goto_9
    return-void

    :pswitch_a
    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "receiver delay check network message"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get10(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap3(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get10(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_30
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get13(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_63

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get15(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get4(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_63

    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "Screen is off,skip check"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_56
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get10(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_30

    :cond_63
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get2(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap2(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap0(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_f4

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v2, "https://www.google.com/"

    const/16 v3, 0xc8

    invoke-static {v1, v2, v3}, Lcom/android/server/GmsAlarmManager;->-wrap1(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f4

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-set3(Lcom/android/server/GmsAlarmManager;Z)Z

    :goto_93
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap0(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_109

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_100

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->-get7(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get7(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_b7
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set7(Lcom/android/server/GmsAlarmManager;Z)Z

    if-eqz v0, :cond_11e

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get0(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    :goto_cb
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get9(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_12c

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get10(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get10(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get16(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto/16 :goto_9

    :cond_f4
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set3(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_93

    :cond_fa
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-set3(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_93

    :cond_100
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v2, "checkin.gstatic.com"

    invoke-virtual {v1, v2}, Lcom/android/server/GmsAlarmManager;->parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V

    goto :goto_b7

    :cond_109
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->-get7(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get7(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_b7

    :cond_11e
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get16(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    goto :goto_cb

    :cond_12c
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get10(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get10(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get0(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto/16 :goto_9

    :pswitch_14d
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get4(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_15f

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set2(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v6}, Lcom/android/server/GmsAlarmManager;->-wrap10(Lcom/android/server/GmsAlarmManager;I)V

    :cond_15f
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get3(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_168

    return-void

    :cond_168
    const-string/jumbo v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_DISABLE_GMS_NETWORK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get8(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get14(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get5(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_1ba

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNet()V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-wrap12(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_1ba
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-set1(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-wrap11(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v6}, Lcom/android/server/GmsAlarmManager;->-wrap10(Lcom/android/server/GmsAlarmManager;I)V

    goto/16 :goto_9

    :pswitch_1cb
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get4(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_1dd

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set2(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap10(Lcom/android/server/GmsAlarmManager;I)V

    :cond_1dd
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get3(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_1e6

    return-void

    :cond_1e6
    const-string/jumbo v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_ENABLE_GMS_NETWORK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get8(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get14(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->-get5(Lcom/android/server/GmsAlarmManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_238

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNet()V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap12(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_238
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set1(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap7(Lcom/android/server/GmsAlarmManager;)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap11(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap10(Lcom/android/server/GmsAlarmManager;I)V

    goto/16 :goto_9

    :pswitch_24e
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get3(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_276

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_276

    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "MSG_ENABLE_GMS_NETWORK_BY_CHARGING"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNetByCharging()V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-wrap12(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-wrap7(Lcom/android/server/GmsAlarmManager;)V

    :cond_276
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v4}, Lcom/android/server/GmsAlarmManager;->-set0(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_9

    :pswitch_27d
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get3(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_29e

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->-get1(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-eqz v1, :cond_29e

    const-string/jumbo v1, "GmsAlarmManager"

    const-string/jumbo v2, "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNetByUncharging()V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-wrap12(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_29e
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {v1, v5}, Lcom/android/server/GmsAlarmManager;->-set0(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_9

    :pswitch_2a5
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v2, "com.android.server.gmsalarmmanager"

    const-string/jumbo v3, "GNET"

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/server/GmsAlarmManager;->-wrap4(Lcom/android/server/GmsAlarmManager;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/GmsAlarmManager;->-wrap6(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/32 v2, 0x5265c00

    invoke-static {v1, v2, v3}, Lcom/android/server/GmsAlarmManager;->-wrap9(Lcom/android/server/GmsAlarmManager;J)V

    goto/16 :goto_9

    :pswitch_data_2c4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_14d
        :pswitch_1cb
        :pswitch_24e
        :pswitch_27d
        :pswitch_2a5
    .end packed-switch
.end method
