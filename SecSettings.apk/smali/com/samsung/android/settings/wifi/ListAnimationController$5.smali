.class Lcom/samsung/android/settings/wifi/ListAnimationController$5;
.super Ljava/lang/Object;
.source "ListAnimationController.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/ListAnimationController;->initController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$5;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$5;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get3(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "show refresh UI. force start scan manually"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$5;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get3(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceScan()V

    :cond_1a
    return-void
.end method
