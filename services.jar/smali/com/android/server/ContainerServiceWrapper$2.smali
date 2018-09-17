.class Lcom/android/server/ContainerServiceWrapper$2;
.super Landroid/os/Handler;
.source "ContainerServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ContainerServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ContainerServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/ContainerServiceWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper$2;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$2;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object v0, v0, Lcom/android/server/ContainerServiceWrapper;->mService:Lcom/android/server/pm/PersonaServiceProxy;

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper$2;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object v1, v1, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaServiceProxy;->handleServiceDied(Lcom/android/server/ContainerServiceInfo;)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
