.class Lcom/android/server/enterprise/utils/PackageDownloader$2;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/utils/PackageDownloader;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_42

    :try_start_4
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get0(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get0(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10408be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->-wrap3(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get1(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get1(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get1(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_5b

    :cond_40
    monitor-exit p0

    return-void

    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get0(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-get0(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10408bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_5b

    goto :goto_1c

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
