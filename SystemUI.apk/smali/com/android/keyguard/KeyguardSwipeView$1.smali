.class Lcom/android/keyguard/KeyguardSwipeView$1;
.super Ljava/lang/Object;
.source "KeyguardSwipeView.java"

# interfaces
.implements Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSwipeView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSwipeView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAffordanceTap()V
    .registers 1

    return-void
.end method

.method public onUnlockExecuted()V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSwipeView;->-get0(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSwipeView;->-get0(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_16
    return-void
.end method

.method public userActivity()V
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSwipeView;->-get0(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView$1;->this$0:Lcom/android/keyguard/KeyguardSwipeView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSwipeView;->-get0(Lcom/android/keyguard/KeyguardSwipeView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_11
    return-void
.end method
