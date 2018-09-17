.class Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;
.super Ljava/lang/Object;
.source "NavigationBarTransitions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-static {v1, v5, v5, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->-wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V

    :try_start_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->-get0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    const-string/jumbo v2, "LightsOutListener"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(IILjava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return v5

    :catch_1b
    move-exception v0

    goto :goto_1a
.end method
