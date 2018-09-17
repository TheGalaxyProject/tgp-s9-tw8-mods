.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;
.super Landroid/os/AsyncTask;
.source "KeyguardVideoWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoFileCopyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mActivityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method cancelTask()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 20

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    if-nez v3, :cond_1a

    sget-object v11, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "VideoFileCopyTask.doInBackground() fail"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    return-object v11

    :cond_1a
    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get3(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-eqz v11, :cond_32

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    return-object v11

    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_52

    const/4 v11, 0x0

    invoke-static {v3, v11, v8}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-wrap2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "VideoFileCopyTask.doInBackground() set completed from theme"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    return-object v11

    :cond_52
    invoke-static {v3, v9}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-wrap0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v9}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-wrap1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/systemui/wallpaper/WallpaperUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-eqz v11, :cond_69

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    return-object v11

    :cond_69
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_82

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-eqz v11, :cond_82

    sget-object v11, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "VideoFileCopyTask.doInBackground() delete file complete"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-eqz v11, :cond_8e

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    return-object v11

    :cond_8e
    invoke-static {v7, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v11, 0x0

    invoke-static {v3, v4, v11}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-wrap2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "VideoFileCopyTask.doInBackground() set completed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 8

    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "VideoFileCopyTask.onCancelled()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    if-nez v1, :cond_1b

    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "VideoFileCopyTask.onCancelled() fail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-wrap0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-wrap1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "VideoFileCopyTask.onCancelled() forced set video because origin file is lost"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3e
    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_57

    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "VideoFileCopyTask.onCancelled() delete file complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    if-nez v0, :cond_13

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "VideoFileCopyTask.onPostExecute() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VideoFileCopyTask.onPostExecute() success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-nez v1, :cond_5f

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_4d
    const v1, 0x7f1206cc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setResult(I)V

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->finish()V

    :cond_5f
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    if-nez v0, :cond_16

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "VideoFileCopyTask.onPreExecute() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_35

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    :cond_35
    return-void
.end method
