.class Lcom/android/server/VibratorService$5;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_12

    :goto_3
    return-void

    :sswitch_4
    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->-set3(Lcom/android/server/VibratorService;Z)Z

    goto :goto_3

    :sswitch_b
    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->-set3(Lcom/android/server/VibratorService;Z)Z

    goto :goto_3

    :sswitch_data_12
    .sparse-switch
        0x2 -> :sswitch_b
        0x4 -> :sswitch_b
        0x10 -> :sswitch_4
        0x20 -> :sswitch_b
    .end sparse-switch
.end method
