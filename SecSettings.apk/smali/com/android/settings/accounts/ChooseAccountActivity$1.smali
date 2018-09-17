.class Lcom/android/settings/accounts/ChooseAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x2

    const-string/jumbo v9, "ChooseAccountActivity"

    const-string/jumbo v10, "AccountManagerCallback"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :try_start_b
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v9, "intent"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    if-eqz v8, :cond_9a

    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->isAdded()Z

    move-result v9

    if-eqz v9, :cond_9a

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "pendingIntent"

    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v10}, Lcom/android/settings/accounts/ChooseAccountActivity;->-get0(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v9, "hasMultipleUsers"

    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v10}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "android.intent.extra.USER"

    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v10}, Lcom/android/settings/accounts/ChooseAccountActivity;->-get1(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_6e

    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v10}, Lcom/android/settings/accounts/ChooseAccountActivity;->-get1(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/os/UserHandle;

    move-result-object v10

    const/16 v11, 0x1f7

    invoke-virtual {v9, v8, v11, v10}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    :cond_6e
    :goto_6e
    const-string/jumbo v9, "ChooseAccountActivity"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_92

    const-string/jumbo v9, "ChooseAccountActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "account added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Landroid/accounts/OperationCanceledException; {:try_start_b .. :try_end_92} :catch_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_92} :catch_1c0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_92} :catch_16c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_b .. :try_end_92} :catch_118
    .catchall {:try_start_b .. :try_end_92} :catchall_214

    :cond_92
    if-eqz v2, :cond_99

    :try_start_94
    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_99} :catch_f3

    :cond_99
    :goto_99
    return-void

    :cond_9a
    :try_start_9a
    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->-get0(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_6e

    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-static {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->-get0(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/PendingIntent;->cancel()V

    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/settings/accounts/ChooseAccountActivity;->-set0(Lcom/android/settings/accounts/ChooseAccountActivity;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    :try_end_b1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_9a .. :try_end_b1} :catch_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_9a .. :try_end_b1} :catch_1c0
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_b1} :catch_16c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_9a .. :try_end_b1} :catch_118
    .catchall {:try_start_9a .. :try_end_b1} :catchall_214

    goto :goto_6e

    :catch_b2
    move-exception v4

    :try_start_b3
    const-string/jumbo v9, "ChooseAccountActivity"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_c6

    const-string/jumbo v9, "ChooseAccountActivity"

    const-string/jumbo v10, "addAccount was canceled"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_b3 .. :try_end_c6} :catchall_214

    :cond_c6
    if-eqz v2, :cond_99

    :try_start_c8
    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cd} :catch_ce

    goto :goto_99

    :catch_ce
    move-exception v6

    const-string/jumbo v9, "ChooseAccountActivity"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_99

    const-string/jumbo v9, "ChooseAccountActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fragment finish failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :catch_f3
    move-exception v6

    const-string/jumbo v9, "ChooseAccountActivity"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_99

    const-string/jumbo v9, "ChooseAccountActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fragment finish failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :catch_118
    move-exception v3

    :try_start_119
    const-string/jumbo v9, "ChooseAccountActivity"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_13d

    const-string/jumbo v9, "ChooseAccountActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addAccount failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catchall {:try_start_119 .. :try_end_13d} :catchall_214

    :cond_13d
    if-eqz v2, :cond_99

    :try_start_13f
    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_144} :catch_146

    goto/16 :goto_99

    :catch_146
    move-exception v6

    const-string/jumbo v9, "ChooseAccountActivity"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_99

    const-string/jumbo v9, "ChooseAccountActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fragment finish failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    :catch_16c
    move-exception v5

    :try_start_16d
    const-string/jumbo v9, "ChooseAccountActivity"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_191

    const-string/jumbo v9, "ChooseAccountActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addAccount failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_191
    .catchall {:try_start_16d .. :try_end_191} :catchall_214

    :cond_191
    if-eqz v2, :cond_99

    :try_start_193
    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_198} :catch_19a

    goto/16 :goto_99

    :catch_19a
    move-exception v6

    const-string/jumbo v9, "ChooseAccountActivity"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_99

    const-string/jumbo v9, "ChooseAccountActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fragment finish failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    :catch_1c0
    move-exception v7

    :try_start_1c1
    const-string/jumbo v9, "ChooseAccountActivity"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1e5

    const-string/jumbo v9, "ChooseAccountActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addAccount failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e5
    .catchall {:try_start_1c1 .. :try_end_1e5} :catchall_214

    :cond_1e5
    if-eqz v2, :cond_99

    :try_start_1e7
    iget-object v9, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ec} :catch_1ee

    goto/16 :goto_99

    :catch_1ee
    move-exception v6

    const-string/jumbo v9, "ChooseAccountActivity"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_99

    const-string/jumbo v9, "ChooseAccountActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fragment finish failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    :catchall_214
    move-exception v9

    if-eqz v2, :cond_21c

    :try_start_217
    iget-object v10, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v10}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_21c} :catch_21d

    :cond_21c
    :goto_21c
    throw v9

    :catch_21d
    move-exception v6

    const-string/jumbo v10, "ChooseAccountActivity"

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_21c

    const-string/jumbo v10, "ChooseAccountActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Fragment finish failed : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21c
.end method
