.class abstract Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;
.super Ljava/lang/Thread;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckUcmPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->mPuk:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract onVerifyPukResponse(IIILandroid/os/Bundle;)V
.end method

.method public run()V
    .registers 7

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->mPuk:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->mPin:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap4(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    const-string/jumbo v3, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supplyPukReportResult returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->-get10()Z

    move-result v3

    if-nez v3, :cond_59

    const-string/jumbo v3, "KeyguardUCMPinView"

    const-string/jumbo v4, "In race condition, stop unlock operation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-set1(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    return-void

    :cond_59
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->generatePassword(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->-get10()Z

    move-result v3

    if-nez v3, :cond_76

    const-string/jumbo v3, "KeyguardUCMPinView"

    const-string/jumbo v4, "In race condition, stop unlock operation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-set1(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    return-void

    :cond_76
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v4, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$1;-><init>(Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;[ILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_81

    :goto_80
    return-void

    :catch_81
    move-exception v0

    const-string/jumbo v3, "KeyguardUCMPinView"

    const-string/jumbo v4, "RemoteException for supplyPukReportResult:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v4, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$2;-><init>(Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)V

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->post(Ljava/lang/Runnable;)Z

    goto :goto_80
.end method
