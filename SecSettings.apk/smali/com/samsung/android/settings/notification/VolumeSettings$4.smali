.class Lcom/samsung/android/settings/notification/VolumeSettings$4;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$4;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    :goto_9
    sparse-switch p2, :sswitch_data_12

    return v2

    :cond_d
    const/4 v0, 0x0

    goto :goto_9

    :sswitch_f
    return v3

    :sswitch_10
    return v3

    nop

    :sswitch_data_12
    .sparse-switch
        0x15 -> :sswitch_10
        0x18 -> :sswitch_f
        0x19 -> :sswitch_f
        0x45 -> :sswitch_10
        0x51 -> :sswitch_10
        0xa4 -> :sswitch_f
        0xa8 -> :sswitch_f
        0xa9 -> :sswitch_f
    .end sparse-switch
.end method
