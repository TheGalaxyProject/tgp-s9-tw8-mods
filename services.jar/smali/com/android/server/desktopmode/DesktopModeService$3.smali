.class Lcom/android/server/desktopmode/DesktopModeService$3;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    if-nez p1, :cond_9

    const/4 v0, -0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap29(Lcom/android/server/desktopmode/DesktopModeService;I)V

    return-void

    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method
