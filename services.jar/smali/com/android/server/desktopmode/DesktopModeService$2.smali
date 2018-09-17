.class Lcom/android/server/desktopmode/DesktopModeService$2;
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

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .registers 10

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_a

    const/4 v0, -0x1

    :goto_6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return-void

    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_f
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v4

    if-nez v0, :cond_4f

    move v1, v2

    :goto_18
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setDisplayPortState(ZZ)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    if-nez v0, :cond_51

    :goto_25
    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get1(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_53

    const-string/jumbo v1, "LMTD"

    :goto_33
    invoke-static {v2, v1, v6}, Lcom/android/server/desktopmode/DesktopModeLogger;->logGsim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "1st_mouse"

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "1st_dock"

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void

    :cond_4f
    move v1, v3

    goto :goto_18

    :cond_51
    move v2, v3

    goto :goto_25

    :cond_53
    const-string/jumbo v1, "LDTM"

    goto :goto_33
.end method
