.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;
.super Ljava/lang/Object;
.source "PocBalanceProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finishReadPoc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/4 v10, 0x2

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_f9

    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v9, "[stpoc] POC READ Success"

    invoke-static {v7, v9}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_14
    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    const-string/jumbo v9, "power"

    invoke-virtual {v7, v9}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v7

    if-eqz v7, :cond_56

    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v8, "[stpoc] D1 POC completed(isPocDream1NA)"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "d1_poc_index"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sec_poc_case_d1_index"

    const/4 v9, 0x0

    invoke-static {v7, v8, v3, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v7, "settings"

    invoke-virtual {v2, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void

    :cond_56
    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v9, "[stpoc] D2 POC completed"

    invoke-static {v7, v9}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v4

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v9, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v9}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get5(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v9

    invoke-static {v7, v9, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;II)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_7e} :catch_cf

    :try_start_7e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string/jumbo v9, "sync"

    invoke-virtual {v7, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_88} :catch_d4
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_88} :catch_cf

    :goto_88
    :try_start_88
    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v9, "[reset tracking] write to recovery_cause"

    invoke-static {v7, v9}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_91} :catch_cf

    const/4 v5, 0x0

    :try_start_92
    new-instance v6, Ljava/io/FileWriter;

    const-string/jumbo v7, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_9a} :catch_dd
    .catchall {:try_start_92 .. :try_end_9a} :catchall_116

    :try_start_9a
    const-string/jumbo v7, "[SETTING] PocBalanceProgressActivity - finishReadPoc"

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_a0} :catch_11b
    .catchall {:try_start_9a .. :try_end_a0} :catchall_118

    if-eqz v6, :cond_a5

    :try_start_a2
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a5} :catch_d9
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a8

    :cond_a5
    :goto_a5
    if-eqz v8, :cond_db

    :try_start_a7
    throw v8
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_a8} :catch_a8

    :catch_a8
    move-exception v0

    move-object v5, v6

    :goto_aa
    :try_start_aa
    const-string/jumbo v7, "PocBalanceProgressActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c8
    const-string/jumbo v7, "recovery"

    invoke-virtual {v2, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ce} :catch_cf

    goto :goto_55

    :catch_cf
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    :catch_d4
    move-exception v1

    :try_start_d5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_cf

    goto :goto_88

    :catch_d9
    move-exception v8

    goto :goto_a5

    :cond_db
    move-object v5, v6

    goto :goto_c8

    :catch_dd
    move-exception v7

    :goto_de
    :try_start_de
    throw v7
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_df

    :catchall_df
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_e3
    if-eqz v5, :cond_e8

    :try_start_e5
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_e8} :catch_ed
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_eb

    :cond_e8
    :goto_e8
    if-eqz v8, :cond_f8

    :try_start_ea
    throw v8

    :catch_eb
    move-exception v0

    goto :goto_aa

    :catch_ed
    move-exception v9

    if-nez v8, :cond_f2

    move-object v8, v9

    goto :goto_e8

    :cond_f2
    if-eq v8, v9, :cond_e8

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e8

    :cond_f8
    throw v7
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f9} :catch_eb

    :cond_f9
    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I

    move-result v7

    if-ne v7, v10, :cond_55

    const-string/jumbo v7, "PocBalanceProgressActivity"

    const-string/jumbo v8, "[stpoc] POC READ Fail"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finish()V

    goto/16 :goto_55

    :catchall_116
    move-exception v7

    goto :goto_e3

    :catchall_118
    move-exception v7

    move-object v5, v6

    goto :goto_e3

    :catch_11b
    move-exception v7

    move-object v5, v6

    goto :goto_de
.end method
