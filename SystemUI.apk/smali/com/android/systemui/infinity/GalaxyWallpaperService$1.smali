.class Lcom/android/systemui/infinity/GalaxyWallpaperService$1;
.super Landroid/content/BroadcastReceiver;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get2(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mEngine:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mEngine:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->setAodBgOff()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v0, 0x1

    :cond_3e
    invoke-static {v1, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-set0(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)Z

    goto :goto_24

    :cond_42
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mEngine:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mEngine:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->onConfigurationChanged()V

    goto :goto_24
.end method
