.class Lcom/android/server/power/ShutdownDialog$StatePrepare;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePrepare"
.end annotation


# instance fields
.field private hasAnim:Z

.field private hasSound:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    return v0
.end method

.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$StatePrepare;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method private compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v6, 0x0

    :try_start_c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1b} :catch_50
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_34
    .catchall {:try_start_c .. :try_end_1b} :catchall_6b

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_22} :catch_80
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_83
    .catchall {:try_start_1b .. :try_end_22} :catchall_7d

    move-result v8

    if-eqz v7, :cond_28

    :try_start_25
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return v8

    :catch_29
    move-exception v1

    const-string/jumbo v9, "ShutdownDialog"

    const-string/jumbo v10, "File close error"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_34
    move-exception v1

    :goto_35
    :try_start_35
    const-string/jumbo v8, "ShutdownDialog"

    const-string/jumbo v9, "Exception"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_6b

    if-eqz v6, :cond_43

    :try_start_40
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_45

    :cond_43
    :goto_43
    const/4 v8, 0x0

    return v8

    :catch_45
    move-exception v1

    const-string/jumbo v8, "ShutdownDialog"

    const-string/jumbo v9, "File close error"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_50
    move-exception v0

    :goto_51
    :try_start_51
    const-string/jumbo v8, "ShutdownDialog"

    const-string/jumbo v9, "Exception"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_6b

    if-eqz v6, :cond_43

    :try_start_5c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_43

    :catch_60
    move-exception v1

    const-string/jumbo v8, "ShutdownDialog"

    const-string/jumbo v9, "File close error"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catchall_6b
    move-exception v8

    :goto_6c
    if-eqz v6, :cond_71

    :try_start_6e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    :cond_71
    :goto_71
    throw v8

    :catch_72
    move-exception v1

    const-string/jumbo v9, "ShutdownDialog"

    const-string/jumbo v10, "File close error"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71

    :catchall_7d
    move-exception v8

    move-object v6, v7

    goto :goto_6c

    :catch_80
    move-exception v0

    move-object v6, v7

    goto :goto_51

    :catch_83
    move-exception v1

    move-object v6, v7

    goto :goto_35
.end method

.method private disableWindowRotation(II)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    if-le p1, p2, :cond_21

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_17
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_21
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_17
.end method


# virtual methods
.method public checkFotaSilent()Z
    .registers 3

    const-string/jumbo v0, "/efs/sec_efs/auto_reboot/autoinstall.status"

    const-string/jumbo v1, "AUTO_INSTALL"

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasAnim:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public checkStart()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .registers 11

    const/4 v9, 0x0

    const-string/jumbo v7, "ShutdownDialog"

    const-string/jumbo v8, "prepare shutdown dialog image and sound"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_56

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->-get13(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/LibQmg;

    const-string/jumbo v7, "ShutdownDialog"

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->disableWindowRotation(II)V

    const/4 v1, 0x0

    :goto_38
    const/4 v7, 0x3

    if-ge v1, v7, :cond_5f

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->-get0(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v7

    aget-object v7, v7, v1

    if-nez v7, :cond_53

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->-get0(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v7, v1

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_56
    const-string/jumbo v7, "ShutdownDialog"

    const-string/jumbo v8, "qmglist error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->-wrap2(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->-get14(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownDialog;->-wrap3(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->-get15(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v7

    if-nez v7, :cond_7b

    if-nez v3, :cond_9b

    :cond_7b
    const/4 v7, 0x1

    :goto_7c
    xor-int/lit8 v7, v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    iget-boolean v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    if-eqz v7, :cond_a2

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7, v3}, Lcom/android/server/power/ShutdownDialog;->-wrap4(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    :goto_89
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "POWER_OFF_ANIMATION_START"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->-get6(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_9b
    if-eqz v5, :cond_7b

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->checkFotaSilent()Z

    move-result v7

    goto :goto_7c

    :cond_a2
    if-nez v5, :cond_ab

    const-string/jumbo v7, "poweroff_sound=suspend"

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_89

    :cond_ab
    new-instance v7, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;

    invoke-direct {v7, p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;-><init>(Lcom/android/server/power/ShutdownDialog$StatePrepare;)V

    invoke-virtual {v7}, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;->start()V

    goto :goto_89
.end method

.method public start()V
    .registers 3

    const-string/jumbo v0, "ShutdownDialog"

    const-string/jumbo v1, "start draw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-get11(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->start()V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-get11(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->-set2(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;

    return-void
.end method