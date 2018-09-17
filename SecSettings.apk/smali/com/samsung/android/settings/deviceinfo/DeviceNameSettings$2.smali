.class Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$2;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    packed-switch p2, :pswitch_data_14

    :goto_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->saveDeviceName()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_3

    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_5
    .end packed-switch
.end method
