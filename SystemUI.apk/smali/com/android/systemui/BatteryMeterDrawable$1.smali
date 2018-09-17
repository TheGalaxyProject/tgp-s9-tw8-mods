.class Lcom/android/systemui/BatteryMeterDrawable$1;
.super Landroid/os/Handler;
.source "BatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable$1;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$1;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterDrawable;->-get0(Lcom/android/systemui/BatteryMeterDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$1;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable$1;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterDrawable;->-get1(Lcom/android/systemui/BatteryMeterDrawable;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->-set0(Lcom/android/systemui/BatteryMeterDrawable;Z)Z

    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$1;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    goto :goto_5

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
