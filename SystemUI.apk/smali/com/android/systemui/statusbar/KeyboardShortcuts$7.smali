.class Lcom/android/systemui/statusbar/KeyboardShortcuts$7;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->handleShowKeyboardShortcuts(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-get2(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap2()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-wrap5(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$7;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->-set1(Lcom/android/systemui/statusbar/KeyboardShortcuts;Z)Z

    :cond_19
    return-void
.end method