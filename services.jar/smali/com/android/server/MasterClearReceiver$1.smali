.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extraCmd:Ljava/lang/String;

.field final synthetic val$forceWipe:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;ZZLjava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-boolean p7, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    iput-object p8, p0, Lcom/android/server/MasterClearReceiver$1;->val$extraCmd:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    :try_start_0
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v8, "FactoryResetByCommand"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ee

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "!@FactoryResetByATCommand"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-static {v7}, Lcom/android/server/MasterClearReceiver;->-wrap1(Lcom/android/server/MasterClearReceiver;)V

    :cond_19
    :goto_19
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "/omr/res"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_50

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "!@[MasterClearReceiver] OMC resource delete !!!"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/MasterClearReceiver;->-wrap0(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_50

    new-instance v4, Ljava/io/File;

    const-string/jumbo v7, "/efs/imei/omc.txt"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_50

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "!@[MasterClearReceiver] OMC check delete !!!"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_50
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/omr/update"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_76

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "!@[MasterClearReceiver] OMC update package delete !!!"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/MasterClearReceiver;->-wrap0(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_76

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "!@[MasterClearReceiver] OMC update package delete finish !!!"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v8, "CustomWipe"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_124

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "!!! call wipe customer !!!"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v8, "args"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bf

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "args"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_bf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "--locale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v7, v0}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;)V

    :goto_e4
    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "Still running after master clear?!"

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ed
    return-void

    :cond_ee
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    const-string/jumbo v8, "HIDDEN_MENU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    const-string/jumbo v8, "SIMBasedChangeCSC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10a

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/MasterClearReceiver;->-set0(Lcom/android/server/MasterClearReceiver;Z)Z

    :cond_10a
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-virtual {v7}, Lcom/android/server/MasterClearReceiver;->isEnableOmc()Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-static {v7}, Lcom/android/server/MasterClearReceiver;->-wrap2(Lcom/android/server/MasterClearReceiver;)V
    :try_end_117
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_117} :catch_119
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_117} :catch_15a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_117} :catch_19a

    goto/16 :goto_19

    :catch_119
    move-exception v1

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "Can\'t perform master clear/factory reset"

    invoke-static {v7, v8, v1}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ed

    :cond_124
    :try_start_124
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v8, "WipeCustomerPartiotion"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_165

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "!!!WipeData and WipeCustomerPartiotion !!!"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "--wipe_data\n--wipe_carrier\n--locale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_159
    .catch Ljava/io/FileNotFoundException; {:try_start_124 .. :try_end_159} :catch_119
    .catch Ljava/lang/SecurityException; {:try_start_124 .. :try_end_159} :catch_15a
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_159} :catch_19a

    goto :goto_e4

    :catch_15a
    move-exception v3

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "Can\'t perform master clear/factory reset"

    invoke-static {v7, v8, v3}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ed

    :cond_165
    :try_start_165
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v8, "WipeCache"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a6

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "!!!Just Exit (For Bypass Factory Reset)!!!"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "--just_exit\n--locale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_198
    .catch Ljava/io/FileNotFoundException; {:try_start_165 .. :try_end_198} :catch_119
    .catch Ljava/lang/SecurityException; {:try_start_165 .. :try_end_198} :catch_15a
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_198} :catch_19a

    goto/16 :goto_e4

    :catch_19a
    move-exception v2

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "Can\'t perform master clear/factory reset"

    invoke-static {v7, v8, v2}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ed

    :cond_1a6
    :try_start_1a6
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v8, "Download"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c4

    const-string/jumbo v7, "MasterClear"

    const-string/jumbo v8, "!!!Enter the Download Mode for Factory Routine!!!"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_e4

    :cond_1c4
    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v9, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    iget-object v11, p0, Lcom/android/server/MasterClearReceiver$1;->val$extraCmd:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10, v11}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZLjava/lang/String;)V
    :try_end_1d1
    .catch Ljava/io/FileNotFoundException; {:try_start_1a6 .. :try_end_1d1} :catch_119
    .catch Ljava/lang/SecurityException; {:try_start_1a6 .. :try_end_1d1} :catch_15a
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1d1} :catch_19a

    goto/16 :goto_e4
.end method
