.class Lcom/android/settings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$DecryptTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->-wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    if-eqz v2, :cond_28

    const-wide/16 v4, 0x5dc

    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/os/storage/IStorageManager;->decryptStorage(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    invoke-static {}, Lcom/android/settings/CryptKeeper;->-get19()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->clear()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_29

    return-object v1

    :cond_28
    return-object v4

    :catch_29
    move-exception v0

    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "Error while decrypting..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    aget-object v3, p1, v6

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 8

    const-wide/16 v4, 0x1f4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->-set9(Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_9c

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get11(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get11(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get1(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get11(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get1(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_32
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-wrap5(Lcom/android/settings/CryptKeeper;)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get0(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DirectionLockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get5(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get0(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/widget/DirectionLockView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5d
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0a080f

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f121a4e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v1, "security.ode.cryptkeeper.status"

    const-string/jumbo v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0a0614

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v1, 0x7f0a0875

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v1, 0x7f0a04cd

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v1, 0x7f0a0605

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v1, 0x7f0a0259

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    const v1, 0x7f0a02be

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper$DecryptTask;->hide(I)V

    :goto_9b
    return-void

    :cond_9c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/android/settings/CryptKeeper;->-get18()I

    move-result v3

    if-lt v2, v3, :cond_ac

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-wrap20(Lcom/android/settings/CryptKeeper;)V

    goto :goto_9b

    :cond_ac
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c0

    new-instance v2, Lcom/android/settings/CryptKeeper$ValidationTask;

    iget-object v3, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$ValidationTask;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_c0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1, p1}, Lcom/android/settings/CryptKeeper;->-wrap9(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V

    goto :goto_9b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-wrap4(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method
