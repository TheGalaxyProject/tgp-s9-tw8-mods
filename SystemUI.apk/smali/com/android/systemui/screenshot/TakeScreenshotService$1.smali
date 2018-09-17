.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v2, v5}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Skipping screenshot because storage is locked!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_27
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get1()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v2

    if-nez v2, :cond_37

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v2, v5}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-set0(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    :cond_37
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_88

    :goto_3c
    return-void

    :sswitch_3d
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get1()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v5

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_52

    move v2, v3

    :goto_46
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_54

    :goto_4a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    goto :goto_3c

    :cond_52
    move v2, v4

    goto :goto_46

    :cond_54
    move v3, v4

    goto :goto_4a

    :sswitch_56
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get1()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v5

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_6b

    move v2, v3

    :goto_5f
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_6d

    :goto_63
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    goto :goto_3c

    :cond_6b
    move v2, v4

    goto :goto_5f

    :cond_6d
    move v3, v4

    goto :goto_63

    :sswitch_6f
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->-get1()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v5

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_84

    move v2, v3

    :goto_78
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_86

    :goto_7c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotWindow(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    goto :goto_3c

    :cond_84
    move v2, v4

    goto :goto_78

    :cond_86
    move v3, v4

    goto :goto_7c

    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_3d
        0x2 -> :sswitch_56
        0x64 -> :sswitch_6f
    .end sparse-switch
.end method
