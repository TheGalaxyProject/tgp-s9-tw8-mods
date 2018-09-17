.class Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;
.super Ljava/lang/Object;
.source "ScreenshotDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_a

    packed-switch p2, :pswitch_data_16

    :cond_a
    const/4 v0, 0x0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    nop

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
