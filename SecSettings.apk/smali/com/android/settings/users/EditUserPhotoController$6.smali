.class Lcom/android/settings/users/EditUserPhotoController$6;
.super Landroid/os/AsyncTask;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserPhotoController;

.field final synthetic val$cropped:Z

.field final synthetic val$data:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserPhotoController;ZLandroid/net/Uri;)V
    .registers 4

    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    iput-boolean p2, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$cropped:Z

    iput-object p3, p0, Lcom/android/settings/users/EditUserPhotoController$6;->val$data:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 19

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/users/EditUserPhotoController$6;->val$cropped:Z

    if-eqz v13, :cond_5e

    const/4 v5, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v13}, Lcom/android/settings/users/EditUserPhotoController;->-get0(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/EditUserPhotoController$6;->val$data:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_1e} :catch_30
    .catchall {:try_start_7 .. :try_end_1e} :catchall_4c

    move-result-object v13

    if-eqz v5, :cond_24

    :try_start_21
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-object v13

    :catch_25
    move-exception v6

    const-string/jumbo v14, "EditUserPhotoController"

    const-string/jumbo v15, "Cannot close image stream"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_30
    move-exception v3

    :try_start_31
    const-string/jumbo v13, "EditUserPhotoController"

    const-string/jumbo v14, "Cannot find image file"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_4c

    const/4 v13, 0x0

    if-eqz v5, :cond_40

    :try_start_3d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    return-object v13

    :catch_41
    move-exception v6

    const-string/jumbo v14, "EditUserPhotoController"

    const-string/jumbo v15, "Cannot close image stream"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    :catchall_4c
    move-exception v13

    if-eqz v5, :cond_52

    :try_start_4f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    :cond_52
    :goto_52
    throw v13

    :catch_53
    move-exception v6

    const-string/jumbo v14, "EditUserPhotoController"

    const-string/jumbo v15, "Cannot close image stream"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    :cond_5e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v13}, Lcom/android/settings/users/EditUserPhotoController;->-get5(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v14}, Lcom/android/settings/users/EditUserPhotoController;->-get5(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    :try_start_7a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v13}, Lcom/android/settings/users/EditUserPhotoController;->-get0(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/EditUserPhotoController$6;->val$data:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_91
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_91} :catch_da

    move-result-object v4

    if-eqz v4, :cond_dd

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int/2addr v13, v11

    div-int/lit8 v7, v13, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sub-int/2addr v13, v11

    div-int/lit8 v12, v13, 0x2

    new-instance v10, Landroid/graphics/Rect;

    add-int v13, v7, v11

    add-int v14, v12, v11

    invoke-direct {v10, v7, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v13}, Lcom/android/settings/users/EditUserPhotoController;->-get5(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v14}, Lcom/android/settings/users/EditUserPhotoController;->-get5(Lcom/android/settings/users/EditUserPhotoController;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v9, v15, v0, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v4, v10, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v2

    :catch_da
    move-exception v3

    const/4 v13, 0x0

    return-object v13

    :cond_dd
    const/4 v13, 0x0

    return-object v13
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$6;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 5

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0, p1}, Lcom/android/settings/users/EditUserPhotoController;->-set0(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->-get2(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v2}, Lcom/android/settings/users/EditUserPhotoController;->-get3(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/users/EditUserPhotoController;->-set1(Lcom/android/settings/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserPhotoController;->-get2(Lcom/android/settings/users/EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->-get4(Lcom/android/settings/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->-get0(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "TakeEditUserPhoto2.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/users/EditUserPhotoController$6;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {v1}, Lcom/android/settings/users/EditUserPhotoController;->-get0(Lcom/android/settings/users/EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "CropEditUserPhoto.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$6;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method