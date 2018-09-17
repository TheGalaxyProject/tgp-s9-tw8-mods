.class Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_1a

    :cond_4
    :goto_4
    return v1

    :pswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->saveDeviceName()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_4

    :pswitch_data_1a
    .packed-switch 0x42
        :pswitch_5
    .end packed-switch
.end method
