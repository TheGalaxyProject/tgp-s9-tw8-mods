.class Lcom/android/systemui/statusbar/DebugLogView$2;
.super Ljava/lang/Object;
.source "DebugLogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DebugLogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DebugLogView;


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogView$2;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogView;->-get2(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogView$2;->this$0:Lcom/android/systemui/statusbar/DebugLogView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DebugLogView;->-get2(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_13
    return-void
.end method
