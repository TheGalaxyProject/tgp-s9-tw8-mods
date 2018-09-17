.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;
.super Landroid/os/Handler;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    const/4 v12, 0x0

    const-string/jumbo v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Handler : message = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_b4

    :goto_22
    return-void

    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-get2(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z

    move-result v9

    if-eqz v9, :cond_91

    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-get0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-wrap2(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Handler / RESTART_EMAIL_APP : Enabling EAS ExchangeService user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v4, v5, v9, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v9, v12}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-set0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v2, 0x0

    :try_start_6e
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v9

    if-eqz v9, :cond_97

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_7d
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-get0(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v9, v2, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_8e} :catch_a1
    .catchall {:try_start_6e .. :try_end_8e} :catchall_af

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_91
    :goto_91
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v9, v12}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-set1(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z

    goto :goto_22

    :cond_97
    :try_start_97
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9f} :catch_a1
    .catchall {:try_start_97 .. :try_end_9f} :catchall_af

    move-object v2, v3

    goto :goto_7d

    :catch_a1
    move-exception v1

    :try_start_a2
    const-string/jumbo v9, "ExchangeAccountPolicy"

    const-string/jumbo v10, "Handler / RESTART_EMAIL_APP : fail to restart ExchangeService. "

    invoke-static {v9, v10, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_af

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_91

    :catchall_af
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method
