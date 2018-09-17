.class final Lcom/android/settings/notification/RingVolumePreferenceController$H;
.super Landroid/os/Handler;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RingVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RingVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$H;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/RingVolumePreferenceController;->-wrap0(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/RingVolumePreferenceController;->-wrap1(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
