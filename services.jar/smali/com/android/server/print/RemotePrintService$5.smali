.class Lcom/android/server/print/RemotePrintService$5;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$5;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$5;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-wrap3(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method
