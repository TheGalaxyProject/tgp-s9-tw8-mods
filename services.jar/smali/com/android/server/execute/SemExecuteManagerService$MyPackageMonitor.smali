.class Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SemExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/execute/SemExecuteManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/execute/SemExecuteManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/execute/SemExecuteManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-wrap2(Lcom/android/server/execute/SemExecuteManagerService;)V

    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-wrap2(Lcom/android/server/execute/SemExecuteManagerService;)V

    return-void
.end method
