.class Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;
.super Landroid/os/Handler;
.source "AirplaneModeSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->-wrap0(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method
