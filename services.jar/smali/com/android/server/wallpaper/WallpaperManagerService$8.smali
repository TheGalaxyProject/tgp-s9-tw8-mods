.class Lcom/android/server/wallpaper/WallpaperManagerService$8;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$8;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$8;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$8;->val$userId:I

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap4(I)Ljava/io/File;

    move-result-object v2

    sget-object v4, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_a
    if-ge v3, v5, :cond_1f

    aget-object v1, v4, v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1f
    return-void
.end method
