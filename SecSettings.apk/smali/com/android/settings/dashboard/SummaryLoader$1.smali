.class Lcom/android/settings/dashboard/SummaryLoader$1;
.super Ljava/lang/Object;
.source "SummaryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SummaryLoader;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$summary:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iput-object p2, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$component:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$summary:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v2}, Lcom/android/settings/dashboard/SummaryLoader;->-get1(Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$component:Landroid/content/ComponentName;

    invoke-static {v1, v2, v3}, Lcom/android/settings/dashboard/SummaryLoader;->-wrap0(Lcom/android/settings/dashboard/SummaryLoader;Ljava/util/List;Landroid/content/ComponentName;)Lcom/android/settingslib/drawer/Tile;

    move-result-object v0

    if-nez v0, :cond_31

    const-string/jumbo v1, "SummaryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find tile for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    const-string/jumbo v1, "SummaryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSummary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$summary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$1;->val$summary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryIfNeeded(Lcom/android/settingslib/drawer/Tile;Ljava/lang/CharSequence;)V

    return-void
.end method
