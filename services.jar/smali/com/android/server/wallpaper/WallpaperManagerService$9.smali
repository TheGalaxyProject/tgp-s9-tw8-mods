.class Lcom/android/server/wallpaper/WallpaperManagerService$9;
.super Landroid/os/AsyncTask;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->migrateOldKeyguardWallpaper(Z)V
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
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$isUserChanged:Z

.field final synthetic val$wallpaperPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->val$wallpaperPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->val$isUserChanged:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 25

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->val$wallpaperPath:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v19, :cond_109

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_109

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->val$wallpaperPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->val$wallpaperPath:Ljava/lang/String;

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v2, "_layered"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string/jumbo v2, "_cinematic"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    :cond_43
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "The file type is preload"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    const/4 v2, 0x0

    return-object v2

    :cond_4e
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrateOldKeyguardWallpaper path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->val$wallpaperPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->val$isUserChanged:Z

    if-eqz v2, :cond_85

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->val$isUserChanged:Z

    iput-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsUserChanged:Z

    :cond_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperIndexOf(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;IIII)Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    if-eqz v18, :cond_4c

    const/4 v14, 0x0

    const/16 v21, 0x0

    :try_start_a8
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_af} :catch_f5
    .catch Ljava/lang/NullPointerException; {:try_start_a8 .. :try_end_af} :catch_e9
    .catchall {:try_start_a8 .. :try_end_af} :catchall_101

    :try_start_af
    new-instance v22, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b8} :catch_11c
    .catch Ljava/lang/NullPointerException; {:try_start_af .. :try_end_b8} :catch_124
    .catchall {:try_start_af .. :try_end_b8} :catchall_114

    :try_start_b8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v22

    invoke-static {v2, v15, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap9(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->waitForCompletion()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_path"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$9;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_e1} :catch_11f
    .catch Ljava/lang/NullPointerException; {:try_start_b8 .. :try_end_e1} :catch_127
    .catchall {:try_start_b8 .. :try_end_e1} :catchall_117

    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4c

    :catch_e9
    move-exception v17

    :goto_ea
    :try_start_ea
    invoke-virtual/range {v17 .. v17}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_101

    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4c

    :catch_f5
    move-exception v16

    :goto_f6
    :try_start_f6
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_101

    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4c

    :catchall_101
    move-exception v2

    :goto_102
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :cond_109
    const-string/jumbo v2, "WallpaperManagerService"

    const-string/jumbo v3, "Invalid file path."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    :catchall_114
    move-exception v2

    move-object v14, v15

    goto :goto_102

    :catchall_117
    move-exception v2

    move-object/from16 v21, v22

    move-object v14, v15

    goto :goto_102

    :catch_11c
    move-exception v16

    move-object v14, v15

    goto :goto_f6

    :catch_11f
    move-exception v16

    move-object/from16 v21, v22

    move-object v14, v15

    goto :goto_f6

    :catch_124
    move-exception v17

    move-object v14, v15

    goto :goto_ea

    :catch_127
    move-exception v17

    move-object/from16 v21, v22

    move-object v14, v15

    goto :goto_ea
.end method
