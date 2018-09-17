.class Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;
.super Ljava/lang/Object;
.source "VoWiFiStatusController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;-><init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$WfcCallback;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->-get0(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->-wrap2(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;)V

    goto :goto_5

    nop

    :pswitch_data_14
    .packed-switch 0x3e9
        :pswitch_7
    .end packed-switch
.end method
