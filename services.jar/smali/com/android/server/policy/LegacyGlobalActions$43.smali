.class Lcom/android/server/policy/LegacyGlobalActions$43;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->adjustBottomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$43;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$43;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$43;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap8(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v2

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap2(Lcom/android/server/policy/LegacyGlobalActions;IZZ)Z

    move-result v1

    return v1
.end method
