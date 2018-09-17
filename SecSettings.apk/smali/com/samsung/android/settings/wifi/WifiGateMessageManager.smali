.class public Lcom/samsung/android/settings/wifi/WifiGateMessageManager;
.super Ljava/lang/Object;
.source "WifiGateMessageManager.java"


# instance fields
.field private mPreviousState:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method public static isEnabled()Z
    .registers 1

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleStateChangedForGateMessage(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_13

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_14

    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_STATUS_CONNECTED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_11
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiGateMessageManager;->mPreviousState:Landroid/net/NetworkInfo$DetailedState;

    :cond_13
    return-void

    :cond_14
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_11

    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_STATUS_DISCONNECTED </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public handleWifiStateChangedForGateMassage(I)V
    .registers 4

    packed-switch p1, :pswitch_data_22

    :goto_3
    :pswitch_3
    return-void

    :pswitch_4
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_ON </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_e
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_DISABLING </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_18
    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M> WIFI_OFF </GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_e
        :pswitch_18
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
