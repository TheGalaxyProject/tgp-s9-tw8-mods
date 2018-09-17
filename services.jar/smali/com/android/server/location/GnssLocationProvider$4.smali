.class Lcom/android/server/location/GnssLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receive broadcast intent, action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_22

    return-void

    :cond_22
    const-string/jumbo v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v5}, Lcom/android/server/location/GnssLocationProvider;->-wrap47(Lcom/android/server/location/GnssLocationProvider;Z)V

    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get5(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v3

    invoke-virtual {v2, p2, v3}, Lcom/android/server/location/GnssLocationProvider;->extension_mBroadcastReceiver(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v2, v2, Lcom/android/server/location/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-nez v2, :cond_66

    const-string/jumbo v2, "result_mask"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->-wrap45(Lcom/android/server/location/GnssLocationProvider;I)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const-string/jumbo v3, "packet_data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string/jumbo v4, "packet_length"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap36(Lcom/android/server/location/GnssLocationProvider;[BI)V

    :cond_66
    return-void

    :cond_67
    const-string/jumbo v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap35(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_30

    :cond_76
    const-string/jumbo v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v2, v2, Lcom/android/server/location/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get7(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap23(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto :goto_30

    :cond_93
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get5(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap23(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto :goto_30

    :cond_a7
    const-string/jumbo v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v2, v2, Lcom/android/server/location/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-get7(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap24(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_30

    :cond_c5
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get5(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap24(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_30

    :cond_da
    const-string/jumbo v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    const-string/jumbo v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    :cond_fe
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->-wrap49(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_30

    :cond_105
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap48(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_30

    :cond_115
    const-string/jumbo v2, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v2, v2, Lcom/android/server/location/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap25(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_30
.end method
