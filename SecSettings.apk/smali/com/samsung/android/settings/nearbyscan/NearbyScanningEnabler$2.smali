.class Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;
.super Ljava/lang/Object;
.source "NearbyScanningEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 9

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_13

    const-string/jumbo v2, "NearbyScanningEnabler"

    const-string/jumbo v3, "OnSwitchChangeListener, context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_37

    if-eqz p2, :cond_74

    const-string/jumbo v0, "on"

    :goto_2c
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    const-string/jumbo v4, "BLEM_100"

    const-string/jumbo v5, "BLEM_0101"

    invoke-static {v3, v4, v5, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-wrap0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3c

    if-eqz p2, :cond_73

    :cond_3c
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_59

    const/4 p2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "Not Installed BeaconManager"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_59
    iget-object v3, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_78

    :goto_61
    invoke-static {v3, v2}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler$2;->this$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->-get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/nearbyscan/Util;->settingslogging(Landroid/content/Context;)Z

    :cond_73
    return-void

    :cond_74
    const-string/jumbo v0, "off"

    goto :goto_2c

    :cond_78
    const/4 v2, 0x0

    goto :goto_61
.end method
