.class Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;
.super Landroid/os/Handler;
.source "DcmLockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmLockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmLockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmLockIcon;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

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
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmLockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmLockIcon;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmLockIcon;->-wrap0(Lcom/android/systemui/statusbar/phone/DcmLockIcon;)V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x12cb
        :pswitch_6
    .end packed-switch
.end method
