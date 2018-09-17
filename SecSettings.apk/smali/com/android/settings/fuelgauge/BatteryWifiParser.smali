.class public Lcom/android/settings/fuelgauge/BatteryWifiParser;
.super Lcom/android/settings/fuelgauge/BatteryFlagParser;
.source "BatteryWifiParser.java"


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    return-void
.end method


# virtual methods
.method protected isSet(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 3

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v0, v0, 0xf

    shr-int/lit8 v0, v0, 0x0

    packed-switch v0, :pswitch_data_e

    :pswitch_9
    const/4 v0, 0x1

    return v0

    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
