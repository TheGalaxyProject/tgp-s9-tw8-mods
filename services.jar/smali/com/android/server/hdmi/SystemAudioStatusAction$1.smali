.class Lcom/android/server/hdmi/SystemAudioStatusAction$1;
.super Ljava/lang/Object;
.source "SystemAudioStatusAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SystemAudioStatusAction;->sendGiveAudioStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SystemAudioStatusAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SystemAudioStatusAction;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioStatusAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioStatusAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioStatusAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioStatusAction;

    invoke-static {v0}, Lcom/android/server/hdmi/SystemAudioStatusAction;->-wrap0(Lcom/android/server/hdmi/SystemAudioStatusAction;)V

    :cond_7
    return-void
.end method
