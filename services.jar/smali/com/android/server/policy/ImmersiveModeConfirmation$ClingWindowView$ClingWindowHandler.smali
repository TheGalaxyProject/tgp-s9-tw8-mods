.class final Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClingWindowHandler"
.end annotation


# static fields
.field private static final ROTATION_0:I = 0x0

.field private static final ROTATION_270:I = 0x3

.field private static final ROTATION_90:I = 0x1


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;I)V

    goto :goto_5

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;I)V

    goto :goto_5

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$ClingWindowHandler;->this$1:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->-wrap0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;I)V

    goto :goto_5

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_14
    .end packed-switch
.end method
