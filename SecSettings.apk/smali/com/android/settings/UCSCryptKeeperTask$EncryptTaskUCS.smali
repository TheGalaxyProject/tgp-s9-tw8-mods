.class Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptTaskUCS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method private constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->doInBackground([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[I
    .registers 16

    const/4 v13, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IStorageManager;

    move-result-object v5

    const/4 v8, 0x3

    new-array v4, v8, [I

    aput v10, v4, v11

    aput v10, v4, v12

    aput v10, v4, v9

    if-eqz v5, :cond_169

    :try_start_16
    const-string/jumbo v8, "UCSCryptKeeperTask"

    const-string/jumbo v9, "EncryptTask isUcsOdeEnabled : true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->-get10(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->-get4(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v8

    if-eqz v8, :cond_f8

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v8, v8, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v9, v9, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/UCMHelpUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    const/4 v8, 0x0

    aget v8, v3, v8

    const/4 v9, 0x0

    aput v8, v4, v9

    const/4 v8, 0x1

    aget v8, v3, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    const/4 v8, 0x2

    aget v8, v3, v8

    const/4 v9, 0x2

    aput v8, v4, v9

    :goto_4f
    const-string/jumbo v8, "UCSCryptKeeperTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Return Values are "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    aget v8, v4, v8

    if-nez v8, :cond_15f

    const-string/jumbo v8, "persist.security.ucs"

    const-string/jumbo v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "security.ode.encrypting"

    const-string/jumbo v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "sys.sec_device_encryption"

    const-string/jumbo v9, "fast"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, ""

    iget-object v8, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v8}, Lcom/android/settings/UCSCryptKeeperTask;->-get2(Lcom/android/settings/UCSCryptKeeperTask;)I

    move-result v8

    if-ne v8, v12, :cond_15a

    const-string/jumbo v6, "ucs_savein_false"

    :goto_b6
    const/4 v8, 0x0

    invoke-interface {v5, v8, v6}, Landroid/os/storage/IStorageManager;->encryptStorage(ILjava/lang/String;)I

    const/4 v8, 0x0

    const/4 v9, 0x2

    aput v8, v4, v9

    const-string/jumbo v8, "UCSCryptKeeperTask"

    const-string/jumbo v9, "EncryptStorage passed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "security.ucs.error_code"

    const-string/jumbo v9, "NONE"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "security.ucs.error_code"

    const-string/jumbo v9, "NONE"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "NONE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ea

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aput v8, v4, v9

    :cond_ea
    :goto_ea
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/String;->clear()V

    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->-get9()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->clear()V

    return-object v4

    :cond_f8
    const/4 v2, 0x0

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-static {v8, v7}, Lcom/samsung/android/settings/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    const/4 v8, 0x0

    aget v8, v2, v8

    const/16 v9, 0x83

    if-ne v8, v9, :cond_129

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v4, v9

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    :goto_111
    const/4 v8, 0x2

    aget v8, v2, v8

    const/4 v9, 0x2

    aput v8, v4, v9
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_117} :catch_119

    goto/16 :goto_4f

    :catch_119
    move-exception v0

    const-string/jumbo v8, "UCSCryptKeeperTask"

    const-string/jumbo v9, "Error while encrypting..."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/String;->clear()V

    return-object v13

    :cond_129
    const/4 v8, 0x0

    :try_start_12a
    aget v8, v2, v8

    const/16 v9, 0x84

    if-ne v8, v9, :cond_13b

    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v4, v9

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    goto :goto_111

    :cond_13b
    const/4 v8, 0x0

    aget v8, v2, v8

    const/16 v9, 0x85

    if-ne v8, v9, :cond_14f

    const v8, 0xffef

    const/4 v9, 0x0

    aput v8, v4, v9

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    goto :goto_111

    :cond_14f
    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v4, v9

    const/4 v8, 0x1

    aget v8, v2, v8

    const/4 v9, 0x1

    aput v8, v4, v9

    goto :goto_111

    :cond_15a
    const-string/jumbo v6, "ucs_savein_true"

    goto/16 :goto_b6

    :cond_15f
    const-string/jumbo v8, "UCSCryptKeeperTask"

    const-string/jumbo v9, "EncryptTask Not able to verify Pin, no use of decrypt op"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_168} :catch_119

    goto :goto_ea

    :cond_169
    return-object v13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .registers 8

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_b

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap3(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v3, p1, v5

    invoke-static {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap4(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    aget v1, p1, v5

    if-nez v1, :cond_4c

    aget v1, p1, v4

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get1(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get1(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2d
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get5(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;

    move-result-object v1

    const v2, 0x7f0a080f

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f121a4e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v1, "security.ode.cryptkeeper.status"

    const-string/jumbo v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4b
    return-void

    :cond_4c
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1, p1}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap3(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    goto :goto_4b
.end method

.method protected onPreExecute()V
    .registers 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap1(Lcom/android/settings/UCSCryptKeeperTask;)V

    return-void
.end method
