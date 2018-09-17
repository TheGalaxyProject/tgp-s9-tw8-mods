.class Lcom/android/settings/users/EditUserPhotoController$5;
.super Landroid/os/AsyncTask;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserPhotoController;->copyAndCropPhoto(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserPhotoController;

.field final synthetic val$pictureUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserPhotoController;Landroid/net/Uri;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    iput-object p2, p0, Lcom/android/settings/users/EditUserPhotoController$5;->val$pictureUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 11

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v4}, Lcom/android/settings/users/EditUserPhotoController;->-get0(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_d
    iget-object v4, p0, Lcom/android/settings/users/EditUserPhotoController$5;->val$pictureUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v4}, Lcom/android/settings/users/EditUserPhotoController;->-get6(Lcom/android/settings/users/EditUserPhotoController;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v2, v3}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_20} :catch_46
    .catchall {:try_start_d .. :try_end_20} :catchall_70

    if-eqz v3, :cond_25

    :try_start_22
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_3a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2f

    :cond_25
    move-object v5, v6

    :goto_26
    if-eqz v2, :cond_2b

    :try_start_28
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_3c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2f

    :cond_2b
    move-object v4, v5

    :cond_2c
    :goto_2c
    if-eqz v4, :cond_39

    :try_start_2e
    throw v4
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception v1

    const-string/jumbo v4, "EditUserPhotoController"

    const-string/jumbo v5, "Failed to copy photo"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    return-object v6

    :catch_3a
    move-exception v5

    goto :goto_26

    :catch_3c
    move-exception v4

    if-eqz v5, :cond_2c

    if-eq v5, v4, :cond_2b

    :try_start_41
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_2f

    move-object v4, v5

    goto :goto_2c

    :catch_46
    move-exception v4

    :try_start_47
    throw v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_4c
    if-eqz v3, :cond_51

    :try_start_4e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_51} :catch_5b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_2f

    :cond_51
    move-object v7, v5

    :cond_52
    :goto_52
    if-eqz v2, :cond_57

    :try_start_54
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_65
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_2f

    :cond_57
    move-object v5, v7

    :cond_58
    :goto_58
    if-eqz v5, :cond_6f

    :try_start_5a
    throw v5

    :catch_5b
    move-exception v7

    if-eqz v5, :cond_52

    if-eq v5, v7, :cond_51

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v5

    goto :goto_52

    :catch_65
    move-exception v5

    if-eqz v7, :cond_58

    if-eq v7, v5, :cond_57

    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v5, v7

    goto :goto_58

    :cond_6f
    throw v4
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_70} :catch_2f

    :catchall_70
    move-exception v4

    move-object v5, v6

    goto :goto_4c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->-get1(Lcom/android/settings/users/EditUserPhotoController;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$5;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->-wrap1(Lcom/android/settings/users/EditUserPhotoController;)V

    return-void
.end method
