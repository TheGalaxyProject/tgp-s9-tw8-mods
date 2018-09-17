.class Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "VoWiFiStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.sec.sprint.wfc.VOWIFI_STATUS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-static {v4, p1, p2}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->-wrap1(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;Landroid/content/Intent;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "com.sec.sprint.wfc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string/jumbo v4, "com.oem.smartwifisupport"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_36
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->-wrap2(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;)V

    goto :goto_12

    :cond_3c
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "LOADED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    const-string/jumbo v4, "ABSENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_5e
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->-wrap0(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;)V

    goto :goto_12
.end method
