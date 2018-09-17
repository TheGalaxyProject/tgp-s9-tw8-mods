.class Lcom/att/iqi/IQIServiceBroker$4$1;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/IQIServiceBroker$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/att/iqi/IQIServiceBroker$4;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker$4;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$4$1;->this$1:Lcom/att/iqi/IQIServiceBroker$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4$1;->this$1:Lcom/att/iqi/IQIServiceBroker$4;

    iget-object v1, v0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4$1;->this$1:Lcom/att/iqi/IQIServiceBroker$4;

    iget-object v0, v0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/att/iqi/IQIServiceBroker;->-set0(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
