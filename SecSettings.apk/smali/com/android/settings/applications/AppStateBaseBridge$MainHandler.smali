.class Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;
.super Landroid/os/Handler;
.source "AppStateBaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateBaseBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStateBaseBridge;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/AppStateBaseBridge;Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;->this$0:Lcom/android/settings/applications/AppStateBaseBridge;

    iget-object v0, v0, Lcom/android/settings/applications/AppStateBaseBridge;->mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    invoke-interface {v0}, Lcom/android/settings/applications/AppStateBaseBridge$Callback;->onExtraInfoUpdated()V

    goto :goto_5

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
